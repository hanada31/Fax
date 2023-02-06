package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import utils.IOUtils;
import model.AppModel;
import model.IntentFilterModel;



public class ComponentModel implements Serializable {
	private static final long serialVersionUID = 7L;
	AppModel appModel;
	String componentName;
	
	String exported;
	boolean isPublic;
	String permission;
	String enable;
	
	BundleType data_item_list;
	public BundleType getData_item_list() {
		return data_item_list;
	}

	public void setData_item_list(BundleType data_item_list) {
		this.data_item_list = data_item_list;
	}

	ArrayList<IntentFilterModel> intent_filter_data_list = new ArrayList<IntentFilterModel>();
	
	Set<String> actionSet;
	Set<String> categorySet;
	Set<String> dataSet;
	Set<String> typeSet;
	
	Set<String> getIntentSet;
	
	public ComponentModel( AppModel appModel ) {
		this.appModel = appModel;
		exported = "";
		permission="";
		enable="";
		isPublic= false;
		
		data_item_list = new BundleType();
		intent_filter_data_list = new ArrayList<IntentFilterModel>();
		

		actionSet = new HashSet<String>();
		categorySet = new HashSet<String>();
		dataSet = new HashSet<String>();
		typeSet = new HashSet<String>();
		
		getIntentSet = new HashSet<String>();
	}
	
	public AppModel getAppModel() {
		return appModel;
	}

	public String getComponetName() {
		return componentName;
	}
	public void setComponetName(String activityName) {
		this.componentName = activityName;
	}
	public String getExported() {
		return exported;
	}
	public void setExported(String exported) {
		this.exported = exported;
	}
	public boolean isPublic() {
		return isPublic;
	}
	public void setPublic(boolean isPublic) {
		this.isPublic = isPublic;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getEnable() {
		return enable;
	}
	public void setEnable(String enable) {
		this.enable = enable;
	}
	
	
	public ArrayList<IntentFilterModel> getIntent_filter_data_list() {
		return intent_filter_data_list;
	}

	public void setIntent_filter_data_list(
			ArrayList<IntentFilterModel> intent_filter_data_list) {
		this.intent_filter_data_list = intent_filter_data_list;
	}

	
	public Set<String> getActionResList() {
		return actionSet;
	}

	public void setActionResList(Set<String> actionResList) {
		this.actionSet = actionResList;
	}

	public Set<String> getCategoryResList() {
		return categorySet;
	}

	public void setCategoryResList(Set<String> categoryResList) {
		this.categorySet = categoryResList;
	}

	public Set<String> getDataResList() {
		return dataSet;
	}

	public void setDataResList(Set<String> dataResList) {
		this.dataSet = dataResList;
	}

	public Set<String> getTypeResList() {
		return typeSet;
	}

	public void setTypeResList(Set<String> typeResList) {
		this.typeSet = typeResList;
	}
	
	

	public Set<String> getGetIntentSet() {
		return getIntentSet;
	}

	public void addGetIntent(String s) {
		this.getIntentSet.add(s);
	}

	public Boolean is_exported() {
		boolean main=false;
		boolean action=false;
		for(int i = 0; i < intent_filter_data_list.size(); i ++) {
			if (intent_filter_data_list.get(i).action_list.contains("\"android.intent.action.MAIN\"") && 
					intent_filter_data_list.get(i).category_list.contains("\"android.intent.category.LAUNCHER\""))
				main =true;
			if(intent_filter_data_list.get(i).action_list.size()>0)
				action=true;
		}
//		if(main) return false;
		if(exported != null && exported.equals("true")) return true;
		if(exported == null || exported.equals("false") ||exported.equals(""))
			if(intent_filter_data_list.size() > 0 && action==true)
				return true;
		return false;
	}
	
	@Override
	public String toString() {
		
		String res ="";
		res += "componentName: "+ componentName+"\n";
		res += "exported: "+ exported+"\n";
		res += "isPublic: "+ isPublic+"\n";
		res += "permission: "+ permission+"\n";
		res += "enable: "+ enable+"\n";
		res += "data_item_list: "+ data_item_list.toString()+"\n";
//		res += "intent_filter_data_list: "+ IOUtils.printList(intent_filter_data_list)+"\n";
		res += "actionSet: "+ IOUtils.printset(actionSet)+"\n";
		res += "categorySet: "+ IOUtils.printset(categorySet)+"\n";
		res += "dataSet: "+ IOUtils.printset(dataSet)+"\n";
		res += "typeSet: "+ IOUtils.printset(typeSet)+"\n";
		return  res;
	}
}
