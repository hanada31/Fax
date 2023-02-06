package analyzer;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import model.ActivityModel;
import model.AppModel;
import model.Context;
import soot.Body;
import soot.Local;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.ValueBox;
import soot.jimple.BinopExpr;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.StaticFieldRef;
import soot.jimple.internal.AbstractInvokeExpr;
import soot.jimple.internal.JArrayRef;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JCastExpr;
import soot.jimple.internal.JIdentityStmt;
import soot.jimple.internal.JIfStmt;
import soot.jimple.internal.JInstanceFieldRef;
import soot.jimple.internal.JInstanceOfExpr;
import soot.jimple.internal.JLengthExpr;
import soot.jimple.internal.JNegExpr;
import soot.jimple.internal.JNewArrayExpr;
import soot.jimple.internal.JNewExpr;
import soot.jimple.internal.JReturnStmt;
import soot.jimple.internal.JimpleLocal;
import soot.shimple.internal.SPhiExpr;
import soot.toolkits.scalar.UnitValueBoxPair;
import utils.ConstantUtils;
import utils.Counter;
import utils.Utils;


public class AtgGenerator extends PathInsensitiveAnalyze {

	public AtgGenerator(AppModel appModel, Body b, String target,
			Context contextsValue, Set<String> history, Counter ct) {
		super(appModel, b, target, contextsValue, history, ct);
	}

	
	@Override
	protected boolean passCouterCheck() {
		//ct.insensi_invokeMethodNum>2 ||
		if( ct.insensi_invokeMethodNum>3 || ct.totallength>30000)
			return false;
		return true;
		
	}
	
	@Override
	protected void invokeMethodAnalyze(Unit u, Body b) {
		ValueObtainer vo = new ValueObtainer(appModel, b.getMethod().getSignature(), "", 
				contextsValue ,target_name, ct);
		InvokeExpr invoke = Utils.getInvokeExp(u);
		Context contexts = vo.getContextValue(u, invoke, b.getMethod(), method_name);
		AtgGenerator eda = new AtgGenerator(appModel, b, target_name, contexts,  history, ct);
		eda.analyzeCurrentMethod();

		
	}
	
	@Override
	protected void analyzeCurrentUnit(Unit u) {

		//ATG
		InvokeExpr invoke = Utils.getInvokeExp(u);
		if (invoke != null) { //u is invoke stmt
			if(u.toString().contains("startActivity")){
				if(invoke.getArgs().size() > 0 && invoke.getArg(0) instanceof Local){
					for(Unit def: getDefOfLocal((Local) invoke.getArg(0), u)){
						if(def.toString().contains("staticinvoke <android.content.Intent: android.content.Intent createChooser")){
							def = getDefOfLocal((Local) def.getUseBoxes().get(1).getValue(), def).get(0);
						}else if(!def.toString().contains("new android.content.Intent")){
							InvokeExpr tmpIvk = Utils.getInvokeExp(def);
							while(tmpIvk != null && tmpIvk.getUseBoxes().size()>0){
								Value defVal = tmpIvk.getUseBoxes().get(tmpIvk.getUseBoxes().size()-1).getValue();
								if(defVal instanceof Local){
									def = getDefOfLocal((Local) defVal, def).get(0);
									tmpIvk = Utils.getInvokeExp(def);
								}else{
									return;
								}
							}
						}
						analyzeExplicitIntent(def);	
						analyzeImplicitIntent(def);	
						
					}
				}
			}
		}
	}
	
	private void getDefsofUnits(Unit unit,  Value val, Set<Unit> unconstructableList, Set<Unit> constructableList) {
		ct.getVarDepth+=1;
		if(ct.getVarDepth>100) return;
		List<ValueBox> vbs = new ArrayList<ValueBox>();
		if(unit instanceof JIfStmt){
			vbs = ((JIfStmt)unit).getCondition().getUseBoxes();
		}else if(unit instanceof JAssignStmt){
			vbs = ((JAssignStmt)unit).getUseBoxes();
		}else if(unit instanceof JReturnStmt){
			vbs = ((JReturnStmt)unit).getUseBoxes();
		}else if(unit instanceof JimpleLocal){
			vbs = ((JimpleLocal)unit).getUseBoxes();
		}else if(unit instanceof SPhiExpr){
			vbs = ((SPhiExpr)unit).getUseBoxes();
		}else if(unit ==null){
			if(val instanceof AbstractInvokeExpr){
				vbs = ((AbstractInvokeExpr)val).getUseBoxes();
			}
		}
		for(ValueBox vb : vbs){
			Value defValue = vb.getValue();
			if(defValue instanceof Local){
				for(Unit def :  getDefOfLocal((Local)defValue, unit)){
					if(def instanceof JAssignStmt){
						Value rightOp = ((JAssignStmt) def).getRightOp() ;
						if(rightOp instanceof Constant || rightOp instanceof JNewExpr || rightOp instanceof JNewArrayExpr ||rightOp instanceof JLengthExpr){
						}
						else if(rightOp instanceof JCastExpr || rightOp instanceof JimpleLocal || rightOp instanceof SPhiExpr
								|| rightOp instanceof JArrayRef || rightOp instanceof BinopExpr || rightOp instanceof JNegExpr ){
							//transfer def
							getDefsofUnits(def, null, unconstructableList, constructableList);
						}
						else if(rightOp instanceof JInstanceFieldRef){
//							unconstructableList.add(def);
							JInstanceFieldRef jifr = (JInstanceFieldRef)rightOp;
							for(Unit def2 :  getDefOfLocal((Local)jifr.getBase(), unit)){
								List<UnitValueBoxPair> x = getUseOfLocal(def2);
								for(UnitValueBoxPair temp : x){
									if(temp.getUnit().getDefBoxes().size()>0){
										Value v = temp.getUnit().getDefBoxes().get(0).getValue();
										if(v.toString().equals(rightOp.toString())){
											getDefsofUnits(temp.getUnit(), null, unconstructableList, constructableList);
										}
									}
								}
							}
							
						}
						else if(rightOp instanceof StaticFieldRef){
							// $i0 = <android.os.Build$VERSION: int SDK_INT>
							StaticFieldRef sfr = (StaticFieldRef)((JAssignStmt) def).getRightOp();
							if(!sfr.getField().isFinal() && !sfr.getFieldRef().declaringClass().getName().equals(class_name))
								unconstructableList.add(def);
						}
						else if(rightOp instanceof AbstractInvokeExpr){
							//JStaticInvokeExpr, JVirtualInvokeExpr, JInterfaceInvokeExpr
							AbstractInvokeExpr aie = (AbstractInvokeExpr) rightOp;
							//right op
							getDefsofUnits(null, rightOp, unconstructableList, constructableList);
							for(Value l: aie.getArgs())
								if(l instanceof Local)
									for(Unit def2: getDefOfLocal((Local)l, def))
										getDefsofUnits(def2, null, unconstructableList, constructableList);
							//into the method 
							goIntoMethod(def, aie.getMethod(), unconstructableList, constructableList);
						}
						else if(rightOp instanceof JInstanceOfExpr){
								constructableList.add(def);
						}
						else{
							System.err.println("not me! " + def);
							System.err.println(((JAssignStmt) def).getRightOp().getClass().getName());
//							getDefsofUnits(def, unsafeList);
						}
					}else if(def instanceof JIdentityStmt){
					}else{
						getDefsofUnits(def, null, unconstructableList, constructableList);
					}
				}
			}
		}
	}

	private void goIntoMethod(Unit def, SootMethod sm, Set<Unit> unconstructableList, Set<Unit> constructableList) {
		if(sm.hasActiveBody() ){ //go in
			for(Unit retUnit: sm.getActiveBody().getUnits()){
				if(retUnit instanceof JReturnStmt ){
					ValueObtainer vo = new ValueObtainer(appModel, sm.getSignature(), "", 
							contextsValue ,target_name, ct);
					InvokeExpr invoke = Utils.getInvokeExp(def);
					Context contexts = vo.getContextValue(def, invoke, sm, method_name);
					AtgGenerator eda = new AtgGenerator(appModel, sm.getActiveBody(), target_name,contexts, history,ct);
					eda.getDefsofUnits(retUnit, null, unconstructableList, constructableList);
				}
			}
		}
		else{
			if(ConstantUtils.isSafeLibMethod(sm.toString())==0){
				getDefsofUnits(def, null, unconstructableList, constructableList);
			}else if(ConstantUtils.isSafeLibMethod(sm.toString())<0){
				unconstructableList.add(def);
			}else {
				constructableList.add(def);
			}
		}
	}
	
	private void analyzeImplicitIntent(Unit def) {
		String action = null, category = null, type =null;
		for(UnitValueBoxPair pair: getUseOfLocal(def)){
			InvokeExpr use = Utils.getInvokeExp(pair.getUnit());
			if (use != null) {
				if(use.toString().contains("void <init>(java.lang.String)")){
					ValueBox temp = use.getUseBoxes().get(0);
					ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
					for (String res : vo.getValueofVar(temp.getValue(),pair.getUnit()).getValues())
						if(res!=null) action = res;
				}
				if(use.toString().contains("setAction(")){
					ValueBox temp = use.getUseBoxes().get(0);
					ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
					for (String res : vo.getValueofVar(temp.getValue(),pair.getUnit()).getValues())
						if(res!=null) action = res;
				}
				if(use.toString().contains("addCategory(")){
					ValueBox temp = use.getUseBoxes().get(0);
					ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
					for (String res : vo.getValueofVar(temp.getValue(),pair.getUnit()).getValues())
						if(res!=null) category = res;
				}
				if(use.toString().contains("setType(")){
					ValueBox temp = use.getUseBoxes().get(0);
					ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
					for (String res : vo.getValueofVar(temp.getValue(),pair.getUnit()).getValues())
						if(res!=null) type = res;
				}
				if(use.toString().contains("setDataAndType(")){
					ValueBox temp = use.getUseBoxes().get(1);
					ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
					for (String res : vo.getValueofVar(temp.getValue(),pair.getUnit()).getValues())
						if(res!=null) type = res;
				}
			}
		}
		
		for(ActivityModel am : appModel.activityMap.values()){
			if(action!= null && am.getActionResList().contains("\""+action+"\"")){
				if(category == null || (category!=null && am.getCategoryResList().contains("\""+category+"\""))){
					if(type == null || (type!=null && am.getTypeResList().contains("\""+type+"\""))){
						appModel.ops.addAtgEdges(target_name, am.getComponetName());
					}
				}
			}
		}
		
	}

	private void analyzeExplicitIntent(Unit def) {
		for(UnitValueBoxPair pair: getUseOfLocal(def)){
			InvokeExpr use = Utils.getInvokeExp(pair.getUnit());
			if (use != null) { 
				String destination = null;
				if(use.toString().contains("void <init>(android.content.Context,java.lang.Class)"))
					destination = getclsName(use.getArg(1).toString());
				else if(use.toString().contains("void <init>(java.lang.String,android.net.Uri,android.content.Context,java.lang.Class)"))
					destination = getclsName(use.getArg(2).toString());
				else if(use.toString().contains("android.content.Intent setClass(android.content.Context,java.lang.Class)"))
					destination = getclsName(use.getArg(1).toString());
				else if(use.toString().contains("setClassName("))
					destination = use.getArg(1).toString();
				else if(use.toString().contains("setComponent(")){
					for(Unit componentDef: getDefOfLocal((Local) use.getArg(0), pair.getUnit())){
						for(UnitValueBoxPair pair2: getUseOfLocal(componentDef)){
							InvokeExpr use2 = Utils.getInvokeExp(pair2.getUnit());
							if (use2 != null) { //u is invoke stmt
								if(use2.toString().contains("void <init>(android.content.Context,java.lang.Class)"))
									destination = getclsName(use2.getArg(1).toString());
								if(use2.toString().contains("void <init>(java.lang.String,java.lang.String)"))
									destination = use2.getArg(1).toString();
								if(use2.toString().contains("void <init>(android.content.Context,java.lang.String)"))
									destination = use2.getArg(1).toString();
							}
						}
					}
				}
				if(destination!= null && !destination.startsWith("$"))
					appModel.ops.addAtgEdges(target_name, destination);
			}
		}
		
		
	}

	private String getclsName(String str) {
		String clsName = str.replace("class \"L", "");
		clsName = clsName.replace(";\"", "");
		clsName = clsName.replace("/", ".");
		return clsName;
	}
}
