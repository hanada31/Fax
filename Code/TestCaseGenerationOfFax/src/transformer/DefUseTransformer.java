package transformer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import model.AppModel;
import soot.Body;
import soot.BodyTransformer;
import soot.SootMethod;
import soot.Unit;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;

public class DefUseTransformer extends BodyTransformer {
	AppModel appModel;

	public DefUseTransformer(AppModel appModel) {
		this.appModel = appModel;
	}

	@Override
	/**
	 * must override
	 */
	protected void internalTransform(Body b, String phaseName, Map<String, String> options) {
		SootMethod sm = b.getMethod();
		BriefUnitGraph graph = new BriefUnitGraph(b);
		ArrayList<Unit> unitList = new ArrayList<Unit>(); // all units

		// pre-process
		Iterator<Unit> it = graph.iterator();
		while (it.hasNext()) {
			unitList.add(it.next());
		}
		b.getMethod().setActiveBody(b);
		String method_name = sm.getSignature();
		
//		CombinedDUAnalysis ca = new CombinedDUAnalysis(graph);
//		appModel.ops.add_CombinedDUAnalysis_Map(method_name, ca);
		
		SimpleLocalDefs defs = new SimpleLocalDefs(graph);
		SimpleLocalUses uses = new SimpleLocalUses(graph, defs);
		appModel.ops.add_defVarUnitMap(method_name, defs);
		appModel.ops.add_useVarUnitMap(method_name, uses);
	}
}