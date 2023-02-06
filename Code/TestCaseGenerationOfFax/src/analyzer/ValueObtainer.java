package analyzer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.AppModel;
import model.Context;
import model.Obj;
import model.StringAPIModel;
import model.StringSource;
import soot.Body;
import soot.Local;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.ValueBox;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.ParameterRef;
import soot.jimple.StaticFieldRef;
import soot.jimple.ThisRef;
import soot.jimple.internal.AbstractInstanceInvokeExpr;
import soot.jimple.internal.AbstractStaticInvokeExpr;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JCastExpr;
import soot.jimple.internal.JIdentityStmt;
import soot.jimple.internal.JInstanceFieldRef;
import soot.jimple.internal.JInvokeStmt;
import soot.jimple.internal.JNewArrayExpr;
import soot.jimple.internal.JNewExpr;
import soot.jimple.internal.JReturnStmt;
import soot.jimple.internal.JStaticInvokeExpr;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.jimple.internal.JimpleLocal;
import soot.shimple.internal.SPhiExpr;
import soot.toolkits.scalar.CombinedDUAnalysis;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;
import soot.toolkits.scalar.UnitValueBoxPair;
import soot.toolkits.scalar.ValueUnitPair;
import utils.AndroidUtils;
import utils.ConstantUtils;
import utils.Counter;
import utils.MyConfig;
import utils.Utils;

public class ValueObtainer {
	AppModel appModel;
	String flag;
	Context contextsValue;
	String method_name;
	String target_name;
	Map<Value,List<Value>> dependentMap;
	Counter counter;
	
	CombinedDUAnalysis ca;
	SimpleLocalUses useVarUnitMap;
	SimpleLocalDefs defVarUnitMap;
	
	public ValueObtainer(AppModel appModel, String method_name, String flag, Context contextsValue, String target_name, Counter counter) {
		this.method_name = method_name;
		this.appModel = appModel;
		this.flag = flag;
		this.contextsValue = contextsValue;
		this.target_name = target_name;
		this.dependentMap = new HashMap<Value, List<Value>>();
		this.counter = counter;
		
		if(MyConfig.getInstance().isJimple){
			this.ca = AndroidUtils.getDefUse(method_name, appModel,60);
		}else{
			defVarUnitMap = appModel.ops.get_defVarUnitMap(method_name);
			useVarUnitMap = appModel.ops.get_useVarUnitMap(method_name);
		}
	}
	
	public Obj getValueofVar(Value strVal, Unit u) {
		Obj resList = new Obj(strVal.toString());
		counter.getVarDepth++;
		if(counter.getVarDepth>ConstantUtils.GETVALUELIMIT) return  resList;
//		StringSource source = null;
//		if (flag.equals(ConstantUtils.FLAGATTRI))
//			source = appModel.stringSource_attri;
//		else if (flag.equals(ConstantUtils.FLAGEXTRA))
//			source = appModel.stringSource_extra;
		if (strVal instanceof Constant) {
//			if (source != null)
//				source.directSring++;
			resList.addValue(strVal.toString());// signature,
		} else {
			if (!(strVal instanceof Local))
				return null;
			List<Unit> def_var_list = getDefOfLocal((Local) strVal, u);
			if (def_var_list.size() > 0) {
				for (Unit defUnit : def_var_list) {
					if (defUnit instanceof JAssignStmt) {
						JAssignStmt jas2 = (JAssignStmt) defUnit;
						Value val = jas2.rightBox.getValue();
						if (val instanceof JInstanceFieldRef) {
							JInstanceFieldRef jifr = (JInstanceFieldRef) val;
							Obj base = getValueofVar(jifr.getBase(), defUnit);
							Obj field = base.getObjs().get(jifr.getField().getSignature());
							if (field != null) {
								resList.setValues(field.getValues());
							}
						} else if (val instanceof Constant) {
//							if (source != null)
//								source.directSring++;
							resList.addValue(val.toString());// signature,
						} else if (val instanceof StaticFieldRef || val instanceof JInstanceFieldRef) { // static
//							if (source != null)
//								source.staticNonFinal++;
							if (appModel.StaticRefSignature2initAssignMap.containsKey(val.toString()))
								resList.addValue(
										appModel.StaticRefSignature2initAssignMap.get(val.toString()));
							else
								resList.addValue("new "+val.getType());
						} else if (val instanceof JVirtualInvokeExpr || val instanceof JStaticInvokeExpr) {
							Obj obj = stringApisOperation(defUnit);
							if(obj!=null)
								resList.setValues(obj.getValues());
							else{
								JAssignStmt ass = (JAssignStmt) defUnit;
								List<Body> bodys = AndroidUtils.getBodysWithoutAdd(target_name, ass.getInvokeExpr().getMethod(),appModel);
								for(Body b :bodys)
									resList.setValues(handle_caller_edge_para(defUnit, ass.getInvokeExpr(),b.getMethod()).getValues());
							}
						}  else if (val instanceof InvokeExpr) {
							InvokeExpr inv = (InvokeExpr) val;
							List<Body> bodys = AndroidUtils.getBodysWithoutAdd(target_name,inv.getMethod(),appModel);
							for(Body b :bodys)
								resList.setValues(handle_caller_edge_para(defUnit, inv, b.getMethod()).getValues());
						} else if (val instanceof JNewExpr) {
							if (val.toString().contains("new java.lang.StringBuilder")
									|| val.toString().contains("new java.lang.String")) {
//								if (val.toString().contains("new java.lang.StringBuilder")) {
//									if (source != null)
//										source.newStringBuilder++;
//								} else {
//									if (source != null)
//										source.newString++;
//								}
								List<UnitValueBoxPair> use_var_list =  getUseOfLocal(defUnit);
								for (int i = 0; i < use_var_list.size(); i++) {
									Unit useUnit = use_var_list.get(i).getUnit();
									if (useUnit.toString().contains("<init>")) {
										if (useUnit instanceof JInvokeStmt) {
											JInvokeStmt jis = (JInvokeStmt) useUnit;
											if (jis.getInvokeExpr().getArgCount() > 0) {
												Value initSb = jis.getInvokeExpr().getArg(0);
												resList.setValues(getValueofVar(initSb, useUnit).getValues());
											}
										}
									}
								}
							} else {
								// Utils.printInfo("other new expr " +val);
								// new object -- unkonwn
								resList.addValue(val.toString());// signature,
							}
						} else if (val instanceof JNewArrayExpr) {
//							if (source != null)
//								source.newArrayExpr++;
							resList.addValue(val.toString());// signature,
						} else if (val instanceof SPhiExpr) {
							SPhiExpr sp = (SPhiExpr) val;
							for (ValueUnitPair arg : sp.getArgs()) {
								if(dependentMap.containsKey(arg.getValue()) && dependentMap.get(arg.getValue()).contains(strVal)) continue;
								if(!dependentMap.containsKey(strVal))
									dependentMap.put(strVal, new ArrayList<Value>());
								dependentMap.get(strVal).add(arg.getValue());
								resList.setValues(getValueofVar(arg.getValue(),defUnit).getValues());
							}
						} else if (val instanceof JimpleLocal) {
							resList.setValues(getValueofVar(val,defUnit).getValues());
						} else if (val instanceof JCastExpr) {
							JCastExpr jc = (JCastExpr) val;
							resList.setValues(getValueofVar(jc.getOp(),defUnit).getValues());
						} else {
//							String s = val.toString() + " " + val.getClass().getName() + "\n";
//							IOUtils.write_to_file(ConstantUtils.RESULTFOLDER + ConstantUtils.NOTSUPPORT, s, true);
						}
					}
					// para $r0 := @parameter0: java.lang.String
					else if (defUnit instanceof JIdentityStmt) {
						JIdentityStmt jid = (JIdentityStmt) defUnit;
						if (jid.getRightOp() instanceof ParameterRef) {
							ParameterRef pr = (ParameterRef) jid.getRightOp();
							if(contextsValue.getObjs().size()>pr.getIndex() + 1)
								resList = contextsValue.getObjs().get(pr.getIndex() + 1);
						} else if (jid.getRightOp() instanceof ThisRef) {
							if (contextsValue.getObjs().size() > 0)
								resList = contextsValue.getObjs().get(0);
						}
//						if (source != null)
//							source.parameter++;
					}
				}
			}
		}
		return resList;
	}

	private List<Unit> getDefOfLocal(Local local, Unit u) {
		if(MyConfig.getInstance().isJimple){
			if(ca ==null) return new ArrayList<Unit>();
			return ca.getDefsOfAt(local, u);
		}else{
			if(defVarUnitMap == null) return new ArrayList<Unit>();
			return defVarUnitMap.getDefsOf(local);
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

	// ============string type==========================
	// change value to value list
	private Obj stringApisOperation(Unit u) {
		StringAPIModel model = null;
		if (flag.equals(ConstantUtils.FLAGATTRI))
			model = appModel.stringModel_attri;
		else if (flag.equals(ConstantUtils.FLAGEXTRA))
			model = appModel.stringModel_extra;
		Obj resVal = new Obj(u.toString());
		if (u.toString().contains("toString")) {
			if (model != null)
				model.toStr++;
			JAssignStmt jas1 = (JAssignStmt) u;
			Value invoke = jas1.rightBox.getValue();
			if (invoke instanceof AbstractInstanceInvokeExpr || invoke instanceof JStaticInvokeExpr) {
				Value strVal = getValueFromInvokeExpr(invoke);
				resVal = getValueofVar(strVal, u);
			}
		} else if (u.toString().contains("append") || u.toString().contains("concat")) {
			if (model != null && u.toString().contains("append")) {
				model.append++;
			} else if (model != null && u.toString().contains("concat")) {
				model.contact++;
			}
			JAssignStmt jas1 = (JAssignStmt) u;
			if(jas1.rightBox.getValue() instanceof AbstractInstanceInvokeExpr){
				AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) jas1.rightBox.getValue();
				Value lv = invokeStmt.getBase();
				if (invokeStmt.getArgCount() == 0)
					resVal = getValueofVar(lv, u);
				else {
					Value rv = invokeStmt.getArg(0);
					for (String l : getValueofVar(lv, u).getValues())
						for (String r : getValueofVar(rv, u).getValues())
							resVal.addValue(l + r);
				}
			}
		} else if (u.toString().contains("valueOf")||u.toString().contains("copyValueOf")) {
			if (model != null)
				model.valueOf++;
			JAssignStmt jas1 = (JAssignStmt) u;
			AbstractStaticInvokeExpr sInvokeStmt = (AbstractStaticInvokeExpr) jas1.rightBox.getValue();
			if (sInvokeStmt.getArgCount() > 0) {
				Value strVal = sInvokeStmt.getArg(0);
				resVal.addValue(strVal.toString());
			}
		} else if (u.toString().contains("substring")) {
			if (model != null)
				model.substring++;
			JAssignStmt jas1 = (JAssignStmt) u;
			AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) jas1.rightBox.getValue();
			Value strVal = invokeStmt.getBase();
			for (String old : getValueofVar(strVal, u).getValues()) {
				int b = 0, e = 0;
				if (getValueofVar(invokeStmt.getArg(0), u).getValues().size() == 0)
					break;
				String str_b = getValueofVar(invokeStmt.getArg(0), u).getValues().get(0);
				if (Utils.isInteger(str_b)) {
					b = Integer.parseInt(str_b);
					if (invokeStmt.getArgCount() == 1) {
						if (old.length() > b)
							resVal.addValue(old.substring(b));
					}
					if (invokeStmt.getArgCount() == 2) {
						if (getValueofVar(invokeStmt.getArg(1), u).getValues().size() == 0)
							break;
						String str_e = getValueofVar(invokeStmt.getArg(1), u).getValues().get(0);
						if (Utils.isInteger(str_e)) {
							e = Integer.parseInt(str_e);
							if (old.length() > e)
								resVal.addValue(old.substring(b, e));
						}
					}
				}
			}
		} else if (u.toString().contains("toLowerCase")) {
			if (model != null)
				model.toLowerCase++;
			JAssignStmt jas1 = (JAssignStmt) u;
			Value invoke = jas1.rightBox.getValue();
			if (invoke instanceof AbstractInstanceInvokeExpr || invoke instanceof JStaticInvokeExpr) {
				Value strVal = getValueFromInvokeExpr(invoke);
				for (String old : getValueofVar(strVal, u).getValues())
					resVal.addValue(old.toLowerCase());
			}
		} else if (u.toString().contains("toUpperCase")) {
			if (model != null)
				model.toUpperCase++;
			JAssignStmt jas1 = (JAssignStmt) u;
			Value invoke = jas1.rightBox.getValue();
			if (invoke instanceof AbstractInstanceInvokeExpr || invoke instanceof JStaticInvokeExpr) {
				Value strVal = getValueFromInvokeExpr(invoke);
				for (String old : getValueofVar(strVal, u).getValues())
					resVal.addValue(old.toUpperCase());
			}
		} else if (u.toString().contains("trim")) {
			if (model != null)
				model.trim++;
			JAssignStmt jas1 = (JAssignStmt) u;
			Value invoke = jas1.rightBox.getValue();
			if (invoke instanceof AbstractInstanceInvokeExpr || invoke instanceof JStaticInvokeExpr) {
				Value strVal = getValueFromInvokeExpr(invoke);
				for (String old : getValueofVar(strVal, u).getValues())
					resVal.addValue(old.trim());
			}
		} else {
			return null;
		}
		return resVal;
	}

	private Value getValueFromInvokeExpr(Value invoke) {
		if (invoke instanceof AbstractInstanceInvokeExpr) {
			AbstractInstanceInvokeExpr invokeStmt = (AbstractInstanceInvokeExpr) invoke;
			return invokeStmt.getBase();
		} else if (invoke instanceof JStaticInvokeExpr) {
			JStaticInvokeExpr invokeStmt = (JStaticInvokeExpr) invoke;
			if (invokeStmt.getArgCount() > 0) {
				return invokeStmt.getArg(0);
			}
		}
		return null;
	}

	private Obj handle_caller_edge_para(Unit u, InvokeExpr inv, SootMethod sm) {
		Obj resSet = new Obj(sm.getSignature());
		//stack overflow  reason unkonwn
		counter.invocationDepth++;
		if(counter.invocationDepth>ConstantUtils.INTERCALLLIMIT) return  resSet;
		StringSource source = null;
		if (flag.equals(ConstantUtils.FLAGATTRI))
			source = appModel.stringSource_attri;
		else if (flag.equals(ConstantUtils.FLAGEXTRA))
			source = appModel.stringSource_extra;
		if (source != null)
			source.invokeMethod++;
		// get value from return value
		Context contexts = getContextValue(u, inv, sm, method_name);
		List<Body> bodys = AndroidUtils.getBodysWithoutAdd(target_name,sm,appModel);
		for(Body b :bodys){
			ValueObtainer vo = new ValueObtainer(appModel, sm.getSignature(), flag, contexts,target_name,counter);
			List<Unit> rets = AndroidUtils.getRetList(b.getMethod());
			if (rets != null) {
				for (Unit ret_u : rets) {
					ValueBox valbox = ((JReturnStmt) ret_u).getUseBoxes().get(0);
					Obj ress = vo.getValueofVar(valbox.getValue(),ret_u);
					resSet.setValues(ress.getValues());
				}
			}
		}
		return resSet;
	}

	public Context getContextValue(Unit u, InvokeExpr inv, SootMethod sm, String method_name) {
		Context cnx = new Context();
		// upper context for getvalue
		ValueObtainer voc = new ValueObtainer(appModel, method_name, flag, contextsValue, target_name,counter);

		if (inv instanceof AbstractInstanceInvokeExpr) {
			AbstractInstanceInvokeExpr sp = (AbstractInstanceInvokeExpr) inv;
			Obj base = voc.getValueofVar(sp.getBase(), u);
			base.setName("base");
			cnx.addObj(base);
		} else {
			cnx.addObj(new Obj("base"));
		}
		for (Value arg : inv.getArgs()) {
			Obj o = new Obj(arg.toString());
			o.setValues(voc.getValueofVar(arg,u).getValues());
			cnx.addObj(o);
			 getFiledOfObj(u, arg, voc,o, sm.getSignature());
		}
		return cnx;
	}

	private void getFiledOfObj(Unit argUnit, Value arg, ValueObtainer voc, Obj father, String father_sig) {
		if (arg instanceof Local) {
			List<Unit> units = getDefOfLocal((Local) arg, argUnit);
			for (Unit u : units) {
				List<UnitValueBoxPair> use_var_list = getUseOfLocal(u);
				for (UnitValueBoxPair use : use_var_list) {
					Unit useUnit = use.getUnit();
					if (useUnit instanceof JAssignStmt) {
						JAssignStmt jas = (JAssignStmt) useUnit;
						if (jas.containsFieldRef()) {
							Obj o = null;
							if (father.getObjs().containsKey(jas.getFieldRef().getField().getSignature()))
								o = father.getObjs().get(jas.getFieldRef().getField().getSignature());
							else {
								o = new Obj(jas.getFieldRef().getField().getSignature());
								father.addObj(o);
							}
							if (voc.getValueofVar(jas.getRightOp(), useUnit) != null)
								o.setValues(voc.getValueofVar(jas.getRightOp(), useUnit).getValues());
						}
					}
				}
			}
		}
	}
}
