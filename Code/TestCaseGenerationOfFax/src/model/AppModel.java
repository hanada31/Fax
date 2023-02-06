package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import model.ActivityModel;
import modelOp.AppModelOps;
import soot.Body;
import soot.SootMethod;
import soot.Unit;
import soot.toolkits.scalar.CombinedDUAnalysis;
import soot.toolkits.scalar.SimpleLocalDefs;
import soot.toolkits.scalar.SimpleLocalUses;
import utils.IOUtils;

public class AppModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	public AppModelOps ops;
	public String appName;
	public String appPath;
	
	public String manifestString;
	public String packageName;
	public String permission;  
	public Set<String> usesPermissionSet;
	
	public HashMap<String, ActivityModel> activityMap;
	public HashMap<String, ActivityModel> eaMap;
	public HashMap<String, ActivityModel> todoMap;

	public HashMap<String, SimpleLocalDefs> method2defVarUnitMap_map;
	public HashMap<String, SimpleLocalUses> method2useVarUnitMap_map;
	public HashMap<String, CombinedDUAnalysis> method2CombinedDUAnalysis_map;
	
	public Map<String, String> StaticRefSignature2initAssignMap; // for static
	public Map<String, Attribute> unit2Attribute; // for extra data value store
	public Set<String> methodsToBeProcessed;  
	public Map<String, BundleType> data_item_map_of_app;
	
	public Map<String, String> dependentActivityMap;
	public Map<String, String> independentActivityMap;
	
	public Map<String, Set<Unit>> independentIfMap;
	public Map<String, Set<Unit>> dependentIfMap;
	public Map<String, Set<String>> systemServiceMap;
	public Map<String, Body> body_map;
	
	public int get_action_num = 0;
	public int get_category_num = 0;
	public int get_data_num = 0;
	public int get_type_num = 0;
	
	public Map<String, Set<String>> used_action_item_map_of_app;
	public Map<String, Set<String>> declared_action_item_map_of_app;
	public Map<String, Set<String>> used_category_item_map_of_app;
	public Map<String, Set<String>> declared_category_item_map_of_app;
	public Map<String, Set<String>> declared_data_item_map_of_app;
	public Map<String, Set<String>> used_data_item_map_of_app;
	public Map<String, Set<String>> declared_type_item_map_of_app;
	public Map<String, Set<String>> used_type_item_map_of_app;
	
	public Set<String> getActionActivitySet;
	public Set<String> getCategoryActivitySet;
	public Set<String> getDataActivitySet;
	public Set<String> getTypeActivitySet;

	
	public StringAPIModel stringModel_attri;
	public StringAPIModel stringModel_extra;
	public StringSource stringSource_attri;
	public StringSource stringSource_extra;
	
	public int action_be_compared = 0;
	public int category_be_compared = 0;
	public int data_be_compared = 0;
	public int type_be_compared = 0;

	public int action_not_be_compared = 0;
	public int category_not_be_compared = 0;
	public int data_not_be_compared = 0;
	public int type_not_be_compared = 0;
	public Map<String, Set<ICCMsg>> pathMap;
	public Map<String, Set<ICCMsg>> pathMap_AU;
	public Map<String, Set<ICCMsg>> pathMap_NV;
	public Map<String, Set<ICCMsg>> pathMap_SNV;
	public Map<String, Set<ICCMsg>> pathMap_AD;
	public Map<String,Set<List<Attribute>>> globalPathMap;
	public int countTC_dec = 0;
	public int countTC_use = 0;
	public String mainActivity;
	public List<SootMethod> dummyList = new ArrayList<SootMethod>();
	
	public Map<String, Set<String>> atgEdges;
	public Map<String, Set<String>> atgReachableMap;
	
	public Set<String> launchSuccessfulSet;
	
	
	public AppModel(String appPath, String appName) {
		ops = new AppModelOps(this);
		this.appPath = appPath;
		this.appName = appName.substring(0, appName.length() - 4);
		
		manifestString="";
		packageName = "";
		permission= "";
		usesPermissionSet = new HashSet<String>();
		mainActivity ="";
		
		activityMap = new HashMap<String, ActivityModel>();
		eaMap = new HashMap<String, ActivityModel>();
		todoMap = new HashMap<String, ActivityModel>();
		
		method2defVarUnitMap_map = new HashMap<String, SimpleLocalDefs>();
		method2useVarUnitMap_map = new HashMap<String, SimpleLocalUses>();
		method2CombinedDUAnalysis_map = new HashMap<String, CombinedDUAnalysis>();
		StaticRefSignature2initAssignMap = new HashMap<String, String>();
		unit2Attribute = new HashMap<String, Attribute>();
		methodsToBeProcessed = new HashSet<String>();
		data_item_map_of_app = new HashMap<String, BundleType>();
		
		used_action_item_map_of_app = new HashMap<String, Set<String>>();
		declared_action_item_map_of_app = new HashMap<String, Set<String>>();
		used_category_item_map_of_app = new HashMap<String, Set<String>>();
		declared_category_item_map_of_app = new HashMap<String, Set<String>>();
		used_data_item_map_of_app = new HashMap<String, Set<String>>();
		declared_data_item_map_of_app = new HashMap<String, Set<String>>();
		used_type_item_map_of_app = new HashMap<String, Set<String>>();
		declared_type_item_map_of_app = new HashMap<String, Set<String>>();
		
		
		getActionActivitySet = new HashSet<String>();
		getCategoryActivitySet = new HashSet<String>();
		getDataActivitySet = new HashSet<String>();
		getTypeActivitySet = new HashSet<String>();
		
		stringModel_attri = new StringAPIModel();
		stringModel_extra = new StringAPIModel();
		stringSource_attri = new StringSource();
		stringSource_extra = new StringSource();
		pathMap = new HashMap<String, Set<ICCMsg>>();
		pathMap_AU = new HashMap<String, Set<ICCMsg>>();
		pathMap_NV = new HashMap<String, Set<ICCMsg>>();
		pathMap_SNV = new HashMap<String, Set<ICCMsg>>();
		pathMap_AD = new HashMap<String, Set<ICCMsg>>();
		globalPathMap = new HashMap<String, Set<List<Attribute>>>();
		
		body_map = new HashMap<String, Body>();
		dependentActivityMap = new HashMap<String, String>();
		independentActivityMap = new HashMap<String, String>();
		systemServiceMap = new HashMap<String, Set<String>>();
		
		independentIfMap = new HashMap<String, Set<Unit>>();
		dependentIfMap = new HashMap<String, Set<Unit>>();
		atgReachableMap = new HashMap<String, Set<String>>();
		launchSuccessfulSet = new HashSet<String>();
	}
	@Override
	public String toString() {
		String res ="";
		res += "appName: "+ appName+"\n";
		res += "appPath: "+ appPath+"\n";
		res += "packageName: "+ packageName+"\n";
		res += "permission: "+ permission+"\n";
		res += "usesPermissionSet: "+ IOUtils.printset(usesPermissionSet)+"\n";
		res += "activityMap: "+ IOUtils.printMap(activityMap)+"\n";
		res += "eaMap: "+ IOUtils.printMap(eaMap)+"\n";
		
		return res;
	}
}
