package generator;


import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Set;
import java.util.Stack;



import model.ActivityModel;
import model.AppModel;
import model.ICCMsg;
import utils.AppGeneration;
import utils.ConstantUtils;
import utils.IOUtils;
import utils.PrintUtils;
import utils.Utils;

/**
 * This test class shows how to use the API interface of ACTS to build a test
 * set.
 *
 */
public class TestGenerator {
	
	// ExtraDataForApp edfa;
	AppModel appModel;
	int appId;
	int adbId;
	boolean build;
	String adbFolder;
	String apkTestCaseFolder;
	String apkProjectFolder;
	String apkTC;
	
	public TestGenerator(AppModel appModel, boolean build, String adbFolder, String appFolder, String projectFolder) {
		this.appModel = appModel;
		this.build = build;
		appId = 0;
		adbId = 0;
		this.adbFolder = adbFolder;
		this.apkTestCaseFolder = appFolder;
		this.apkProjectFolder = projectFolder;
		
		this.apkTC = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator+ "testCase.iccmsg";
	}


	public Set<ICCMsg> getUedACDTStr_AU(String clsname) {
		if(!appModel.pathMap_AU.containsKey(clsname))
			return null;
		else return appModel.pathMap_AU.get(clsname);
	}
	
	public Set<ICCMsg> getUedACDTStr_NV(String clsname) {
		if(!appModel.pathMap_NV.containsKey(clsname))
			return null;
		else return appModel.pathMap_NV.get(clsname);
	}
	

	public Set<ICCMsg> getUedACDTStr_AD(String clsname) {
		if(!appModel.pathMap_AD.containsKey(clsname))
			return null;
		else return appModel.pathMap_AD.get(clsname);
	}
	
	public Set<String> getDeclaredACDTStr(String clsname) {
		Set<String> resSet = new HashSet<String>();
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

		for (String a : actList) {
			for (String c : cateList) {
				for (String d : dataList) {
					for (String t : typeList) {
						resSet.add(a + ";;" + c + ";;" + d + ";;" + t+";;");
						if (resSet.size() > ConstantUtils.UPLIMIT1)
							return resSet;
					}
				}
			}
		}

		return resSet;
	}

	public String getProjectName(String str) {
		String regEx = "[^a-z|^A-Z|^0-9|^_]";
		Pattern p = Pattern.compile(regEx);
		Matcher n = p.matcher(str);
		return n.replaceAll("_");
	}

	public void moveGeratedAPK( String projectPath) {
		String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator + apkTestCaseFolder  ;
		File f = new File(folder);
		f.mkdirs();
		
		String oriPath = projectPath + File.separator + "bin" + File.separator + getProjectName(appModel.appName)
				+ "-debug.apk";
		String desPath = folder  + "test.apk";
		File oriFile = new File(oriPath);
//		for(int count = 0; count < 3; count++) {
//			if (!oriFile.exists()) {
//				try {
//					System.out.println("wait 10 seconds.");
//					Thread.sleep(10000);
//				} catch (InterruptedException e) {
//					e.printStackTrace();
//				}
//			}else {
//				break;
//			}
//		}
		if (!oriFile.exists()) {
			System.err.println("ant build failed!");
		}
		Utils.moveFile(oriPath, desPath);
	}

	public void generateAdbTestCase(String  acdt, String clsname) {
		acdt = acdt.replace(",", ";;");
		String adb = "";
		if (clsname.startsWith("."))
			adb += "adb shell am start -n " + appModel.packageName + "/" + appModel.packageName + "." + clsname;
		else
			adb += "adb shell am start -n " + appModel.packageName + "/" + clsname;
		acdt = Utils.refineString(acdt);
		String[] acdtVals = acdt.split(";;");
		if (!acdtVals[0].equals("null")) 
			adb += " -a " + acdtVals[0];
		if (!acdtVals[1].equals("null")) 
		adb += " -c " + acdtVals[1];
		if (!acdtVals[2].equals("null")) 
		adb += " -d " + acdtVals[2];
		if (!acdtVals[3].equals("null")) 
		adb += " -t " + acdtVals[3];

		for (int i = 4; i < acdtVals.length; i++) {
			String[] ss = acdtVals[i].split("->");
			if (ss.length > 2) {
				String extra_type = ss[0];
				String extra_key = ss[1].replace("\\", "").replace("\"", "");
				String extra_data = Utils.refineString(ss[2]);

				if (extra_type.equals("String")) {
					if (!extra_data.equals("null"))
						adb += " --es " + extra_key + " " + extra_data;
				} else if (extra_type.equals("Boolean") || extra_type.equals("boolean")) {
					if (!extra_data.equals("null"))
						adb += " --ez " + extra_key + " " + extra_data;
				} else if (extra_type.equals("Int") || extra_type.equals("int")) {
					if (!extra_data.equals("null"))
						adb += " --ei " + extra_key + " " + extra_data;
				} else if (extra_type.equals("Float") || extra_type.equals("float")) {
					if (!extra_data.equals("null"))
						adb += " --ef " + extra_key + " " + extra_data;
				} else if (extra_type.equals("Long") || extra_type.equals("long")) {
					if (!extra_data.equals("null"))
						adb += " --el " + extra_key + " " + extra_data;
				} else {
					if (!extra_data.equals("null"))
						adb += " -e " + extra_key + " " + extra_data;
				}
			}
		}
		String adbCom = "adb shell am force-stop " + appModel.packageName + "\n";
		adbCom += adb + "\n";
		String adbComMonkey = adb + "\nadb shell monkey -p " + appModel.packageName + " --ignore-crashes 1000\n";
		adbCom += "ping 127.0.0.1 -n 3 >nul\n";
		adbCom += "pause\n";
		writeToAdbFiles(adbCom, adbComMonkey, clsname, acdt);
	}


	public void writeToAdbFiles(String adbCom, String adbComMonkey, String clsname, String acdt) {
		String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator + adbFolder+ File.separator + clsname;
		File f1 = new File(folder );
		f1.mkdirs();
		String fn1 =folder  + File.separator + (++adbId);
		String bat1 = fn1 + ".bat";
		IOUtils.write_to_file(bat1, adbCom + "\nREM " + acdt, false);
		String sh1 = fn1 + ".sh";
		IOUtils.write_to_file(sh1, adbCom + "\n# " + acdt, false);
		String tc = fn1 + ".iccmsg";
		IOUtils.write_to_file(tc, acdt, false);
	}

	public void gen_java_file(String java_file_path, ICCMsg icc, String clsname, String acdt) {
		HashSet<String> decSet = new HashSet<String>();
		String java_template_file_path = java_file_path+".java";
		java_file_path = java_file_path+(++appId)+".java";
		Utils.copyFile(java_template_file_path, java_file_path);
		
		IOUtils.write_to_file(apkTC, appId+"\t" +clsname +"\t"+  acdt+"\n", true);
		
		ArrayList<String> lines = Utils.getList(java_file_path);
		IOUtils.write_to_file(java_file_path, "", false);
		String content = "";
		for (String line : lines) {
			if(line.contains("public class Activity_ extends Activity"))
				line = "public class Activity_" + appId  + " extends Activity";
		
			IOUtils.write_to_file(java_file_path, line + "\n", true);
			//add after statement
			if (line.contains("import android.os.Bundle;")) {
				content = "import android.content.Intent;\n";
				content += "import java.util.List;\n";
				content += "import android.content.ComponentName;\n";
				content += "import android.os.Parcelable;\n";
				content += "import java.util.ArrayList;\n";
				content += "import android.net.Uri;\n";
				content += "import android.view.View;\n";
				content += "import android.view.View.OnClickListener;\n";
				content += "import android.widget.Button;\n";
				IOUtils.write_to_file(java_file_path, content, true);
			}
			
			if (line.equals("{")){
				content = "\tpublic void launch(){\n";
				content += "\t\tIntent intent = new Intent();\n";
				content += "\t\tintent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);\n";
				content += "\t\tComponentName cn=new ComponentName(\"" + appModel.packageName + "\",\"" + clsname.replace("_dollar_", "$")
						+ "\");\n";
				content += "\t\tintent.setComponent(cn);\n";
				
				String[] acdtVals = acdt.split(";;");
				if (!acdtVals[0].equals("null")){
					if(acdtVals[0].contains("\\") && !acdtVals[0].contains("\\\\"))
						acdtVals[0] = acdtVals[0].replace("\\", "");
					content += "\t\tintent.setAction(" + strRefine(acdtVals[0]) + ");\n";
				}	
				if (!acdtVals[1].equals("null"))
					content += "\t\tintent.addCategory(" + strRefine(acdtVals[1]) + ");\n";
				if (!acdtVals[2].equals("null"))
					content += "\t\tintent.setData(Uri.parse(" + strRefine(acdtVals[2]) + "));\n";
				if (!acdtVals[3].equals("null"))
					content += "\t\tintent.setType(" + strRefine(acdtVals[3]) + ");\n";

				IOUtils.write_to_file(java_file_path, content, true);

				// new Bundle must show up before its use
				// generate extra data
				
				if( acdt.split(";;").length ==5) {
					String extras = acdt.split(";;")[4];
					generateExtrasInJava(decSet, extras, java_file_path, "Intent->intent");
				}
				content = "\t\tstartActivity(intent);\n";
				content += "\t\t//" + acdt + "\n";
				if (icc != null)
					content += "\t\t//" + icc.extra + "\n";
				content += "\t}\n";
				IOUtils.write_to_file(java_file_path, content, true);
			}
			if (line.contains("setContentView(R.layout.main);")) {
				IOUtils.write_to_file(java_file_path, "\t\tlaunch();\n", true);
				
				content = "\t\tButton button1=(Button)findViewById(R.id.button1);\n";
				content += "\t\tbutton1.setOnClickListener(new OnClickListener() {\n";
				content += "\t\t\t@Override\n";
				content += "\t\t\tpublic void onClick(View v) {\n";
				content += "\t\t\t\tlaunch();\n";
				content += "\t\t}});\n";
		        
				IOUtils.write_to_file(java_file_path, content, true);
			}
		}

	}

	private String strRefine(String acdt) {
		String refined = acdt.substring(1, acdt.length()-1);
		refined = refined.replace("\"", "");
		
		return "\""+refined+"\"";
	}


	public void copySerFiles(String folder) {
		String java_file_path = folder + File.separator + ConstantUtils.SRCFOLDER;
		Utils.createFolder(java_file_path);
		String templateF = ConstantUtils.TEAMPLATEFOLDER + ConstantUtils.SERJAVA + ".java";
		String desF = java_file_path + ConstantUtils.SERJAVA + ".java";
	//	Utils.copyFile(templateF, desF);
		ArrayList<String> lines = Utils.getList(templateF);
		IOUtils.write_to_file(desF, "package " + ConstantUtils.APKFLAG+appModel.packageName + ";\n", false);
		for(String line : lines)
			IOUtils.write_to_file(desF, line+"\n", true);
		
		
		templateF = ConstantUtils.TEAMPLATEFOLDER + ConstantUtils.PARJAVA + ".java";
		desF = java_file_path + ConstantUtils.PARJAVA + ".java";
//		Utils.copyFile(templateF, desF);
		ArrayList<String> lines2 = Utils.getList(templateF);
		IOUtils.write_to_file(desF, "package " + ConstantUtils.APKFLAG+ appModel.packageName +";\n", false);
		for(String line : lines2)
		IOUtils.write_to_file(desF, line+"\n", true);
		
		String layout_path = folder + File.separator +"res\\layout\\";
		Utils.createFolder(layout_path);
		templateF = ConstantUtils.TEAMPLATEFOLDER + ConstantUtils.LAYOUTMAIN;
		desF = layout_path + ConstantUtils.LAYOUTMAIN;
		
		ArrayList<String> lines3 = Utils.getList(templateF);
		IOUtils.write_to_file(desF, "", false);
		for(String line : lines3)
		IOUtils.write_to_file(desF, line+"\n", true);
		
	}

	private void generateExtrasInJava(HashSet<String> decSet, String extras, String java_file_path, String objPair) {
		if(objPair.equals("")) return;
		String objName = Utils.refineString(objPair.split("->")[1]);
		Stack<String> extraSt = new Stack<String>();
		String[] extra_pairs = extras.split(","); 
		for(String extra_pair : extra_pairs){
			if(extra_pair.equals(")")){
				String todoExtras= "";
				String top = extraSt.pop();
				while(!top.equals("(")){
					todoExtras = top+","+todoExtras;
					top = extraSt.pop();
				}
				String newObjPair=""; 
				for(int i= extraSt.size()-1; i>=0; i--){
					if(extraSt.get(i).contains("Bundle") || extraSt.get(i).contains("Extras")){
						String ss[] = extraSt.get(i).split("->");
						if(ss.length>1){
							newObjPair =  extraSt.get(i); //Utils.refineString(ss[1]);
							break;
						}
					}
				}
				generateExtrasInJava(decSet, todoExtras, java_file_path,newObjPair);	
			}else{
				extraSt.push(extra_pair);
			}
		}
		while(!extraSt.empty()){
			String topEd = extraSt.pop();
			//the container, e.g., Bundle b (int a);  Bundle b = new Bundle();
			objectDeclaration(decSet, java_file_path, objPair);
			//the current obj, e.g, Parceable p;
			if(!topEd.contains("Bundle") && !topEd.contains("Extras"))
				objectDeclaration(decSet, java_file_path, topEd);
			handleSingleExtraData(topEd, java_file_path, objName);
		}
	}
	

	private void objectDeclaration(HashSet<String> decSet, String java_file_path, String extra_pair) {
		if(!extra_pair.contains("->")) return;
		String[] ss = extra_pair.split("->");
		String extra_type = ss[0];
		// decSet
		String content = "";
		if (extra_type.equals("Extras")) {
			content = "\t\tBundle ExtrasObj = new Bundle();\n";
			if (!decSet.contains(content)) {
				decSet.add(content);
			} else {
				content = "\t\tExtrasObj = new Bundle();\n";
			}
			IOUtils.write_to_file(java_file_path, content, true);
		} 
		else {
			String extra_key = Utils.refineString(ss[1]);
			if (extra_key.equals(""))
				return;
			extra_key = extra_key.replace(".","_dot_");
			extra_key = extra_key.replace("-","_line_");
			extra_key = extra_key.replace(":","_maohao_");
			if (extra_type.equals("Bundle")) {
				content = "\t\tBundle " + extra_key + " = new Bundle();\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new Bundle();\n";
				}
			} else if (extra_type.equals("Serializable")) {
				content = "\t\tMySerializable " + extra_key + " = new MySerializable();\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new MySerializable();\n";
				}
			} else if (extra_type.equals("Parcelable")) {
				content = "\t\tParcelable " + extra_key + " = new MyParcelable();\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new MyParcelable();\n";
				}

			} else if (extra_type.equals("ParcelableArray")) {
				content = "\t\tParcelable[] " + extra_key + " = new MyParcelable[1];\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new MyParcelable[1];\n";
				}
				content += "\t\t" + extra_key + "[0] = new MyParcelable();\n";
			} else if (extra_type.equals("ParcelableArrayList")) {
				content = "\t\tArrayList  " + extra_key + " = new ArrayList<MyParcelable>();\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new ArrayList<MyParcelable>();\n";
				}
				content += "\t\t" + extra_key + ".add(new MyParcelable());\n";
			} else if (extra_type.contains("ArrayList")) {
				String type = extra_type.replace("ArrayList", "");
				content = "\t\tArrayList<" + type + "> " + extra_key + " = new ArrayList<" + type
						+ ">();\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new ArrayList<" + type + ">();\n";
				}
			} else if (extra_type.contains("Array")) {
				String type = extra_type.replace("Array", "");
				content = "\t\t" + type + "[] " + extra_key + " = new " + type + "[1];\n";
				if (!decSet.contains(content)) {
					decSet.add(content);
				} else {
					content = "\t\t" + extra_key + " = new " + type + "[1];\n";
				}
			}
			IOUtils.write_to_file(java_file_path, content, true);
		}
	}
	
	public String getNameByKey(String extra_key) {
		return extra_key.replace(".", "");
	}

	public void handleSingleExtraData(String extra_pair, String java_file_path, String objName) {
		objName = objName.replace(".","_dot_");
		objName = objName.replace("-","_line_");
		objName = objName.replace(":","_maohao_");
		if(!extra_pair.contains("->")) return;
		String[] ss = extra_pair.split("->");
		String extra_type = ss[0];
		String content = "";
		if (extra_type.equals("Extras")) {
			content += "\t\tgetIntent().putExtras(ExtrasObj);\n";
		} else {
			String extra_key = Utils.refineString(ss[1]);
			String extra_value = ss[2];
			// there is something wrong when param contains "."
			extra_key = extra_key.replace(".","_dot_");
			extra_key = extra_key.replace("-","_line_");
			extra_key = extra_key.replace(":","_maohao_");
			// bundle api different with intent api
			String putAPI = getPutAPI(extra_type, objName);

			if (!extra_value.equals("null")) {
				if (extra_type.contains("String") || extra_type.contains("CharSequence") || extra_type.equals("Object"))
					extra_value = "\"" + extra_value + "\"";
				else if (extra_type.contains("Char") || extra_type.contains("char"))
					extra_value = "'" + extra_value + "'";

				if (!ConstantUtils.isStringType(extra_type)) {
					extra_value = extra_key;
				} else {
					if (extra_type.contains("ArrayList")) {
						content += "\t\t" + extra_key + ".add(" + extra_value + ");\n";
						extra_value = extra_key;
					} else if (extra_type.contains("Array")) {
						content += "\t\t" + extra_key + "[0] = " + extra_value + ";\n";
						extra_value = extra_key;
					}
				}
				content += "\t\t" + objName + "." + putAPI + "(\"" + extra_key.replace("_dot_", ".").replace("_maohao_", ":").replace("_line_","-")
						+ "\", " + extra_value + ");\n";
			}
		}
		IOUtils.write_to_file(java_file_path, content, true);
	}

	public String getPutAPI(String extra_type, String objName) {
		String putAPI = null;
		if (ConstantUtils.isArrayListType(extra_type)) {
			String suffix = "";
			if(objName.equals("intent")) 	suffix = "Extra";
			if (extra_type.equals("IntegerArrayList"))
				putAPI = "putIntegerArrayList"+suffix;
			else if (extra_type.equals("ParcelableArrayList"))
				putAPI = "putParcelableArrayList"+suffix;
			else if (extra_type.equals("StringArrayList"))
				putAPI = "putStringArrayList"+suffix;
		} else {
			if (objName.equals("intent"))
				putAPI = "putExtra";
			else
				putAPI = "put" + extra_type.substring(0, 1).toUpperCase() + extra_type.substring(1);
		}

		return putAPI;
	}

	public int gen_manifest_file(String manifest_path) {
		ArrayList<String> lines = Utils.getList(manifest_path);
		if(lines == null) return -1;
		IOUtils.write_to_file(manifest_path, "", false);
		String content = "";
		for (String line : lines) {
			if(line.contains("@string/app_name"))
				line = line.replace("@string/app_name",appModel.appName+"_Launcher");
			if (line.contains("</manifest>")) {
				if (appModel.permission.length() != 0)
					content += "\t<uses-permission android:name=\"" + appModel.permission + "\"/>\n";
				for ( ActivityModel ea : appModel.ops.getActivityMap().values()) {
					if (ea.getPermission() != null && ea.getPermission().length()>0) {
						content += "\t<uses-permission android:name=\"" + ea.getPermission() + "\"/>\n";
					}
				}
			}
			if (line.contains("</application>")) {
				for (int i=1; i<= appId; i++) {
					content += "\t\t<activity android:name=\"."+ConstantUtils.ACTIVITY +i +"\" android:exported=\"true\"/>\n";
				}
			}
			content += line;
		}
		IOUtils.write_to_file(manifest_path, content + "\n", true);
		return 0;
	}

	public void handleExtraAccordingToTypeNormal(String extra_type, String extra_key, Set<String> ACDTStr) {
		Set<String> copy = new HashSet<String>(ACDTStr);
		for (String acdt : copy) {
			Random r = new Random();
			int n = r.nextInt(2);
			if (extra_type.contains("Int") || extra_type.contains("int")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" +0+",");
			} else if (extra_type.contains("Float") || extra_type.contains("float")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0.0 +",");
			} else if (extra_type.contains("Double") || extra_type.contains("double")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0.0 +",");
			} else if (extra_type.contains("Short") || extra_type.contains("short")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0.0 +",");
			} else if (extra_type.contains("Long") || extra_type.contains("long")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0 +",");
			} else if (extra_type.contains("Byte") || extra_type.contains("byte")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0 +",");
			} else if (extra_type.contains("String") || extra_type.contains("CharSequence")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "abcde"+",");
			} else if (extra_type.contains("Char") || extra_type.contains("char")) {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "a"+",");
			} else if (extra_type.contains("Boolean") || extra_type.contains("boolean")) {
				if(n==1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "true"+",");
				else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "false"+",");
			} else {
				ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + extra_type + "Obj"+",");
			}
			ACDTStr.remove(acdt);
			if (ACDTStr.size() > ConstantUtils.UPLIMIT2)
				return;
		}
	}
	
	
	public void handleExtraAccordingToTypeAbnormal(String extra_type, String extra_key, Set<String> ACDTStr) {
		Set<String> copy = new HashSet<String>(ACDTStr);
		Random r = new Random();
		int n = r.nextInt(2);
		for (String acdt : copy) {
			if (extra_type.contains("Int") || extra_type.contains("int")) {
				if(n==0) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Integer.MAX_VALUE,");
				else 	 ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Integer.MIN_VALUE,");
			} else if (extra_type.contains("Float") || extra_type.contains("float")) {
				if(n==1) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Float.MAX_VALUE,");
				else 	 ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Float.MIN_VALUE,");
			} else if (extra_type.contains("Double") || extra_type.contains("double")) {
				if(n==0) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Double.MAX_VALUE,");
				else 	 ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Double.MIN_VALUE,");
			} else if (extra_type.contains("Short") || extra_type.contains("short")) {
				if(n==1) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Short.MAX_VALUE,");
				else 	 ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Short.MIN_VALUE,");
			} else if (extra_type.contains("Long") || extra_type.contains("long")) {
				if(n==0) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Long.MAX_VALUE,");
				else 	 ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Long.MIN_VALUE,");
			} else if (extra_type.contains("Byte") || extra_type.contains("byte")) {
				if(n==1) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Byte.MAX_VALUE,");
				else 	 ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->Byte.MIN_VALUE,");
			} else if (extra_type.contains("String") || extra_type.contains("CharSequence")) {
				if(n==1) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->" +  "!@#$%^ds:+_"+",");
				else ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->" + "999999999999999999999999999999999999999999999999999"+",");
			} else if (extra_type.contains("Char") || extra_type.contains("char")) {
				ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->" + "\\\\"+",");
			} else if (extra_type.contains("Boolean") || extra_type.contains("boolean")) {
				if(n==1) ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->" + "true"+",");
				else ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->" + "false"+",");
			} else {
				ACDTStr.add(acdt  + extra_type + "->" + extra_key + "->" + extra_type + "Obj"+",");
			}
			ACDTStr.remove(acdt);
			if (ACDTStr.size() > ConstantUtils.UPLIMIT2)
				return;
		}
	}
	public void handleICCMsgs(Set<ICCMsg> iCCs, String className) {		
		for(ICCMsg msg : iCCs){
			Set<String> ACDTStr = new HashSet<String>();
			String str = "";
			if(msg.action != null && !msg.action.equals("")  && !msg.action.equals("\"\""))
				str += msg.action + ";;";
			else str +="null;;";
			
			if(msg.category != null && msg.category.size()>0){
				for(String c: msg.category){
					str += c;
					break;
				}
			}else str +="null";
			str += ";;";
			
			if(msg.data != null && !msg.data.equals("") && !msg.data.equals("\"\"")) 
				str += msg.data;
			else if(msg.path != null || msg.port!= null || msg.scheme!= null || msg.host!= null)
				str += "\""+Utils.refineString(msg.scheme)+"://" + Utils.refineString(msg.host) + ":" +
			Utils.refineString(msg.port)+"/" +Utils.refineString(msg.path)+"\"";
			else str +="null";
			str += ";;";
			
			if(msg.type != null && !msg.type.equals("") && !msg.type.equals("\"\"")) 
				str += msg.type + ";;";
			else str +="null;;";
			ACDTStr.add(str);
			if(msg.extra != null){
				String[] extra_pairs = PrintUtils.printSet(msg.extra).replace(" ", "").split(",");
				for (String extra_pair : extra_pairs) {
					if(extra_pair.length()==0) continue;
					String[] ss = extra_pair.split("-");
					String extra_type = ss[0];
					if (ss.length > 1 || extra_type.equals("Extras")) {
						String extra_key = "";
						if (extra_type.equals("Extras"))
							extra_key = extra_type + "Obj";
						else
							extra_key = Utils.refineString(extra_pair.split("\"")[1]);
	
						if (extra_key.equals(""))
							extra_key = ConstantUtils.UNKOWN;
						Set<String> ACDTStr1 = new HashSet<String>(ACDTStr);
						Set<String> ACDTStr2 = new HashSet<String>(ACDTStr);
						handleExtraAccordingToTypeNormal(extra_type, extra_key, ACDTStr1);
						handleExtraAccordingToTypeAbnormal(extra_type, extra_key, ACDTStr2);
						ACDTStr.clear();
						ACDTStr.addAll(ACDTStr1);
						ACDTStr.addAll(ACDTStr2);
					}else{
						Set<String> copy = new HashSet<String>(ACDTStr);
						for (String acdt : copy) {
							ACDTStr.add(acdt + extra_pair+",");
							ACDTStr.remove(acdt);
						}
					}
				}
			}
			Iterator<String> it = ACDTStr.iterator();
			if(it.hasNext()){
				generateJavaFile(it.next(), className);
			}
			
			appModel.countTC_use += appId;
		}

	}
	public void createAndroidProject() {
		String pro_name = getProjectName(appModel.appName);
		String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator;
		String projectPath =folder + apkProjectFolder + pro_name;
		File f = new File(projectPath);
		f.mkdirs();
		AppGeneration.creatProject(appModel.packageName,projectPath, pro_name);
		ConstantUtils.SRCFOLDER = "src" + File.separator +  ConstantUtils.APKFLAG.replace(".", File.separator) + 
				appModel.packageName.replace(".", File.separator)+File.separator;
		copySerFiles(projectPath);
		System.out.println(projectPath);
		
	}

	public void generateJavaFile(String  acdt, String clsname) {
		
		clsname = clsname.replace("$", "_dollar_");
		String pro_name = getProjectName(appModel.appName);
		String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator;
		String projectPath =folder + apkProjectFolder + pro_name ;
		
		gen_java_file(projectPath + File.separator + ConstantUtils.SRCFOLDER + File.separator+ ConstantUtils.ACTIVITY ,
				null, clsname, acdt);
		
	}
	
	public void generateManifest() {
		String pro_name = getProjectName(appModel.appName);
		String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator;
		String projectPath =folder + apkProjectFolder + pro_name ;
		
		int flag = gen_manifest_file(projectPath + File.separator + ConstantUtils.MANIFEST);
		if (flag <0) return;
	}
	
	public void buildProject() {
		String pro_name = getProjectName(appModel.appName);
		String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator;
		String projectPath =folder + apkProjectFolder + pro_name;
		try{
		AppGeneration.buildApp(projectPath);
		}catch(Exception e){
			e.printStackTrace();
		}
		moveGeratedAPK(projectPath);// move app from bin to projectPath
		

//		IOUtils.delFolder(ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator+ apkProjectFolder );
	
	}
	
}
