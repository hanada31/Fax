package analyzer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import model.AppModel;
import model.Attribute;
import model.BundleType;
import model.Context;
import model.ExtraData;
import model.StringAPIModel;
import soot.Body;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.ValueBox;
import soot.jimple.InvokeExpr;
import soot.jimple.internal.AbstractInstanceInvokeExpr;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JIfStmt;
import soot.jimple.internal.JInvokeStmt;
import soot.jimple.internal.JStaticInvokeExpr;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.shimple.PhiExpr;
import soot.toolkits.scalar.CombinedDUAnalysis;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;
import soot.toolkits.scalar.UnitValueBoxPair;
import utils.AndroidUtils;
import utils.ConstantUtils;
import utils.Counter;
import utils.MyConfig;
import utils.PrintUtils;
import utils.Utils;

public class IntentAnalyzer {
	AppModel appModel;
	
	SootMethod sm;
	String class_name;
	String method_name;
	String target_name;
	Context contextsValue;

	Counter counter;
	String history;
	
	CombinedDUAnalysis ca;
	SimpleLocalUses useVarUnitMap;
	SimpleLocalDefs defVarUnitMap;
	Map<Value,List<Value>> dependentMap;
	
	boolean action = false, category = false, data = false, type = false;

	// get all value of extra and other attributes
	public IntentAnalyzer(AppModel appModel, Body b, String target, Context contextsValue, String history, Counter counter) {
		this.appModel = appModel;
		this.sm = b.getMethod();
		this.class_name = sm.getDeclaringClass().getName();
		this.method_name = sm.getSignature();
		this.contextsValue = contextsValue;
		if (target == null) {
			this.target_name = class_name;
		} else {
			this.target_name = target;
		}
		this.history = history;
		this.counter = counter;
		if(MyConfig.getInstance().isJimple){
			this.ca = AndroidUtils.getDefUse(method_name, appModel,120);
		}else{
			defVarUnitMap = appModel.ops.get_defVarUnitMap(method_name);
			useVarUnitMap = appModel.ops.get_useVarUnitMap(method_name);
		}
		this.dependentMap = new HashMap<Value, List<Value>>();
	}

	/**
	 * calculate result after flow analysis
	 */
	public void analyze() {
		// -1 means no parameter is an intent
		analyzeMethodWithIntent( -1);
	}

	/**
	 * analyze methods in the entry of EA, or intra invoked by them (implicit)
	 * analyze method whose parameters contains intent (explicit)
	 * 
	 * @param id,
	 *            the index of the parameter who is an intent
	 */
	private void analyzeMethodWithIntent( int id) {
		if(!sm.hasActiveBody()) return;
		counter.invocationDepth++;
//		Utils.printInfo(sm.getSignature());
		// find getIntent and its sub-units
		for (Unit u : sm.getActiveBody().getUnits()) {
			// get Intent directly
			if (ConstantUtils.is_getIntent_method(u)){
				analyzeGetIntent(u);
				appModel.methodsToBeProcessed.add(target_name+" " +method_name);
			}

			// get Intent from parameter
			else if (u.toString().contains("@parameter" + id + ": android.content.Intent")){
				analyzeGetIntent(u);
				appModel.methodsToBeProcessed.add(target_name+" " +method_name);
			}
		}
		findIntraMethodForAnalysis(history);
	}

	/**
	 * find intra invoked methods for analysis
	 * @param history 
	 */
	private void findIntraMethodForAnalysis(String history) {
		// analyze each intra invocations in current class, even without
		// getIntent as parameters
		for (Unit u : sm.getActiveBody().getUnits()) {
			boolean flag =false;
			InvokeExpr invoke = null;
			int id = -1;
			if(u.toString().contains("void onNewIntent(android.content.Intent)")){
				invoke = Utils.getInvokeExp(u);
				if (invoke != null) flag = true;
				id =0;
			}
			else if (ConstantUtils.is_IntraInvoke_method(u, class_name)) { 
				// no relation with getIntent
				invoke = Utils.getInvokeExp(u);
				if (invoke != null) flag = true;
				id=-1;
			}
			if(flag){
				List<Body> bodys = AndroidUtils.getBodysWithoutAdd(target_name,invoke.getMethod(),appModel);
				for(Body b :bodys){
					ValueObtainer vo = new ValueObtainer(appModel, b.getMethod().getSignature(), ConstantUtils.PARJAVA, 
							contextsValue ,target_name, counter);
					Context contexts = vo.getContextValue(u, invoke, b.getMethod(), method_name);
					if(!history.contains(b.getMethod().getSignature())){
						history +=  b.getMethod().getSignature();
						IntentAnalyzer intra_a = new IntentAnalyzer(appModel, b, target_name, contexts, history, counter);
						intra_a.analyzeMethodWithIntent(id);
						history+=b.getMethod().getSignature();
					}
				}
			}
		}
	}

	/**
	 * analyze the unit that contains getIntent()
	 * 
	 * @param u
	 */
	private void analyzeGetIntent(Unit u) {
		Value intentDefVal = u.getDefBoxes().get(0).getValue();
		List<UnitValueBoxPair> use_var_list = getUseOfLocal(u);
		for (UnitValueBoxPair useUnitBox : use_var_list) {
			Unit useUnit = useUnitBox.getUnit();
			// find its use acid & extra
			if (ConstantUtils.is_getAttribute_method(useUnit)) {
				calcParamOfAttri(useUnit); // acid
			} else if (ConstantUtils.is_get_intent_extra_method(useUnit.toString())) {
				calcParamOfExtra(useUnit); // extra
			}
			// handle functions(intent)
			analyzeInterInvocationPassIntent(intentDefVal, useUnit);
		}
	}

	/**
	 * analyze inter invocation that pass an intent as parameter
	 * 
	 * @param intentDefVal
	 *            the value of the intent
	 * @param useUnit
	 *            the unit use this intent
	 */
	private void analyzeInterInvocationPassIntent(Value intentDefVal, Unit useUnit) {
		InvokeExpr invoke = Utils.getInvokeExp(useUnit);
		if (invoke == null)
			return;
		ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.PARJAVA, contextsValue,target_name, counter);
		Context contexts = vo.getContextValue(useUnit, invoke, invoke.getMethod(), method_name);
		//important
		List<Body> bodys = AndroidUtils.getBodysWithoutAdd(target_name, invoke.getMethod(),appModel);
		for(Body b :bodys){
			if(!history.contains(b.getMethod().getSignature())){
				history+=b.getMethod().getSignature();
				IntentAnalyzer inv_a = new IntentAnalyzer(appModel, b, target_name, contexts, history,counter);
				List<Value> args = invoke.getArgs();
				for (int i = 0; i < args.size(); i++) {
					if (args.get(i).equals(intentDefVal)) {
						inv_a.analyzeMethodWithIntent(i);
						break;
					}
				}
			}
		}

	}

	void calcParamOfAttri(Unit u) {
		detectType(u);
		Set<String> resSet = new HashSet<String>();
		
		if (u.toString().contains("getAction(")) {
			appModel.get_action_num++;
			resSet = getAttriStr(u, "action");
			if (resSet.size() == 0){
				Attribute attr = new Attribute(sm.getSignature() + "," + u.toString()+","+u.hashCode(), "action", "Empty",
						"isEmpty", -1, "");
				Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
				
				resSet.add("\"notEmpty\"");
			}
			Utils.add_set_to_map(target_name, resSet, appModel.used_action_item_map_of_app);
		} else if (u.toString().contains("getCategories(")) {
			appModel.get_category_num++;
			resSet.addAll(getAttriStr(u, "category"));
			if (resSet.size() == 0){
				Attribute attr = new Attribute(sm.getSignature() + "," + u.toString()+","+u.hashCode(), "action", "Empty",
						"isEmpty", -1, "");
				Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
				
				resSet.add("\"notEmpty\"");
			}
			Utils.add_set_to_map(target_name, resSet, appModel.used_category_item_map_of_app);
		} else if (u.toString().contains("getData(") || u.toString().contains("getDataString(")) {
			appModel.get_data_num++;
			resSet = getAttriStr(u, "data");
			resSet.addAll(getSubAttriofData(u));
			if (resSet.size() == 0){
				Attribute attr = new Attribute(sm.getSignature() + "," + u.toString()+","+u.hashCode(), "action", "Empty",
						"isEmpty", -1, "");
				Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
				
				resSet.add("\"notEmpty\"");
			}
			Utils.add_set_to_map(target_name, resSet, appModel.used_data_item_map_of_app);
		} else if (u.toString().contains("getType(")) {
			appModel.get_type_num++;
			resSet = getAttriStr(u, "type");
			if (resSet.size() == 0){
				Attribute attr = new Attribute(sm.getSignature() + "," + u.toString()+","+u.hashCode(), "action", "Empty",
						"isEmpty", -1, "");
				Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
				
				resSet.add("\"notEmpty\"");
			}
			Utils.add_set_to_map(target_name, resSet, appModel.used_type_item_map_of_app);
		}
	}

	private List<UnitValueBoxPair> getUseOfLocal(Unit u) {
		if(MyConfig.getInstance().isJimple){
			if(ca ==null) return new ArrayList<UnitValueBoxPair>();
			return ca.getUsesOf(u);
		}else{
			if(useVarUnitMap == null) return new ArrayList<UnitValueBoxPair>();
			return  useVarUnitMap.getUsesOf(u);
		}
	}
	
	private void detectType(Unit u) {
		if (!action && ConstantUtils.is_getAction_method(u)) {
			action = true;
			appModel.getActionActivitySet.add(target_name);
		}
		if (!category && ConstantUtils.is_getCategory_method(u)) {
			category = true;
			appModel.getCategoryActivitySet.add(target_name);
		}
		if (!data && ConstantUtils.is_getData_method(u)) {
			data = true;
			appModel.getDataActivitySet.add(target_name);
		}
		if (!type && ConstantUtils.is_getType_method(u)) {
			type = true;
			appModel.getTypeActivitySet.add(target_name);
		}
	}

	private Set<String> getSubAttriofData(Unit u) {
		Set<String> resSet = new HashSet<String>();
		Set<String> shemeSet = new HashSet<String>();
		Set<String> hostSet = new HashSet<String>();
		Set<String> portSet = new HashSet<String>();
		Set<String> pathSet = new HashSet<String>();
		List<UnitValueBoxPair> use_var_list = getUseOfLocal(u);
		for (UnitValueBoxPair useUnitBox : use_var_list) {
			Unit useUnit = useUnitBox.getUnit();
			if (useUnit.toString().contains("getScheme")) {
				shemeSet.addAll(getAttriStr(useUnit, "scheme"));
			} else if (useUnit.toString().contains("getHost")) {
				hostSet.addAll(getAttriStr(useUnit, "host"));
			} else if (useUnit.toString().contains("getPort")) {
				portSet.addAll(getAttriStr(useUnit, "port"));
			} else if (useUnit.toString().contains("getPath")) {
				pathSet.addAll(getAttriStr(useUnit, "path"));
			} else if (useUnit.toString().contains("getEncodedPath")) {
				pathSet.addAll(getAttriStr(useUnit, "path"));
			}
		}
		if (shemeSet.size() == 0)
			shemeSet.add("s");
		if (hostSet.size() == 0)
			hostSet.add("h");
		if (portSet.size() == 0)
			portSet.add("1");
		if (pathSet.size() == 0)
			pathSet.add("p");

		// <scheme>://<host>:<port>/<path>
		for (String p1 : shemeSet)
			for (String p2 : hostSet)
				for (String p3 : portSet)
					for (String p4 : pathSet)
						resSet.add("\"" + Utils.refineString(p1) + "://" + Utils.refineString(p2) + ":"
								+ Utils.refineString(p3) + "/" + Utils.refineString(p4) + "\"");
		resSet.remove("\"s://h:1/p\"");
		return resSet;

	}

	private Set<String> getAttriStr(Unit u, String attr_type) {
		boolean beCompared = false;
		StringAPIModel model = appModel.stringModel_attri;
		Set<String> resSet = new HashSet<String>();
		// get its string
		List<UnitValueBoxPair> use_var_list = getUseOfLocal(u);
		Map<List, String> todoUnit2Condition = new HashMap<List,String>();
		// get obtained data may be transfered first before compare
		resSet.addAll(completeTodoList("", u, use_var_list, todoUnit2Condition, new HashSet<Unit>(), attr_type));
		todoUnit2Condition.put(use_var_list, "");
		for (Entry<List, String> en: todoUnit2Condition.entrySet()) {
			String condition = en.getValue();
			List<UnitValueBoxPair> unitList = en.getKey();
			for(UnitValueBoxPair  useUnitBox: unitList){
				Unit useUnit = useUnitBox.getUnit();
				Value inputVar = useUnitBox.getValueBox().getValue();
				// ============bool type==========================
				if (useUnit instanceof JAssignStmt) {
					if (useUnit.toString().contains("contains")) {
						beCompared = true;
						model.contains++;
						Set<String> candidates = getValueofUnit2Set(useUnit, inputVar, attr_type);
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type,
								PrintUtils.printSet(candidates), "contains" , condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.addAll(candidates);
					}
					else if (useUnit.toString().contains("equals") || useUnit.toString().contains("contentEquals")) { // equals
						beCompared = true;
						if (useUnit.toString().contains("equalsIgnoreCase"))
							model.equalsIgnoreCase++;
						else if (useUnit.toString().contains("equals"))
							model.equals++;
						else
							model.contentEquals++;
						Set<String> candidates = getValueofUnit2Set(useUnit, inputVar, attr_type);
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type,
								PrintUtils.printSet(candidates), "equals", condition);
						//same key in jimple
						
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.addAll(candidates);
					} 
					else if (useUnit.toString().contains("startsWith")) {
						beCompared = true;
						model.startsWith++; // a="xx" meet startsWith("xx")
						Set<String> candidates = getValueofUnit2Set(useUnit, inputVar, attr_type);
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type,
								PrintUtils.printSet(candidates), "startsWith", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.addAll(candidates);
					} else if (useUnit.toString().contains("endsWith")) {
						beCompared = true;
						model.endsWith++; // a="xx" meet endsWith("xx")
						Set<String> candidates = getValueofUnit2Set(useUnit, inputVar, attr_type);
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type,
								PrintUtils.printSet(candidates), "endsWith", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.addAll(candidates);
					} else if (useUnit.toString().contains("isEmpty")) {
						beCompared = true;
						model.isEmpty++;
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type, "Empty",
								"isEmpty", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.add("\"notEmpty\"");
					}
				}
				else if (useUnit instanceof JIfStmt) {
					if (useUnit.toString().contains("!= null")) {
						beCompared = true;
						model.nullCompare++;
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type, "null",
								"nullChecker", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.add("\"notEmpty\"");
					}
					else if (useUnit.toString().contains("== null")) {
						beCompared = true;
						model.nullCompare++;
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type, "null",
								"nullChecker", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.add("\"notEmpty\"");
					}
					else if (useUnit.toString().contains("== ") ) { // equals
						beCompared = true;
						Set<String> candidates = getValueofUnit2Set(useUnit, inputVar, attr_type);
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type,
								PrintUtils.printSet(candidates), "equals", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.addAll(candidates);
					} 
					else if (useUnit.toString().contains("!= ") ) { // equals
						beCompared = true;
						Set<String> candidates = getValueofUnit2Set(useUnit, inputVar, attr_type);
						Attribute attr = new Attribute(sm.getSignature() + "," + useUnit.toString()+","+useUnit.hashCode(), attr_type,
								PrintUtils.printSet(candidates), "equals", condition);
						Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
						resSet.addAll(candidates);
					} 
				} 
				
			}
		}
		countBeCompared(beCompared, attr_type);
		return resSet;
	}

	private Set<String> completeTodoList(String condition, Unit defUnit, List<UnitValueBoxPair> use_var_list,
			Map<List, String> todoUnit2Condition, HashSet<Unit> historySet, String attr_type) {
		Set<String> res = new HashSet<String>();
		List<UnitValueBoxPair> resList = getComparedUnit(use_var_list);
		todoUnit2Condition.put(resList, condition);
		for (UnitValueBoxPair it : use_var_list) {
			Unit useUnit = it.getUnit();
			if (historySet.contains(useUnit))
				continue;
			else
				historySet.add(useUnit);
			String newCon = getConditionFromUnit(useUnit);
			if (newCon!=null) {
				res.addAll(completeTodoList(condition+","+newCon, useUnit, getUseOfLocal(useUnit), todoUnit2Condition, historySet, attr_type));
			} else {
				InvokeExpr invoke = Utils.getInvokeExp(useUnit);
				if (invoke == null)
					continue;
				String invoke_Signature = invoke.getMethod().getSignature();
				List<Body> bodys = AndroidUtils.getBodys(target_name, invoke.getMethod(),appModel);
				for(Body b :bodys){
					// String action = intent.getAction();
					// Utils.handleAction(action);
					for (int i = 0; i < invoke.getArgs().size(); i++) {
						Value arg = invoke.getArg(i);
						if (arg == defUnit.getDefBoxes().get(0).getValue()) {
							for (Unit unit_in_body : b.getUnits()) {
								if (unit_in_body.toString().contains("@parameter" + i)) {
									if(!history.contains(b.getMethod().getSignature())){
										ValueObtainer vo = new ValueObtainer(appModel, invoke_Signature, ConstantUtils.PARJAVA,
												contextsValue,target_name, counter);
										Context contexts = vo.getContextValue(useUnit, invoke, b.getMethod(), method_name);
										history += b.getMethod().getSignature();
										IntentAnalyzer transferM = new IntentAnalyzer(appModel, b, target_name, contexts, history ,counter);
										res.addAll(transferM.getAttriStr(unit_in_body, attr_type));
									}
								}
							}
						}
					}
				}
			}
		}
		return res;
	}

	private String getConditionFromUnit(Unit useUnit) {
		if(useUnit instanceof PhiExpr) return "Phi";
		else if(useUnit.toString().contains("toString(") ) return "";
		else if(useUnit.toString().contains("valueOf(") ) return "";
		else if(useUnit.toString().contains("toLowerCase(") ) return "";
		else if(useUnit.toString().contains("toUpperCase(") ) return "";
		else if(useUnit.toString().contains("trim(") ) return "";
		else if(useUnit.toString().contains("substring(") ){
			if(useUnit instanceof JAssignStmt){
				JAssignStmt jas1 = (JAssignStmt) useUnit;
				AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) jas1.rightBox.getValue();
				ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.FLAGATTRI, contextsValue,target_name,counter);
				int b = 0, e = 0;
				if (vo.getValueofVar(invokeStmt.getArg(0),useUnit).getValues().size() > 0){
					String str_b = vo.getValueofVar(invokeStmt.getArg(0),useUnit).getValues().get(0);
					if (Utils.isInteger(str_b)) {
						b = Integer.parseInt(str_b);
						if (invokeStmt.getArgCount() == 1) {
							return "substring "+b;
						}
						if (invokeStmt.getArgCount() == 2) {
							if (vo.getValueofVar(invokeStmt.getArg(1), useUnit).getValues().size() > 0){
								String str_e = vo.getValueofVar(invokeStmt.getArg(1), useUnit).getValues().get(0);
								if (Utils.isInteger(str_e)) {
									e = Integer.parseInt(str_e);
									return "substring "+b+" "+(e-b);
								}
							}
						}
					}
				}
				return "";
			}
		}
		else if(useUnit.toString().contains("charAt(") ){
			JAssignStmt jas1 = (JAssignStmt) useUnit;
			AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) jas1.rightBox.getValue();
			ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.FLAGATTRI, contextsValue,target_name, counter);
			int b = 0;
			if (vo.getValueofVar(invokeStmt.getArg(0),useUnit).getValues().size() > 0){
				String str_b = vo.getValueofVar(invokeStmt.getArg(0),useUnit).getValues().get(0);
				if (Utils.isInteger(str_b)) {
					b = Integer.parseInt(str_b);
					if (invokeStmt.getArgCount() == 1) {
						return "charAt "+b;
					}
				}
			}
			return "";
		}else if(useUnit.toString().contains("concat(") ){
			JAssignStmt jas1 = (JAssignStmt) useUnit;
			AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) jas1.rightBox.getValue();
			ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.FLAGATTRI, contextsValue,target_name, counter);
			List<String> vals = vo.getValueofVar(invokeStmt.getArg(0),useUnit).getValues();
			if (vals.size() > 0){
				String str =vals.get(0);
				return "concat "+str;
			}
			return "";
		}
		return null;
	}

	private List<UnitValueBoxPair> getComparedUnit(List<UnitValueBoxPair> use_var_list) {
		List<UnitValueBoxPair> resList = new ArrayList<UnitValueBoxPair>();
		for (UnitValueBoxPair ubp : use_var_list) {
			Unit u = ubp.getUnit();
			for (String s : ConstantUtils.compared_methods) {
				if (u.toString().contains(s)) {
					resList.add(ubp);
					break;
				}
			}
		}
		return resList;
	}

	private void countBeCompared(boolean beCompared, String attr_type) {
		if (attr_type.equals("action")) {
			if (beCompared) {
				appModel.action_be_compared++;
			} else {
				appModel.action_not_be_compared++;
			}
		} else if (attr_type.equals("category")) {
			if (beCompared)
				appModel.category_be_compared++;
			else
				appModel.category_not_be_compared++;
		} else if (attr_type.equals("data")) {
			if (beCompared)
				appModel.data_be_compared++;
			else
				appModel.data_not_be_compared++;
		} else if (attr_type.equals("type")) {
			if (beCompared)
				appModel.type_be_compared++;
			else
				appModel.type_not_be_compared++;
		}
	}

	private Unit getIfUnitbyValue(Unit u) {
		List<UnitValueBoxPair> use_var_list = getUseOfLocal(u);
		for (int i = 0; i < use_var_list.size(); i++) {
			Unit useUnit = use_var_list.get(i).getUnit();
			if (useUnit instanceof JIfStmt) {
				return useUnit;
			}
		}
		if (u instanceof JIfStmt)
			return u;
		return null;

	}

	Set<String> getValueofUnit2Set(Unit useUnit, Value inputVar, String attr_type) {
		Set<String> resSet = new HashSet<String>();
		if (useUnit instanceof JAssignStmt) {
			// action equals xxx or xxx equals action, make sure which var is
			// target
			JAssignStmt jas1 = (JAssignStmt) useUnit;
			Value strVal = null;
			if (jas1.rightBox.getValue() instanceof AbstractInstanceInvokeExpr) {
				AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) jas1.rightBox.getValue();
				if (invokeStmt.getArg(0).equals(inputVar)) // actrionVar equals
															// xxx
					strVal = invokeStmt.getBase();
				else // xxx equals actrionVar
					strVal = invokeStmt.getArg(0);
			} else if (jas1.rightBox.getValue() instanceof JStaticInvokeExpr) {
				JStaticInvokeExpr invokeStmt = (JStaticInvokeExpr) jas1.rightBox.getValue();
				if (invokeStmt.getArg(0).equals(inputVar)) // actrionVar equals
															// xxx
					strVal = invokeStmt.getArg(1);
				else // xxx equals actrionVar
					strVal = invokeStmt.getArg(0);
			}
			ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.FLAGATTRI, contextsValue,target_name, counter);
			for (String res : vo.getValueofVar(strVal,useUnit).getValues())
				resSet.add("\"" + res + "\"");
		} else if (useUnit instanceof JIfStmt) {
			JIfStmt jif = (JIfStmt) useUnit;
			if (jif.getCondition().getUseBoxes().size() > 1) {
				String res = jif.getCondition().getUseBoxes().get(1).getValue().toString();
				resSet.add("\"" + res + "\"");
			}
		}
		return resSet;
	}

	/**
	 * get key value pair of extra stmts
	 * 
	 * @param uses
	 * @param defs
	 * @param eug
	 * @param eug
	 * @param sm
	 * @param extra_unit_list
	 * @param clsSet
	 */
	void calcParamOfExtra(Unit u) {
		// for each unit contains extras
		String type = ConstantUtils.get_type_of_intent_extra(u.toString());
//		if(!ConstantUtils.isConstructable(type)){
//			appModel.dependentActivityMap.put(class_name, "object parameter");
//		}
		
		Map<String, List<ExtraData>> param_list;
		if (!ConstantUtils.is_bundle_extra(type) && !ConstantUtils.is_extras_extra(type)) {
			param_list = get_param_list(u); // TODO get par should contain its
											// name
			if (param_list == null)
				return;
			for (Entry<String, List<ExtraData>> en : param_list.entrySet()) {
				for (ExtraData ed : en.getValue())
					ed.type = type;
			}
		} else {
			param_list = get_param_list(u);
			if (param_list == null)
				return;
			BundleType bundle_type = null;
			try {
				bundle_type = gen_bundle_type(u);
			} catch (Exception e) {
				e.printStackTrace();
				return;
			}

			if (bundle_type == null) {
				param_list = null;
				return;
			}
			bundle_type.type = type;
			for (Entry<String, List<ExtraData>> en : param_list.entrySet()) {
				for (ExtraData ed : en.getValue())
					ed.type = bundle_type;
			}
		}
		// entry class
		appModel.ops.add_extra_data_item_to_map(sm, u, target_name, param_list);
	}

	public BundleType gen_bundle_type(Unit u) throws Exception {
		BundleType bt = new BundleType();
		List<UnitValueBoxPair> use_var_list = getUseOfLocal(u);
		if (use_var_list == null)
			return bt;
		for (int i = 0; i < use_var_list.size(); i++) {
			Unit useUnit = use_var_list.get(i).getUnit();
			if (!ConstantUtils.is_get_bundle_extra_method(useUnit.toString()))
				continue;
			Map<String, List<ExtraData>> param_list = get_param_list(useUnit);
			if (param_list == null)
				continue;
			String type = ConstantUtils.get_type_of_get_bundle_extra(useUnit.toString());

			if (!ConstantUtils.is_bundle_extra(type) && !ConstantUtils.is_extras_extra(type)) {
				for (Entry<String, List<ExtraData>> en : param_list.entrySet()) {
					for (ExtraData ed : en.getValue()) {
						ed.type = type;
					}
					bt.put(en.getKey(), en.getValue());
				}
			} else {
				BundleType bundle_type = null;
				try {
					bundle_type = gen_bundle_type(useUnit);
				} catch (Exception e) {
					e.printStackTrace();
					continue;
				}
				if (bundle_type == null) {
					param_list = null;
					continue;
				}
				bundle_type.type = type;
				for (Entry<String, List<ExtraData>> en : param_list.entrySet()) {
					for (ExtraData ed : en.getValue()) {
						ed.type = bundle_type;
					}
					bt.put(en.getKey(), en.getValue());
				}
			}
		}
		return bt;
	}

	public Map<String, List<ExtraData>> get_param_list(Unit u) {
		Value var = null;
		try {
			var = get_var_in_extra_stmt(u);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

		Map<String, List<ExtraData>> param_list = new HashMap<String, List<ExtraData>>();
		try {
			ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.FLAGEXTRA, contextsValue,target_name, counter);
			param_list = new HashMap<String, List<ExtraData>>();
			// same u -->multiple str
			List<ExtraData> eds = new ArrayList<ExtraData>();
			param_list.put(u.toString(), eds);
			if (var != null) {
				List<String> reslist = vo.getValueofVar(var, u).getValues();
				for (String res : reslist) {
					ExtraData ed = new ExtraData();
					ed.name = "\"" + res + "\"";
					eds.add(ed);
				}
			} else {
				ExtraData ed = new ExtraData();
				eds.add(ed);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

		if (param_list == null || param_list.size() == 0) {
			return null;
		}
		return param_list;
	}

	Value get_var_in_bundle_stmt(Unit u) throws Exception {
		Value res = null;
		if (u instanceof JAssignStmt) {
			JAssignStmt jas = (JAssignStmt) u;
			ValueBox ads = jas.leftBox;
			res = ads.getValue();
		}
		return res;
	}

	Value get_var_in_extra_stmt(Unit u) throws Exception {
		Value res = null;
		if (u instanceof JAssignStmt) {
			JAssignStmt jas = (JAssignStmt) u;
			ValueBox ads = jas.rightBox;
			Value v = ads.getValue();
			if (v instanceof JVirtualInvokeExpr) {
				JVirtualInvokeExpr jvie = (JVirtualInvokeExpr) v;
				if (jvie.getArgCount() == 0)
					res = null;
				else
					res = jvie.getArg(0);
			}
		} else if (u instanceof JVirtualInvokeExpr) {
			JVirtualInvokeExpr jvie = (JVirtualInvokeExpr) u;
			if (jvie.getArgCount() == 0)
				res = null;
			else
				res = jvie.getArg(0);
		} else if (u instanceof JInvokeStmt) {
			JInvokeStmt jis = (JInvokeStmt) u;
			if (jis.getInvokeExpr().getArgCount() == 0)
				res = null;
			else
				res = jis.getInvokeExpr().getArg(0);
		}
		return res;
	}

}