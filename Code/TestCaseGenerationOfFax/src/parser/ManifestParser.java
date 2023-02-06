package parser;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import model.ActivityModel;
import model.AppModel;
import model.IntentFilterModel;

import org.xmlpull.v1.XmlPullParserException;

import soot.jimple.infoflow.android.axml.AXmlNode;
import soot.jimple.infoflow.android.manifest.ProcessManifest;
import utils.StringUtils;

// This class is used to parse a manifest XML file
// Extract all the exported components (Activity, Service, and Receiver)
public class ManifestParser {
	ProcessManifest manifestManager;
	AppModel appModel;
	String appPath;
	
	public ManifestParser(String appPath,AppModel appModel ) {
		this.appPath = appPath;
		try {
			manifestManager = new ProcessManifest(appPath);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		}
		this.appModel =appModel;
	}
	
	private String getManifestString() {
		return  manifestManager.getAXml().toString();
	}
	
	public AppModel getAppMode() {
		return appModel;
	}
	
	public void parse(boolean b){
		//get content of manifest.xml
		appModel.ops.setManifestString(getManifestString());
		String pkg = manifestManager.getPackageName();
		if(pkg.endsWith(".debug"))
			pkg = pkg.replace(".debug", "");
		appModel.ops.setPackageName(pkg);
		
		AXmlNode appNode = manifestManager.getApplication();
		
		if(appNode.getAttribute("permission")!=null){
			appModel.ops.setPermission(appNode.getAttribute("permission").getValue().toString());// which permission?
		}
		appModel.ops.setUsesPermissionSet(manifestManager.getPermissions());
		
		ArrayList<AXmlNode> acts = manifestManager.getActivities();
		for (AXmlNode actNode :acts){
			// new ActivityData instance
			ActivityModel actModel = new ActivityModel(appModel);
			
			String actName = actNode.getAttribute("name").getValue().toString();
			if (actName.startsWith(".")){
				actName = appModel.ops.getPackageName() +  actName;
			}
			//Exclude the activities not declared in app's package. 
			if(b && !actName.contains(appModel.packageName))  //out of package
				continue;
			
			actModel.setComponetName(actName);
			synchronized (appModel.ops.getActivityMap()) {
				if(!appModel.ops.getActivityMap().containsKey(actModel.getComponetName())) {
					appModel.ops.getActivityMap().put(actModel.getComponetName(), actModel);
				} 
			}
			
			// get the attributes of the activity element
			if(actNode.getAttribute("exported")!=null)
				actModel.setExported(actNode.getAttribute("exported").getValue().toString());
			
			if(actNode.getAttribute("launchMode")!=null)
				actModel.setLaunchMode(actNode.getAttribute("launchMode").getValue().toString());
			
			if(actNode.getAttribute("permission")!=null)
				actModel.setPermission(actNode.getAttribute("permission").getValue().toString());

			if(actNode.getAttribute("enable")!=null)
				actModel.setEnable(actNode.getAttribute("enable").getValue().toString());
			
			if(actNode.getAttribute("launchMode")!=null)
				actModel.setLaunchMode(actNode.getAttribute("launchMode").getValue().toString());
			
			if(actNode.getAttribute("taskAffinity")!=null)
				actModel.setTaskAffinity(actNode.getAttribute("taskAffinity").getValue().toString());
			else
				actModel.setTaskAffinity(appModel.packageName);
			analyzeIntentFilter(actModel, actNode);
			
			actModel.setPublic(actModel.is_exported());
		}
		
		List<AXmlNode> alis = appNode.getChildrenWithTag("activity-alias");
		for (AXmlNode actNode :alis){
			String name = actNode.getAttribute("targetActivity").getValue().toString();
			if(appModel.ops.getActivityMap().containsKey(name)){
				ActivityModel actModel = appModel.ops.getActivityMap().get(name);
				analyzeIntentFilter(actModel, actNode);
				actModel.setPublic(actModel.is_exported());
			}
		}
		
		for( ActivityModel act: appModel.activityMap.values()){
			if(act.isPublic()){
				appModel.ops.getEaMap().put(act.getComponetName(), act);
			}
		}
		
		updataDeclaredAttribute();
	}
	
	private void updataDeclaredAttribute() {
		for( String act :appModel.ops.getActivityMap().keySet()){
			appModel.declared_action_item_map_of_app.put(act, appModel.activityMap.get(act).getActionResList());
			appModel.declared_category_item_map_of_app.put(act, appModel.activityMap.get(act).getCategoryResList());
			appModel.declared_data_item_map_of_app.put(act, appModel.activityMap.get(act).getDataResList());
			appModel.declared_type_item_map_of_app.put(act, appModel.activityMap.get(act).getTypeResList());
		}
	}

	private void analyzeIntentFilter(ActivityModel actModel, AXmlNode actNode) {
		// traverse the child elements of the activity element
		for (AXmlNode ifNode : actNode.getChildren()) {
			if (ifNode.getTag().equals("intent-filter")) {
				// new IntentFilterData instance
				IntentFilterModel ifd = new IntentFilterModel();
				if(actModel.getIntent_filter_data_list()==null)
					System.out.println();
				actModel.getIntent_filter_data_list().add(ifd);
				if(ifNode.getAttribute("priority")!=null)
					ifd.priority =  ifNode.getAttribute("priority").getValue().toString();
				
				// traverse child elements of the intent filter element
				for (AXmlNode childNode : ifNode.getChildren()) {
					if (childNode.getTag().equals("action")) {
						String action = "\""+childNode.getAttribute("name").getValue().toString()+"\"";
						ifd.action_list.add(action);
						actModel.getActionResList().add( action);
					}
					if (childNode.getTag().equals("category")) {
						String category = "\""+childNode.getAttribute("name").getValue().toString()+"\"";
						ifd.category_list.add(category);
						actModel.getCategoryResList().add(category);
					}
					if(ifd.action_list.contains("\"android.intent.action.MAIN\"") &&ifd.category_list.contains("\"android.intent.category.LAUNCHER\"")){
						appModel.mainActivity = actModel.getComponetName();
					}
						
					if (childNode.getTag().equals("data")) {
						if(childNode.getAttribute("scheme")!=null)
							ifd.scheme.add( "\""+childNode.getAttribute("scheme").getValue().toString()+"\"");
						if(childNode.getAttribute("host")!=null)
							ifd.host.add( "\""+childNode.getAttribute("host").getValue().toString()+"\"");
						if(childNode.getAttribute("port")!=null)
							ifd.port.add( "\""+childNode.getAttribute("port").getValue().toString()+"\"");
						if(childNode.getAttribute("path")!=null)
							ifd.path.add(  "\""+childNode.getAttribute("path").getValue().toString()+"\"");
						if(childNode.getAttribute("mimeType")!=null){
							String mime = "\"" +childNode.getAttribute("mimeType").getValue().toString()+"\"";
							ifd.mime_type_list.add(mime );
							actModel.getTypeResList().add(mime);
						}
						
						if(ifd.scheme.size()==0) 	ifd.scheme.add("scheme");
						if(ifd.host.size()==0)	ifd.host.add("host");
						if(ifd.port.size()==0)	ifd.port.add("port");
						if(ifd.path.size()==0)   ifd.path.add("path");

//						 <scheme>://<host>:<port>/<path> 
						for(String p1: ifd.scheme)
						for(String p2: ifd.host)
						for(String p3: ifd.port)
						for(String p4: ifd.path){
							String data = "\""+StringUtils.refineString(p1)+"://"+StringUtils.refineString(p2)+":"+
									StringUtils.refineString(p3)+"/"+ StringUtils.refineString(p4)+"\"";
							actModel.getDataResList().add("\"" +data.replace("\"", "")+"\"");
						}
						actModel.getDataResList().remove("\"scheme://host:port/path\"");
					}
				}
			}
		}
	}
}
