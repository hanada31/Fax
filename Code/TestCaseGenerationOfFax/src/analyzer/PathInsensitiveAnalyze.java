package analyzer;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;


import model.AppModel;
import model.Context;
import soot.Body;
import soot.Local;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.jimple.InvokeExpr;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JInvokeStmt;
import soot.jimple.internal.JNewExpr;
import soot.jimple.internal.JSpecialInvokeExpr;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.toolkits.scalar.CombinedDUAnalysis;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;
import soot.toolkits.scalar.UnitValueBoxPair;
import utils.AndroidUtils;
import utils.Counter;
import utils.MyConfig;
import utils.Utils;

public class PathInsensitiveAnalyze {
	AppModel appModel;
	
	SootMethod sm;
	String class_name;
	String method_name;
	String target_name;
	Set<String> history;
	Context contextsValue;
	CombinedDUAnalysis ca;
	SimpleLocalUses useVarUnitMap;
	SimpleLocalDefs defVarUnitMap;
	List<String> historyForIfVar = new ArrayList<String>();
	Counter ct;
	
	// get all value of extra and other attributes
	public PathInsensitiveAnalyze(AppModel appModel, Body b, String target,  Context contextsValue, Set<String> history, Counter ct) {
		this.ct =ct;
		this.appModel = appModel;
		this.sm = b.getMethod();
		this.class_name = sm.getDeclaringClass().getName();
		this.method_name = sm.getSignature();
		if (target == null) {
			this.target_name = class_name;
		} else {
			this.target_name = target;
		}
		this.history = history;
		if(MyConfig.getInstance().isJimple){
			this.ca = AndroidUtils.getDefUse(method_name, appModel,120);
		}else{
			defVarUnitMap = appModel.ops.get_defVarUnitMap(method_name);
			useVarUnitMap = appModel.ops.get_useVarUnitMap(method_name);
		}
		this.contextsValue = contextsValue;
	}

	/**
	 * calculate result after flow analysis
	 */
	public void analyze() {
		if(!sm.hasActiveBody()) return;
		analyzeCurrentMethod();
		afterAnalyze();
	}

	protected void afterAnalyze() {
	}

	protected void analyzeCurrentMethod() {
		for (Unit u : sm.getActiveBody().getUnits()) {
			analyzeCurrentUnit(u);
			if(passCouterCheck())
				analyzeInvokeStmt(u);
			
		}
	}
	
	//for self design
	protected boolean passCouterCheck() {
		if(ct.insensi_invokeMethodNum>10 || ct.totallength>10000)
			return false;
		return true;
		
	}
	
	//for self design
	protected void analyzeCurrentUnit(Unit u) {
	}

	protected void analyzeInvokeStmt(Unit u) {
		//inter-procedure, go into it
		InvokeExpr invoke = Utils.getInvokeExp(u);
		if (invoke != null) { //u is invoke stmt
//			if(invoke.getMethod().toString().startsWith("<"+class_name+":")){
			if(invoke.getMethod().toString().contains("<java.lang.Thread: void start()>")){
				Body b = getRunBody(invoke, u);
				invokeMethod(u, b);
			}
			else if(u.toString().contains("<android.support.v4.app.FragmentTransaction: android.support.v4.app.FragmentTransaction replace(")){
				ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
				for (String res : vo.getValueofVar(invoke.getArg(1), u).getValues()){
					if(res.contains("new "))
						analyzeFragment(u, res.replace("new ", ""));
				}
			}
			else if(u.toString().contains("<android.support.v4.app.FragmentTransaction: android.support.v4.app.FragmentTransaction add(")){
				ValueObtainer vo = new ValueObtainer(appModel, method_name, "", contextsValue, target_name, ct);
				for (String res : vo.getValueofVar(invoke.getArg(1), u).getValues()){
					if(res.contains("new "))
						analyzeFragment(u, res.replace("new ", ""));
				}
			}
			else{
				List<Body> bodys = AndroidUtils.getBodysWithoutAdd(target_name, invoke.getMethod(),appModel);
				for(Body b :bodys){
					invokeMethod(u, b);
				}
			}
		}
	}

	protected void analyzeFragment(Unit u, String res) {
		for(SootClass sc : Scene.v().getApplicationClasses()){
			if(!sc.getName().equals(res)) continue;
			List<SootMethod> sms = new ArrayList<SootMethod>(sc.getMethods());
			for(SootMethod sm : sms){
				if(!sm.hasActiveBody() || !sm.getName().startsWith("on")) continue;
				invokeMethod(u, sm.getActiveBody());
			}
		}
		
	}
	
	protected void invokeMethod(Unit u, Body b) {
		if(b==null) return;
		//if(passCouterCheck()){
			ct.insensi_invokeMethodNum++;
			if(!history.contains(b.getMethod().getSignature())){
				history.add(b.getMethod().getSignature());
	//			System.out.println(history.size());
				invokeMethodAnalyze(u,b);
				ct.totallength++;
				history.remove(b.getMethod().getSignature());
			}
			ct.insensi_invokeMethodNum--;
		//}
	}

	//for self design
	protected void invokeMethodAnalyze(Unit u, Body b) {
		ValueObtainer vo = new ValueObtainer(appModel, b.getMethod().getSignature(), "", 
				contextsValue ,target_name, ct);
		InvokeExpr invoke = Utils.getInvokeExp(u);
		Context contexts = vo.getContextValue(u, invoke, b.getMethod(), method_name);
		PathInsensitiveAnalyze eda = new PathInsensitiveAnalyze(appModel, b, target_name, contexts,  history, ct);
		eda.analyzeCurrentMethod();
		
	}

	protected Body getRunBody(InvokeExpr invoke, Unit u) {
		Body b = null;
		String runSignature = "";
		for (Unit tempU : sm.getActiveBody().getUnits()) {
			if(tempU instanceof JInvokeStmt){
				InvokeExpr tempInv =  Utils.getInvokeExp(tempU);
				if(tempInv instanceof JSpecialInvokeExpr){
					if (((JSpecialInvokeExpr)tempInv).getBase().equals(((JVirtualInvokeExpr)invoke).getBase()) && 
							tempU.toString().contains("void <init>(java.lang.Runnable)>")){
						List<Unit> defUnits = getDefOfLocal((Local)((JSpecialInvokeExpr)tempInv).getArg(0), u);
						for(Unit defUnit: defUnits){
							Value right = ((JAssignStmt)defUnit).getRightOp();
							if (right instanceof JNewExpr){
								runSignature = "<"+((JNewExpr)right).getType()+": void run()>";
								break;
							}
						}
						if (runSignature.length()>0) break;
					}
				}
			}
		}
		if(runSignature.length()>0){
			SootMethod runMethod = AndroidUtils.getSootMethodBySignature(runSignature);
			if(runMethod!=null){
				b = runMethod.getActiveBody();
			}
		}
		return b;
		
	}

	protected List<Unit> getDefOfLocal(Local local, Unit u) {
		if(MyConfig.getInstance().isJimple){
			if(ca ==null) return new ArrayList<Unit>();
			return ca.getDefsOfAt(local, u);
		}else{
			if(defVarUnitMap == null) return new ArrayList<Unit>();
			return defVarUnitMap.getDefsOf(local);
		}
	}
	
	protected List<UnitValueBoxPair> getUseOfLocal(Unit u) {
		if(MyConfig.getInstance().isJimple){
			if(ca ==null) return new ArrayList<UnitValueBoxPair>();
			return ca.getUsesOf(u);
		}else{
			if(useVarUnitMap == null) return new ArrayList<UnitValueBoxPair>();
			return  useVarUnitMap.getUsesOf(u);
		}
	}

}