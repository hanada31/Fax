package utils;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import model.AppModel;
import soot.Body;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.InvokeExpr;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JInvokeStmt;
import soot.jimple.internal.JReturnStmt;
import soot.jimple.internal.JStaticInvokeExpr;
import soot.toolkits.graph.ExceptionalUnitGraph;
import soot.toolkits.scalar.CombinedDUAnalysis;

public class AndroidUtils {

	public static CombinedDUAnalysis getDefUse(String method_name, AppModel appModel ,int timeout) {
		if(!appModel.ops.has_CombinedDUAnalysis_Map(method_name)){
			SootMethod sm = Scene.v().getMethod(method_name);
			if(sm!=null && sm.hasActiveBody()){
				   final ExecutorService exec = Executors.newFixedThreadPool(1);
			        Callable<String> call = new Callable<String>() {
			            @Override
			            public String call() throws Exception {
			            	ExceptionalUnitGraph graph = new ExceptionalUnitGraph(sm.getActiveBody());
							appModel.ops.add_CombinedDUAnalysis_Map(method_name, new CombinedDUAnalysis(graph));
							return "ok";
			            }
			        };
			        try {
			            Future<String> future = exec.submit(call);
			            future.get(timeout, TimeUnit.SECONDS);
			        } catch (TimeoutException ex) {
			            System.out.println("Time out for def use analyze "+sm.getSignature());
			        } catch (Exception e) {
			        }
			        exec.shutdown();
			}
		}
		return appModel.ops.get_CombinedDUAnalysis_Map(method_name); 
	}
	
	public static List<Body> getBodys(String target, SootMethod sm, AppModel appModel) {
		List<Body> bodys = new ArrayList<Body>();
		if(sm.hasActiveBody()){
			bodys.add(sm.getActiveBody());
			appModel.methodsToBeProcessed.add(target+" " +sm.getSignature());
//			System.out.println("util "+target+" " +sm.getSignature());
		}else if(sm.isAbstract()){
			appModel.methodsToBeProcessed.add(target+" " +sm.getSignature());
//			System.out.println("util "+target+" " +sm.getSignature());
			Set<SootClass> subClasses = new HashSet<>();
			if(Scene.v().hasFastHierarchy()){
				if(sm.getDeclaringClass().isInterface()){
					subClasses = Scene.v().getFastHierarchy().getAllImplementersOfInterface(sm.getDeclaringClass());
				}else{
					subClasses = (Set<SootClass>) Scene.v().getFastHierarchy().getSubclassesOf(sm.getDeclaringClass());
				}
			}
			for(SootClass sc : subClasses){
				try{
					SootMethod sm2 = sc.getMethodByName(sm.getName());
					if(sm2 !=null && sm2.hasActiveBody()){
						bodys.add(sm2.getActiveBody());
						appModel.methodsToBeProcessed.add(target+" " +sm2.getSignature());
//						System.out.println("util "+ target+" " +sm2.getSignature());
					}
				}catch(Exception e){}
			}
		}
		return bodys;
	}
	public static List<Body> getBodysWithoutAdd(String target, SootMethod sm, AppModel appModel) {
		List<Body> bodys = new ArrayList<Body>();
		if(sm.getName().equals("<init>")){
			for(SootMethod sm2: sm.getDeclaringClass().getMethods()){
				if(sm2.hasActiveBody() && sm2.getName().startsWith("on") &&! sm2.getName().startsWith("onActivityResult") ){
					bodys.add(sm2.getActiveBody());
				}
			}
		}
		
		if(sm.hasActiveBody()){
//			appModel.methodsToBeProcessed.add(target+" " +sm.getSignature());
			bodys.add(sm.getActiveBody());
		}else if(sm.isAbstract()){
			appModel.methodsToBeProcessed.add(target+" " +sm.getSignature());
			Set<SootClass> subClasses = new HashSet<>();
			if(Scene.v().hasFastHierarchy()){
				if(sm.getDeclaringClass().isInterface()){
					subClasses = Scene.v().getFastHierarchy().getAllImplementersOfInterface(sm.getDeclaringClass());
				}else{
					subClasses = (Set<SootClass>) Scene.v().getFastHierarchy().getSubclassesOf(sm.getDeclaringClass());
				}
			}
			for(SootClass sc : subClasses){
				try{
					SootMethod sm2 = sc.getMethodByName(sm.getName());
					if(sm2 !=null && sm2.hasActiveBody()){
						bodys.add(sm2.getActiveBody());
//						appModel.methodsToBeProcessed.add(target+" " +sm2.getSignature());
					}
				}catch(Exception e){}
			}
		}
		return bodys;
	}
	
	public static SootMethod getSootMethodBySignature(String signature) {
		if(signature==null ||signature.length()==0) return null;
		try{
			SootMethod sm = Scene.v().getMethod(signature);
			if(sm!=null) 
				return sm;
			}catch(Exception e){
		}
		return null;
	}
	
	public static List<Unit> getRetList(SootMethod sm) {
		List<Unit> rets = null;
		if(sm.hasActiveBody()){
			rets = new ArrayList<Unit>();
			for (Unit ret_u : sm.getActiveBody().getUnits()) {
				if (ret_u instanceof JReturnStmt) {
					rets.add(ret_u);
				}
			}
		}
		return rets;
	}
	
	public static InvokeExpr getInvokeExp(Unit useUnit){
		InvokeExpr invoke = null;
		if(useUnit instanceof JAssignStmt){
			JAssignStmt jas = (JAssignStmt)useUnit;
			if(jas.containsInvokeExpr()){
				invoke = jas.getInvokeExpr();
			}
		}
		else if(useUnit instanceof JInvokeStmt ) {
			invoke = ((JInvokeStmt)useUnit).getInvokeExpr();
		}
		else if(useUnit instanceof JStaticInvokeExpr){
			invoke = ((JStaticInvokeExpr)useUnit);
		}
		return invoke;
	}
	
	 public static boolean isEntryFunction(String entry) {
			String ss[] = entry.split(" ");
			if(ss[ss.length-1].startsWith("onCreate(")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onStart(")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onResume(")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onRestart(")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onPause(")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onStop(")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onDestroy")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onNewIntent")){
				return true;
			}
			if(ss[ss.length-1].startsWith("onResumeFragments")){
				return true;
			}
			return false;
		}
}
