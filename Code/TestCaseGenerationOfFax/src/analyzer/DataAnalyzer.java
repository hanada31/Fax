package analyzer;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import com.google.common.collect.Sets;

import entry.ActivityEntryPoint;
import model.ActivityModel;
import model.AppModel;
import model.Context;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.UnitGraph;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;
import utils.Counter;
import utils.MyConfig;

public class DataAnalyzer {
	AppModel appModel;
	
	
	public DataAnalyzer(AppModel appModel) {
		this.appModel = appModel;
	}
	public void analyze(String actType) {
		if(actType.equals("All"))
			appModel.todoMap = new HashMap<String, ActivityModel>(appModel.activityMap);
		else if(actType.equals("EA")){
			appModel.todoMap = new HashMap<String, ActivityModel>(appModel.eaMap);
		}else{
			Set<String> bigMapKey = appModel.activityMap.keySet();
		 	Set<String> smallMapKey = appModel.eaMap.keySet();
		    Set<String> differenceSet = Sets.difference(bigMapKey, smallMapKey);
		    for (String key : differenceSet) {
		    	appModel.todoMap.put(key, appModel.activityMap.get(key));
		    }
		}

		generateDummyMain();
		if(!MyConfig.getInstance().isJimple){
			defUseAnalyze();
		}
		staticValueAnalyze();
		
		generateATGandIAE();
		
		getSystemService();
//		//attribute analyze
		attributeAnalyze();
		pathsensitiveAnalyzer();

		System.out.println("DataAnalyzer Finish...\n");
	}
	
	
	private void getSystemService() {
		for(SootClass sc : Scene.v().getApplicationClasses()){
			for( SootMethod sm : sc.getMethods()){
				if (!sm.hasActiveBody()) continue;
				for (Unit u: sm.getActiveBody().getUnits()){
					if(u.toString().contains("<android.content.Context: java.lang.Object getSystemService(java.lang.String)>")){
						HashSet<String> mset= new HashSet<String>();
						if(appModel.systemServiceMap.containsKey(sc.getName())){
							mset = (HashSet<String>) appModel.systemServiceMap.get(sc.getName());
						}else{
							appModel.systemServiceMap.put(sc.getName(), mset);
						}
						mset.add(u.toString());
					}
				}
			}
		}
		
		
	}
	private void generateATGandIAE() {
		if(appModel.atgEdges == null)
			appModel.atgEdges = new HashMap<String, Set<String>>();
		for(SootMethod dummyMethod: appModel.dummyList){
			Set<String> history = new HashSet<String>();
			history.add(dummyMethod.getSignature());
			Counter ct = new Counter();
			//System.out.println(dummyMethod.getSignature());
			AtgGenerator atg = new AtgGenerator(appModel, dummyMethod.getActiveBody(), dummyMethod.getDeclaringClass().getName(),
					new Context(), history, ct);
			atg.analyze();
		}
		System.out.println("generateATG finish\n");
	}

	/**
	 * generateDummyMain
	 */
	private void generateDummyMain() {
		for(SootClass sc : Scene.v().getApplicationClasses()){
			if(!sc.isAbstract() && appModel.todoMap.keySet().contains(sc.getName()) ) {
				
				//for test
//				if(!sc.getName().contains("FieldSensitive2")) continue;	
				
				SootMethod dummy = new ActivityEntryPoint(sc).getMainMethod();
				appModel.dummyList.add(dummy);
			}
		}
	}
	
	/**
	 * def use analyze
	 */
	private void defUseAnalyze() {
		for(SootMethod dummyMethod: appModel.dummyList){
			UnitGraph graph = new BriefUnitGraph(dummyMethod.getActiveBody());
			SimpleLocalDefs defs = new SimpleLocalDefs(graph);
			SimpleLocalUses uses = new SimpleLocalUses(graph, defs);
			appModel.ops.add_defVarUnitMap(dummyMethod.getSignature(), defs);
			appModel.ops.add_useVarUnitMap(dummyMethod.getSignature(), uses);
		}
	}
	
	/**
	 * store static value information
	 * get the init value of each static non-final variable
	 */
	private void staticValueAnalyze() {
		for(SootClass sc : Scene.v().getApplicationClasses()){
			if(!sc.isAbstract()) {
				for(SootMethod sm:sc.getMethods()){
					if(sm.hasActiveBody()){
						if (sm.getName().equals("<clinit>") || sm.getName().equals("<init>")) {
//							System.out.println("staticValueAnalyze: " + sm.getSignature());
							StaticValueAnalyzer sva = new StaticValueAnalyzer(appModel, sm.getActiveBody());
							sva.analyze();
						}
					}
				}
			}
		}
		System.out.println("StaticValueAnalyzer finish\n");
	}
	
	/**
	 * attribute (action) analyze & extra data analyze
	 */
	private void attributeAnalyze() {
		for(SootMethod dummyMethod: appModel.dummyList){
//			System.out.println("AttributeAnalyze: " + dummyMethod.getSignature());
			Counter ct = new Counter();
			IntentAnalyzer ed_c = new IntentAnalyzer(appModel, dummyMethod.getActiveBody(), null, new Context(), dummyMethod.getSignature(),ct);
			ed_c.analyze();
			
		}
		System.out.println("AttributeAnalyzer finish\n");
	}
	
	
	private void pathsensitiveAnalyzer() {
		for(SootMethod dummyMethod: appModel.dummyList){
//			System.out.println("AttributeAnalyze: " + dummyMethod.getSignature());
			PathSensitiveAnalyzer ed_b = new PathSensitiveAnalyzer(appModel, dummyMethod.getActiveBody());
			ed_b.analyze();
		}
		System.out.println("PathsensitiveAnalyzer finish\n");
	}
	
}
