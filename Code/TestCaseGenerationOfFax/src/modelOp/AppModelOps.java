package modelOp;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import model.ActivityModel;
import model.AppModel;
import model.Attribute;
import model.BundleType;
import model.ExtraData;
import parser.ManifestParser;
import soot.SootMethod;
import soot.Unit;
import soot.toolkits.scalar.CombinedDUAnalysis;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;
import utils.Utils;

public class AppModelOps implements Serializable {
	private static final long serialVersionUID = 6L;
	AppModel appModel;
	public AppModelOps(AppModel appModel) {
		this.appModel = appModel;
	}
	
	public void parseManifet(boolean b){ 
		ManifestParser mp = new ManifestParser(appModel.appPath, appModel); 
		mp.parse(b);
	}
	public Set<String> getUsesPermissionSet() {
		return appModel.usesPermissionSet;
	}
	public void setUsesPermissionSet(Set<String> usesPermissionSet) {
		appModel.usesPermissionSet = usesPermissionSet;
	}
	
	public String getPermission() {
		return appModel.permission;
	}
	public void setPermission(String permission) {
		appModel.permission = permission;
	}
	public String getManifestString() {
		return appModel.manifestString;
	}
	public void setManifestString(String manifestString) {
		appModel.manifestString = manifestString;
	}
	
	public String getPackageName() {
		return appModel.packageName;
	}
	public void setPackageName(String packageName) {
		appModel.packageName = packageName;
	}

	public HashMap<String, ActivityModel> getActivityMap() {
		return appModel.activityMap;
	}
	public HashMap<String, ActivityModel> getTODOMap() {
		return appModel.todoMap;
	}

	public HashMap<String, ActivityModel> getEaMap() {
		return appModel.eaMap;
	}

	public void setEaMap(HashMap<String, ActivityModel> eaMap) {
		appModel.eaMap = eaMap;
	}
	
	public void add_defVarUnitMap(String method_name, SimpleLocalDefs defVarUnitMap) {
		synchronized (appModel.method2defVarUnitMap_map) {
			appModel.method2defVarUnitMap_map.put(method_name, defVarUnitMap); 
		}
		
	}
	public void add_useVarUnitMap(String method_name,  SimpleLocalUses useVarUnitMap){
		synchronized (appModel.method2useVarUnitMap_map) {
			appModel.method2useVarUnitMap_map.put(method_name, useVarUnitMap); 
		}
	}
	public void add_CombinedDUAnalysis_Map(String method_name,  CombinedDUAnalysis ca){
		synchronized (appModel.method2CombinedDUAnalysis_map) {
			appModel.method2CombinedDUAnalysis_map.put(method_name, ca); 
		}
	}
	public SimpleLocalDefs get_defVarUnitMap(String method_name) {
		return appModel.method2defVarUnitMap_map.get(method_name);
	}

	public SimpleLocalUses get_useVarUnitMap(String method_name) {
		return appModel.method2useVarUnitMap_map.get(method_name);
	}
	public CombinedDUAnalysis get_CombinedDUAnalysis_Map(String method_name) {
		return appModel.method2CombinedDUAnalysis_map.get(method_name);
	}
	
	public boolean has_CombinedDUAnalysis_Map(String method_name) {
		return appModel.method2CombinedDUAnalysis_map.keySet().contains(method_name);
	}
	
	public void add_extra_data_item_to_map(SootMethod sm, Unit u, String act_name,
			Map<String, List<ExtraData>> param_list) {
		BundleType bt;
		if (appModel.data_item_map_of_app.containsKey(act_name)) {
			bt = appModel.data_item_map_of_app.get(act_name);
		} else {
			bt = new BundleType();
		}
		appModel.data_item_map_of_app.put(act_name, bt);

		String res = "";
		for (Entry<String, List<ExtraData>> en : param_list.entrySet()) {
			synchronized (bt) {
				bt.put(en.getKey(), en.getValue());
				for (ExtraData ed : en.getValue()) {
					res += ed.toString().trim();
				}
			}
		}
		if (res.endsWith(","))
			res = res.substring(0, res.length() - 1);
		// key and value
		Attribute attr = new Attribute(sm.getSignature() + "," + u.toString()+","+u.hashCode(), "extra", res, "equals", "");
		Utils.add_attribute_to_map(attr.id, attr, appModel.unit2Attribute);
	}
	
	public void addAtgEdges(String source, String destination){
		source = source.split("\\$")[0];
		Set<String> edges;
		if(appModel.atgEdges.get(source)==null){
			edges = new HashSet<String>();
			appModel.atgEdges.put(source, edges);
		}
		else
			edges = appModel.atgEdges.get(source);
		edges.add(destination);
	}
}
