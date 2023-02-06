package analyzer;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

import androlic.config.SymbolicConfiguration;
import androlic.constant.MethodSignature;
import androlic.entity.ContextMessage;
import androlic.entity.GlobalMessage;
import androlic.entity.value.AbstractValue;
import androlic.entity.value.heap.ref.EntryRefHeapObject;
import androlic.exception.entity.SymbolicValueProcessException;
import androlic.execution.processor.DefaultStmtProcessor;
import androlic.execution.processor.IStmtProcessor;
import androlic.execution.processor.StmtProcessorFactory;
import androlic.execution.processor.interprocedure.ICFGProcessor;
import androlic.record.ExceptionRecord;
import androlic.util.CFGProcess;
import model.AppModel;
import model.Attribute;
import model.BundleType;
import model.UnitContext;
import soot.Body;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.jimple.AssignStmt;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.Stmt;
import soot.jimple.internal.JIfStmt;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.UnitGraph;
import utils.Utils;


/***
 * get ICC info, each attribute must show up in if statement. if action just be
 * get, but not compared, we consider its generation separately
 * 
 * @author hanada
 *
 */
public class PathSensitiveAnalyzer {
	private AppModel appModel;
	private SootMethod sm;
	private String class_name;
	private Body b;
	private int pathNumber = 1;
	private SootClass classUnderAnalysis;
	private String initMethodSubsignature;
	private boolean flag = false; 
	private Timer timer;
	
	// path sensitive for extras
	public PathSensitiveAnalyzer(AppModel appModel, Body b) {
		this.b = b;
		this.appModel = appModel;
		this.sm = b.getMethod();
		this.class_name = sm.getDeclaringClass().getName();
	}

	/**
	 * calculate result after flow analysis
	 */
	public void analyze() {
		//!!!!!
		this.timer = new Timer();
		timer.schedule(new TimerTask() {
			@Override
			public void run() {
				flag = true;
			}
		},  10*60000);
		if (judgeIfNotUsed()) 	return;
		if (b == null) 	return;
		this.classUnderAnalysis = sm.getDeclaringClass();
		System.out.print(class_name );
			
		try {
			int n = traverse(sm);
			System.out.println(", path number: "+ n);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	/**
	 * Traverse the ICFG of dummy method
	 * @throws IOException 
	 * @throws SymbolicValueProcessException 
	 * @throws InvalidInitMethodException 
	 * @throws CloneNotSupportedException 
	 */
	public int traverse(SootMethod theMethod) throws IOException{
		this.pathNumber = 1;
		GlobalMessage globalContext = new GlobalMessage();
		AbstractValue thisValue = new EntryRefHeapObject(this.classUnderAnalysis.getType());
		//add
		List<Attribute> globalPath = new ArrayList<Attribute>();
		
		// traverse constructor method to initialize "this" value
		if( !theMethod.isStatic() && !theMethod.getName().equals(MethodSignature.INIT_NAME) )
			this.traverseInitMethod(globalContext, thisValue, globalPath);
		
		globalContext.getContextStack().clear();
		
		ContextMessage currentContext;
		try {
			currentContext = ICFGProcessor.buildDummyContext(theMethod, thisValue);
			globalContext.pushNewContext(currentContext);
			
			UnitContext uc = new UnitContext();
			iterativeTraverse(uc, CFGProcess.getValidHeads(
					currentContext.getControlFlowGraph().getHeads()), globalContext, globalPath, 0);
		} catch (SymbolicValueProcessException e) {
			e.printStackTrace();
		}
		return this.pathNumber;
	}
	
	private void traverseInitMethod(GlobalMessage globalContext, AbstractValue thisValue, List<Attribute> globalPath) throws IOException{
		String initSignature = this.initMethodSubsignature == null ? MethodSignature.NON_PARAM_INIT: this.initMethodSubsignature;
		SootMethod initMethod = this.classUnderAnalysis.getMethodUnsafe(initSignature);
		UnitGraph initGraph = new BriefUnitGraph(initMethod.getActiveBody());
		ContextMessage initContext = new ContextMessage(initMethod, initGraph, thisValue);
		
		globalContext.pushNewContext(initContext);
		UnitContext uc = new UnitContext();
		iterativeTraverse(uc,CFGProcess.getValidHeads(initGraph.getHeads()), globalContext, globalPath,0);
	}
	
	private void iterativeTraverse(UnitContext unitContext, List<Unit> unitList, 
			GlobalMessage globalMessage, List<Attribute> globalPath, int depth) throws IOException {
		while( unitList.size() != 0 ){
			++depth;
			try {
				if( unitList.size() == 1 ) {	
					unitContext.currentUnit = unitList.get(0);
					unitContext.currentMethod = globalMessage.getContextStack().peek().getMethod();
					unitList = traverse(unitContext, globalMessage, globalPath, true); 
					updateUnitContext(unitContext);
				}
				else if( unitList.size() >= 2 ) {
					if( this.pathNumber >= SymbolicConfiguration.max_path_number() || flag == true){
						timer.cancel();
						break;
					}
					this.pathNumber += 1;
					for(int i = 0; i < unitList.size() - 1; i++) { // clone globalMessage when branch occurs
						GlobalMessage cloneGlobalMessage = (GlobalMessage) globalMessage.clone();
						UnitContext cloneUnitContext = (UnitContext) unitContext.clone();
						List<Attribute> clonPath = new ArrayList<Attribute>(globalPath);
						iterativeTraverse(cloneUnitContext,Collections.singletonList(unitList.get(i)), cloneGlobalMessage, clonPath, depth);
					}
					unitContext.currentUnit = unitList.get(unitList.size() - 1);
					unitContext.currentMethod = globalMessage.getContextStack().peek().getMethod();
					unitList = traverse(unitContext,globalMessage, globalPath,true);
					updateUnitContext(unitContext);
				}
			}
			catch (NoSuchMethodException | SecurityException | IllegalAccessException | 
					IllegalArgumentException| InvocationTargetException | 
					ClassNotFoundException | InstantiationException | CloneNotSupportedException e) {
				ExceptionRecord.saveException(e);
				break;
			}
		}
		update2globalPathMap(globalPath);
	}
	

	private void updateUnitContext(UnitContext unitContext) {
		unitContext.prepreviousUnit = unitContext.previousUnit;
		unitContext.prepreviousMethod = unitContext.previousMethod;
		unitContext.previousUnit = unitContext.currentUnit;
		unitContext.previousMethod = unitContext.currentMethod;
		
	}
	private List<Unit> traverse(UnitContext unitContext, GlobalMessage globalMessage,
			List<Attribute> globalPath, boolean isUpdate) 
				throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, 
				InvocationTargetException, ClassNotFoundException, InstantiationException, CloneNotSupportedException {
		
//		this.recordPathMessage(globalMessage, unitContext.currentUnit);
//		PrintUtils.printInfo(unitContext.currentUnit);
//		this.writePathMessage(globalMessage, unitContext.currentUnit);
		
		ContextMessage context = globalMessage.getContextStack().peek();
		int visitedTime = context.getUnitToInvokedTime().getOrDefault(unitContext.currentUnit, 0) + 1;
		context.getUnitToInvokedTime().put(unitContext.currentUnit, visitedTime);
		
		IStmtProcessor processor = getProcessor(unitContext.currentUnit, context.getMethod().getName());
//		IStmtProcessor processor = StmtProcessorFactory.getUnitProcessor(unitContext.currentUnit);
		
		//historyPeekMethod: when an if stmt (preprevviousUnit) goto return (previousUnit), the currentUnit swith to another method
		//help to find the correct context in historyPeekMethod
		SootMethod sm = unitContext.prepreviousMethod;
		if(isUpdate && !updateCurrentUnit2GlobalPath(unitContext, globalPath,  sm))
			return new ArrayList<Unit>();
		
		List<Unit> succs = new ArrayList<Unit>();
		try{
			processor.process((Stmt) unitContext.currentUnit, context, globalMessage);
			
			succs = processor.getSucceedUnitInICFG((Stmt) unitContext.currentUnit, context, globalMessage);
			if(isUpdate){
				if(succs==null || succs.size()==0){
					updateUnitContext(unitContext);
					updateCurrentUnit2GlobalPath(unitContext , globalPath,  sm);
				}
			}
		}catch(Exception e){
			succs =  context.getControlFlowGraph().getSuccsOf(unitContext.currentUnit);
		}
		return succs;
	}
	
	
	private IStmtProcessor getProcessor(Unit currentUnit, String methodName) {
		IStmtProcessor processor =  StmtProcessorFactory.getUnitProcessor(currentUnit);
//		do not want to analyze, jump some function
		if(!methodName.contains("dummyMain")){
			if(currentUnit instanceof InvokeStmt){
				InvokeStmt is = (InvokeStmt)currentUnit;
				if(!appModel.methodsToBeProcessed.contains(classUnderAnalysis.getName()+" " +is.getInvokeExpr().getMethod().getSignature())){
					processor = DefaultStmtProcessor.v();
				}
			}else if(currentUnit instanceof InvokeExpr){
				InvokeExpr is = (InvokeExpr)currentUnit;
				if(!appModel.methodsToBeProcessed.contains(classUnderAnalysis.getName()+" " +is.getMethod().getSignature())){
					processor = DefaultStmtProcessor.v();
				}
			}
			else if(currentUnit instanceof AssignStmt){
				Value rightOp = ((AssignStmt)currentUnit).getRightOp();
				if(rightOp instanceof InvokeStmt){
					InvokeStmt is = (InvokeStmt)rightOp;
					if(!appModel.methodsToBeProcessed.contains(classUnderAnalysis.getName()+" " +is.getInvokeExpr().getMethod().getSignature())){
						processor = DefaultStmtProcessor.v();
					}
				}
				//influenced by side effect
				else if(rightOp instanceof InvokeExpr){
					InvokeExpr is = (InvokeExpr)rightOp;
					if(!appModel.methodsToBeProcessed.contains(classUnderAnalysis.getName()+" " +is.getMethod().getSignature())){
						processor = DefaultStmtProcessor.v();
					}
				}
			}
			
		}
		return processor;
	}
	
	private void update2globalPathMap(List<Attribute> globalPath) {
		if(globalPath.size()==0) return;
		String cls = classUnderAnalysis.getName();
		if(!appModel.globalPathMap.containsKey(cls))
			appModel.globalPathMap.put(cls, new HashSet<List<Attribute>>());
		for(List<Attribute> path : appModel.globalPathMap.get(cls)){
			if(path.containsAll(globalPath) && globalPath.containsAll(path)){
				return;
			}
		}
		appModel.globalPathMap.get(cls).add(globalPath);
	}


	/**
	 * positive go this branch negative do not go
	 * 
	 * @param currentUnit
	 * @param previousUnit
	 * @param succeedUnit
	 * @param attribute
	 */
	private void recordCondition(UnitContext unitContext, Attribute attribute) {
		Unit previousUnit = unitContext.prepreviousUnit;
		Unit currentUnit = unitContext.previousUnit;
		Unit succeedUnit = unitContext.currentUnit;
		if (previousUnit == null)
			return;
		if (currentUnit instanceof JIfStmt) {
			JIfStmt ifUnit = (JIfStmt) currentUnit;
			// not Empty need to be reversed
			if (ifUnit.getCondition().toString().contains("== 0")) {
				if (succeedUnit!=null && ifUnit.getTargetBox().getUnit().equals(succeedUnit))
					attribute.isSatisfy = -1; // satisfy ==0
			} else if (ifUnit.getCondition().toString().contains("!= 0")) {
				if (succeedUnit!=null && !ifUnit.getTargetBox().getUnit().equals(succeedUnit))
					attribute.isSatisfy = -1; // do not satisfy !=0 --> ==0
			}
			// null judge is different
		} 
		if (previousUnit instanceof JIfStmt) {
			JIfStmt ifUnit = (JIfStmt) previousUnit;
			if (ifUnit.getCondition().toString().contains("== ")) {
				if (!ifUnit.getTargetBox().getUnit().equals(currentUnit))
					attribute.isSatisfy = -1; // satisfy ==null
			} else if (ifUnit.getCondition().toString().contains("!= ")) {
				if (ifUnit.getTargetBox().getUnit().equals(currentUnit))
					attribute.isSatisfy = -1; // do not satisfy !=null -->==null
			}
		}
	}

	private boolean updateCurrentUnit2GlobalPath(UnitContext unitContext,
			List<Attribute> globalPath, SootMethod sm) throws CloneNotSupportedException {
		if (unitContext.prepreviousUnit == null)
			return true;

		//PrintUtils.printInfo(unitContext.prepreviousUnit.toString());
		String key = sm.getSignature() + "," + unitContext.prepreviousUnit.toString()+ "," + unitContext.prepreviousUnit.hashCode();
		if (appModel.unit2Attribute.containsKey(key)) {
			Attribute attribute = (Attribute) Utils.get_attribute_from_map(
					key, appModel.unit2Attribute).clone();
			recordCondition(unitContext, attribute);
			if(!globalPath.contains(attribute)) {
				globalPath.add(attribute);
				//elimnate 
				for(Attribute att_old: globalPath){
					if(att_old.type.equals(attribute.type) && !att_old.type.equals("extra")){
						// pre detect, find conflict
						if(!att_old.value.equals(attribute.value) && att_old.condition.equals(attribute.condition))
							if(att_old.isSatisfy ==1 && attribute.isSatisfy ==1)
								if(att_old.conditionOfLeft.equals(attribute.conditionOfLeft))
									if(!att_old.value.equals("null") && !att_old.value.equals("Empty") 
											&& !attribute.value.equals("null")&& !attribute.value.equals("Empty")){
										return false;
									}
					}
				}
			}
			
		}
		return true; 
	}
	
	
	private boolean judgeIfNotUsed() {
		Set<String> a = appModel.used_action_item_map_of_app.get(class_name);
		Set<String> c = appModel.used_category_item_map_of_app.get(class_name);
		Set<String> d = appModel.used_data_item_map_of_app.get(class_name);
		Set<String> t = appModel.used_type_item_map_of_app.get(class_name);
		BundleType e = appModel.data_item_map_of_app.get(class_name);
		return a == null && c == null && d == null && t == null && e == null;
	}

}