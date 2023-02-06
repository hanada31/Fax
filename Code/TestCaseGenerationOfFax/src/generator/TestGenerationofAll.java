package generator;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import model.AppModel;
import model.ICCMsg;
import utils.ConstantUtils;

/**
 * single null value test case generation
 *
 */
public class TestGenerationofAll {
	// ExtraDataForApp edfa;
	AppModel appModel;
	Set<String> iccAll;
	Map<String, String> key2Value;

	public TestGenerationofAll(AppModel appModel, Set<String> iccAll) {
		this.appModel = appModel;
		key2Value = new HashMap<String, String>();
		appModel.countTC_use = 0;
		this.iccAll = iccAll;
	}
	public Set<ICCMsg> getUedACDTStr_SNV(String clsname) {
		if(!appModel.pathMap_SNV.containsKey(clsname))
			return null;
		else return appModel.pathMap_SNV.get(clsname);
	}
	
	public Set<ICCMsg> getDeclaredACDTStr(String clsname) {
		Set<ICCMsg> resSet = new HashSet<ICCMsg>();
		Set<String> actList = new HashSet<String>();
		Set<String> cateList = new HashSet<String>();
		Set<String> dataList = new HashSet<String>();
		Set<String> typeList = new HashSet<String>();
		
		actList = appModel.activityMap.get(clsname).getActionResList();
		if(actList.size()==0) actList.add("null");
		
		cateList = appModel.activityMap.get(clsname).getCategoryResList();
		if(cateList.size()==0) cateList.add("null");
		
		dataList = appModel.activityMap.get(clsname).getDataResList();
		if(dataList.size()==0) dataList.add("null");
		
		typeList = appModel.activityMap.get(clsname).getTypeResList();
		if(typeList.size()==0) typeList.add("null");
		ICCMsg icc = new ICCMsg("");
		for (String a : actList) {
			for (String c : cateList) {
				for (String d : dataList) {
					for (String t : typeList) {
						icc.action = a;
						icc.category.add(c);
						icc.data=d;
						icc.type=t;
						resSet.add(icc);
						if (resSet.size() > ConstantUtils.UPLIMIT1)
							return resSet;
					}
				}
			}
		}

		return resSet;
	}
	
	public void analyze(boolean build) {
		File temp = new File (ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator+ "testCase.iccmsg");
		temp.delete();
		TestGenerator tg = new TestGenerator(appModel, build, ConstantUtils.ADBTESTCASEFOLDER1, 
				ConstantUtils.APKTESTCASEFOLDER1, ConstantUtils.GENERATEDAPP1);
		tg.createAndroidProject();

		for (String ea : appModel.ops.getTODOMap().keySet()) {
			String className = ea;
			Set<ICCMsg> ICC_NVs = getUedACDTStr_SNV(className);//4
			Set<ICCMsg> ICC_AUs = tg.getUedACDTStr_AU(className);//2
			Set<ICCMsg> ICCs =  new HashSet<ICCMsg>();
			ICCs.addAll(ICC_NVs);
			ICCs.addAll(ICC_AUs);

			if(ICCs!=null && ICCs.size()!=0){
				tg.handleICCMsgs(ICCs, className);
			}
		
			// for ser and par obj generation, you can remove them if you do not need them.
			Set<ICCMsg> iccs = new HashSet<ICCMsg>();
			ICCMsg icc = new ICCMsg("");
			icc.extra.add("Parcelable-\"parObj\"");
			iccs.add(icc);

			ICCMsg icc2 = new ICCMsg("");
			icc2.extra.add("Serializable-\"serObj\"");
			iccs.add(icc2);
			if(iccs!=null){
				tg.handleICCMsgs(iccs, className);
			}
		}
		tg.generateManifest();
		tg.buildProject();
		
		System.out.println("TestGeneration Finish...");
	}

	

}
