package generator;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import model.AppModel;
import model.Attribute;
import model.ICCMsg;
import solver.ConstrainSolver;
import utils.PrintUtils;
import utils.Utils;

public class ICCGenerator {
	AppModel appModel;
	public ICCGenerator(AppModel appModel) {
		this.appModel = appModel;
	}

	public void printPathMapAD() {
		if (appModel.pathMap_AD.size() > 0){
			Utils.printInfo("appModel.pathMap_AD");
			Utils.printInfo(PrintUtils.printMap(appModel.pathMap_AD) + "\n");
		}
	}
	public void printPathMapAU() {
		if (appModel.pathMap_AU.size() > 0){
			Utils.printInfo("appModel.pathMap_AU");
			Utils.printInfo(PrintUtils.printMap(appModel.pathMap_AU) + "\n");
		}
	}
	public void printPathMapNV() {
		if (appModel.pathMap_NV.size() > 0){
			Utils.printInfo("appModel.pathMap_NV");
			Utils.printInfo(PrintUtils.printMap(appModel.pathMap_NV) + "\n");
		}
	}
	
	public void printPathMapSNV() {
		if (appModel.pathMap_SNV.size() > 0){
			Utils.printInfo("appModel.pathMap_SNV");
			Utils.printInfo(PrintUtils.printMap(appModel.pathMap_SNV) + "\n");
		}
	}
	
	public void generate(){
		try {
			generateAUPs();
//			printPathMapAU();
			
			addSingleNullAUPs();
//			printPathMapSNV();
			
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
		
		System.out.println("ICCGenerator Finish...\n");
	}
	
	
	

	private void generateAUPs() throws CloneNotSupportedException {
		System.out.println("generateAUPs");
		for(Entry<String,Set<List<Attribute>>> entry : appModel.globalPathMap.entrySet()){
			String clsName = entry.getKey();
			System.out.println(clsName+" "+entry.getValue().size());
			int i=0;
			for(List<Attribute> globalPath : entry.getValue()){
//				if(checkIsIncludedinPathMap(clsName, globalPath)) continue;
				Set<String> modelStrs = ConstrainSolver.eliminateConfictedPaths(globalPath);
				if(i++>1000) break;
				for(String modelStr : modelStrs){
//					System.out.println(modelStr);
					if(!modelStr.equals("unsat!")){
						ICCMsg icc = getIccFromModelStr(modelStr, globalPath);
			            if(icc.toString().equals("")) continue;
			            if(appModel.pathMap.containsKey(clsName)){
		            		appModel.pathMap.get(clsName).add(icc);
			            }
			            else{
			            	Set <ICCMsg> set = new HashSet<ICCMsg>();
			            	set.add(icc);
			            	appModel.pathMap.put(clsName, set);
			            }
					}
				}
			}
		}
		for(String act: appModel.activityMap.keySet()){
			if(appModel.pathMap.containsKey(act)){
				Set<ICCMsg> iccs = new HashSet<>(appModel.pathMap.get(act));
				appModel.pathMap_AU.put(act,iccs);
			}else{
				Set<ICCMsg> iccs = new HashSet<>();
				ICCMsg icc = new ICCMsg("");
				iccs.add(icc);
				appModel.pathMap_AU.put(act,iccs);
			}
		}
	}
	
	private void addSingleNullAUPs() throws CloneNotSupportedException {
		addNullAUPs(appModel.pathMap_AU, true);
		addActionAUPs(appModel.pathMap_AU, true);
		addCategoryAUPs(appModel.pathMap_AU, true);
		addDataAUPs(appModel.pathMap_AU, true);
		addTypeAUPs(appModel.pathMap_AU, true);
		addExtrasAUPs(appModel.pathMap_AU, true);
		
	}
	
	
	private void addNullAUPs(Map<String, Set<ICCMsg>> map, boolean isSingle) throws CloneNotSupportedException {
		for(Entry<String, Set<ICCMsg>> en: map.entrySet()){
			ICCMsg newMsg = new ICCMsg("");
			if(isSingle)
				addNewSNVMsg(newMsg, en.getKey());
			else
				addNewNVMsg(newMsg, en.getKey());
		}
	}
	
	private void addActionAUPs(Map<String, Set<ICCMsg>> map, boolean isSingle) throws CloneNotSupportedException {
		for(Entry<String, Set<ICCMsg>> en: map.entrySet()){
			Set<ICCMsg> iccList = en.getValue();
			if(iccList==null) continue;
			Set<ICCMsg> iccListCopy = new HashSet<ICCMsg>(iccList);
			for(ICCMsg icc : iccListCopy){
				ICCMsg newMsg;
				newMsg = icc.clone();
				if(newMsg.action!=null){
					newMsg.action = null;
					if(isSingle)
						addNewSNVMsg(newMsg, en.getKey());
					else
						addNewNVMsg(newMsg, en.getKey());
				}
			}
		}
	}

	private void addCategoryAUPs(Map<String, Set<ICCMsg>> map, boolean isSingle) throws CloneNotSupportedException {
		for(Entry<String, Set<ICCMsg>> en: map.entrySet()){
			Set<ICCMsg> iccList = en.getValue();
			if(iccList==null) continue;
			Set<ICCMsg> iccListCopy = new HashSet<ICCMsg>(iccList);
			for(ICCMsg icc : iccListCopy){
				ICCMsg newMsg;
				newMsg = icc.clone();
				if(newMsg.category!=null &&newMsg.category.size()!=0){
					newMsg.category = null;
					if(isSingle)
						addNewSNVMsg(newMsg, en.getKey());
					else
						addNewNVMsg(newMsg, en.getKey());
				}
			}
		}
		
	}
	private void addDataAUPs(Map<String, Set<ICCMsg>> map, boolean isSingle) throws CloneNotSupportedException {
		for(Entry<String, Set<ICCMsg>> en: map.entrySet()){
			Set<ICCMsg> iccList = en.getValue();
			if(iccList==null) continue;
			Set<ICCMsg> iccListCopy = new HashSet<ICCMsg>(iccList);
			for(ICCMsg icc : iccListCopy){
				ICCMsg newMsg= icc.clone();
				if(newMsg.data!=null){
					newMsg.data = null;
					if(isSingle)
						addNewSNVMsg(newMsg, en.getKey());
					else
						addNewNVMsg(newMsg, en.getKey());
				}
			}
		}
		
	}

	private void addTypeAUPs(Map<String, Set<ICCMsg>> map, boolean isSingle) throws CloneNotSupportedException {
		for(Entry<String, Set<ICCMsg>> en: map.entrySet()){
			Set<ICCMsg> iccList = en.getValue();
			if(iccList==null) continue;
			Set<ICCMsg> iccListCopy = new HashSet<ICCMsg>(iccList);
			for(ICCMsg icc : iccListCopy){
				ICCMsg newMsg = icc.clone();
				if(newMsg.type!=null){
					newMsg.type = null;
					if(isSingle)
						addNewSNVMsg(newMsg, en.getKey());
					else
						addNewNVMsg(newMsg, en.getKey());
				}
			}
		}
		
	}
	private void addExtrasAUPs(Map<String, Set<ICCMsg>> map, boolean isSingle) throws CloneNotSupportedException {
		for(Entry<String, Set<ICCMsg>> en: map.entrySet()){
			Set<ICCMsg> iccList = en.getValue();
			if(iccList==null) continue;
			Set<ICCMsg> iccListCopy = new HashSet<ICCMsg>(iccList);
			for(ICCMsg icc : iccListCopy){
				if(icc.extra==null) continue;
				ICCMsg nullExtraMsg = icc.clone();
				nullExtraMsg.extra = null;
				addNewNVMsg(nullExtraMsg, en.getKey());
				
				HashSet<String> extraCopy = new HashSet<String>(icc.extra);
				for(String extraPair: extraCopy){
					String ss[] = extraPair.split(",");  // extra:Bundle-"b1",(,String-"s2",)
					for(int i = 0; i< ss.length ;i++){
						if(ss[i].equals("(") || ss[i].equals(")")) continue;
						String str = ss[i];
						String rmStr = str;
						if(i< ss.length-1 && ss[i+1].equals("(")){
							rmStr +=","+ss[i+1];
							int num=1, j=i+2;
							while(num>0 && j<ss.length){
								if(ss[j].equals("(")) num++;
								if(ss[j].equals(")")) num--;
								rmStr +=","+ss[j];
								j++;
							}
						}
						String addExtra = getAddExtra(extraPair, rmStr);
						ICCMsg newMsg = icc.clone();
						newMsg.extra.remove(extraPair);
						newMsg.extra.add(addExtra);
						if(isSingle)
							addNewSNVMsg(newMsg, en.getKey());
						else
							addNewNVMsg(newMsg, en.getKey());
					}
				}
			}
		}
		
	}


	private String getAddExtra(String extraPair, String rmStr) {
		String addExtra = extraPair.replace(rmStr, "");
		while(addExtra.contains(",,") || addExtra.contains("()")){
			addExtra= addExtra.replace(",,", ",");
			addExtra= addExtra.replace("()", "");
		}
		if(addExtra.endsWith(","))
			addExtra = addExtra.substring(0, addExtra.length()-1);
		return addExtra;
	}

	
	private void addNewNVMsg(ICCMsg newMsg, String key) {		
		if(!appModel.pathMap_NV.containsKey(key)) 
			appModel.pathMap_NV.put(key, new HashSet<ICCMsg>());
		appModel.pathMap_NV.get(key).add(newMsg);
	}
	
	//TODO
	private void addNewSNVMsg(ICCMsg newMsg, String key) {
		if(!appModel.pathMap_SNV.containsKey(key)) 
			appModel.pathMap_SNV.put(key, new HashSet<ICCMsg>());
		
		if(!appModel.pathMap_SNV.get(key).contains(newMsg))
			appModel.pathMap_SNV.get(key).add(newMsg);
		
	}
	
	private ICCMsg getIccFromModelStr(String modelStr, List<Attribute> globalPath) {
		ICCMsg icc = new ICCMsg(modelStr);
        String [] attrsStr = modelStr.split("define-fun ");
        for(String attrStr : attrsStr){
        	String[] ss = attrStr.split(" ");
        	if(ss.length>2){
	        	String candi = ss[2];
	        	for(int i =3; i< ss.length; i++){
	        		candi+= " " +ss[i];
	        	}
	        	if(ss[0].equals("action"))
	        		icc.action = candi;
	    		else if(ss[0].equals("category"))
	    			icc.category.add(candi);
				else if(ss[0].equals("data"))
					icc.data = candi;
				else if(ss[0].equals("type"))
					icc.type = candi;
				else if(ss[0].equals("scheme"))
					icc.scheme = candi;
				else if(ss[0].equals("path"))
					icc.path = candi;
				else if(ss[0].equals("port"))
					icc.port = candi;
				else if(ss[0].equals("host"))
					icc.host = candi;
        	}
        }
        for(Attribute att: globalPath){
        	if(att.type.equals("extra"))
        		icc.extra.add(att.value);
        }
        icc.attributeList = globalPath;
		return icc;
	}

}
