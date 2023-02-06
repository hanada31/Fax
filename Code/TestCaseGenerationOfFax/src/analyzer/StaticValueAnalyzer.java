package analyzer;

import model.AppModel;
import model.Context;
import soot.Body;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.StaticFieldRef;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JInstanceFieldRef;
import utils.ConstantUtils;
import utils.Counter;

public class StaticValueAnalyzer {
	AppModel appModel;
	SootMethod sm;
	String class_name;
	String method_name;
	Body b;
	
	public StaticValueAnalyzer(AppModel appModel, Body b) {
		this.appModel = appModel;
		this.sm = b.getMethod();
		this.class_name = sm.getDeclaringClass().getName();
		this.method_name = sm.getSignature();
		this.b = b;
	}

	public void analyze() {
		for (Unit u : b.getUnits()) {
			if (u instanceof JAssignStmt) {
				JAssignStmt jas = (JAssignStmt) u;
				if (jas.getLeftOp() instanceof StaticFieldRef || jas.getLeftOp() instanceof JInstanceFieldRef) {
					if (!jas.getLeftOp().toString().contains("java.lang.String"))
						continue;
					try {
						Counter ct = new Counter();
						ValueObtainer vo = new ValueObtainer(appModel, method_name, ConstantUtils.FLAGSTATIC,
								new Context(), class_name, ct);
						for (String val : vo.getValueofVar(jas.getRightOp(), jas).getValues())
							appModel.StaticRefSignature2initAssignMap.put(jas.getLeftOp().toString(), val);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
}
