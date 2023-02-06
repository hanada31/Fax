package utils;

import java.io.File;

import soot.Unit;
import soot.jimple.internal.JAssignStmt;

public class ConstantUtils {
	// file path of android.jar
	public static final String android_jar_path = "." + File.separator + "lib";
	public static final String ADB = "adb.txt";
	public static final String CGFILE = "CG.log";
	public static final String APKFLAG = "fax.";
	public static final String LAYOUTMAIN = "main.xml";
	
	public static final String ACTFILE = "actinfo.txt";
	public static final String RESFILE = "statisticResult.txt";
	public static final String ICCMSG = "ICCMsg.txt";
	public static final String ACTUSE = "ActivityUsedModel.txt";
	public static final String ACTDEC = "ActivityDeclaredModel.txt";
	public static final String COMPARE = "attriMismatch.txt";
	public static final String STMTFOLDER = "stmt" + File.separator;

	public static final String ADBTESTCASEFOLDER1 = "adbTestCases" + File.separator;
	public static final String APKTESTCASEFOLDER1 = "apkTestCases" + File.separator;
	public static final String GENERATEDAPP1 = "generatedApp" + File.separator;
	
	public static final String ADBTESTCASEFOLDER2 = "2"+ File.separator + "adbTestCases2" + File.separator;
	public static final String ADBTESTCASEFOLDER3 = "3"+ File.separator + "adbTestCases3" + File.separator;
	public static final String ADBTESTCASEFOLDER4 = "4"+ File.separator + "adbTestCases4" + File.separator;
	public static final String ADBTESTCASEFOLDER5 = "5"+ File.separator + "adbTestCases5" + File.separator;

	public static final String APKTESTCASEFOLDER2 = "2"+ File.separator + "apkTestCases2" + File.separator;
	public static final String APKTESTCASEFOLDER3 = "3"+ File.separator + "apkTestCases3" + File.separator;
	public static final String APKTESTCASEFOLDER4 = "4"+ File.separator + "apkTestCases4" + File.separator;
	public static final String APKTESTCASEFOLDER5 = "5"+ File.separator + "apkTestCases5" + File.separator;

	public static final String GENERATEDAPP2 = "generatedApp2" + File.separator;
	public static final String GENERATEDAPP3 = "generatedApp3" + File.separator;
	public static final String GENERATEDAPP4 = "generatedApp4" + File.separator;
	public static final String GENERATEDAPP5 = "generatedApp5" + File.separator;

	public static final String NOTSUPPORT = "notSupport.txt";
	public static final String STATISTIC = "stringUsage.txt";

	public static final String USEDACTION = "usedActions.txt";
	public static final String DECLAREDACTION = "declaredActions.txt";

	public static final String USEDCATEGORY = "usedCategories.txt";
	public static final String DECLAREDCATEGORY = "declaredCategories.txt";

	public static final String USEDDATA = "usedDatas.txt";
	public static final String DECLAREDDATA = "declaredDatas.txt";

	public static final String USEDTYPE = "usedTypes.txt";
	public static final String DECLAREDTYPE = "declaredTypes.txt";

	public static final String USED = "used";
	public static final String BACKOVERWRITTEN = "onBackPressed";
	public static final String STARTACT = "startActivity";

	public static final String SERFOLDER = "ser" + File.separator;
	public static final String SUMMARYFOLDER = "summary_res" + File.separator;

	public static final String TEAMPLATEFOLDER = "template" + File.separator;

	public static String SRCFOLDER;

	public static final String MANIFEST = "AndroidManifest.xml";
	public static final String MYMANIFEST = "AndroidManifest.txt";
	public static final String ACTIVITYLIST = "ActivityList.txt";
	public static final String EALIST = "EAList.txt";
	public static final String ACTIVITY = "Activity_";
	public static final String SERJAVA = "MySerializable";
	public static final String PARJAVA = "MyParcelable";

	public static String RESULTFOLDER;

	public static final String TESTCASEFOLDER = "testcases" +File.separator;
	
	public static String ANDROIDTARGET;

	public static final String UNKOWN = "key_unkown";

	// get intent extra method
	public static final String[] get_intnet_extra_methods = { "getDoubleArrayExtra", "getDoubleExtra",
			"getFloatArrayExtra", "getFloatExtra", "getIntArrayExtra", "getIntExtra", "getIntegerArrayListExtra",
			"getLongArrayExtra", "getLongExtra", "getParcelableArrayExtra", "getParcelableArrayListExtra",
			"getParcelableExtra", "getSerializableExtra", "getShortExtra", "getShortArrayExtra", "getStringArrayExtra",
			"getStringArrayListExtra", "getStringExtra", "getBooleanArrayExtra", "getBooleanExtra", "getByteArrayExtra",
			"getByteExtra", "getCharArrayExtra", "getCharExtra", "getCharSequenceArrayExtra",
			"getCharSequenceArrayListExtra", "getCharSequenceExtra", "getBundleExtra", "getExtras",
			"android.os.Bundle: java.lang.Object get" };

	// extra intent method types
	public static final String[] intent_extra_method_types = { "doubleArray", "double", "floatArray", "float",
			"intArray", "int", "IntegerArrayList", "longArray", "long", "ParcelableArray", "ParcelableArrayList",
			"Parcelable", "Serializable", "short", "shortArray", "StringArray", "StringArrayList", "String",
			"booleanArray", "boolean", "byteArray", "byte", "charArray", "char", "CharSequenceArray",
			"CharSequenceArrayList", "CharSequence", "Bundle", "Extras", "String" };

	public static String get_type_of_intent_extra(String m) {
		for (int i = 0; i < get_intnet_extra_methods.length; i++) {
			if (m.contains(get_intnet_extra_methods[i]))
				return intent_extra_method_types[i];
		}
		return null;
	}

	public static Boolean is_get_intent_extra_method(String u) {
		if (u.toString().contains("android.content.Intent") || u.toString().contains("android.os.Bundle")  || u.toString().contains("android.os.BaseBundle")) {
			if (u.toString().contains("goto ") || u.toString().contains("sgoto "))
				return false;
			if (u.toString().startsWith("if "))
				return false;
			for (int i = 0; i < get_intnet_extra_methods.length; i++) {
				if (u.toString().contains(get_intnet_extra_methods[i]))
					return true;
			}
		}
		return false;
	}

	// get extra method
	public static final String[] get_bundlle_extra_methods = {

			"getDoubleArray(", "getDouble(", "getFloatArray(", "getFloat(", "getIntArray(", "getInt(",
			"getIntegerArrayList(", "getLongArray(", "getLong(", "getParcelableArray(", "getParcelableArrayList(",
			"getParcelable(", "getSerializable(", "getShort(", "getShortArray(", "getStringArray(",
			"getStringArrayList(", "getString(", "getBooleanArray(", "getBoolean(", "getByteArray(", "getByte(",
			"getCharArray(", "getChar(", "getCharSequenceArray(", "getCharSequenceArrayList(", "getCharSequence",
			"getBundle(", "getExtras", "android.os.Bundle: java.lang.Object get" };

	// extra method types
	public static final String[] bundle_extra_method_types = {

			"doubleArray", "double", "floatArray", "dloat", "intArray", "int", "IntegerArrayList", "longArray", "long",
			"ParcelableArray", "ParcelableArrayList", "Parcelable", "Serializable", "short", "shortArray",
			"StringArray", "StringArrayList", "String", "booleanArray", "boolean", "byteArray", "byte", "charArray",
			"char", "CharSequenceArray", "CharSequenceArrayList", "CharSequence", "Bundle", "Extras", "String" };

	public static final String[] compared_methods = { "contains", "equals", "contentEquals", "equalsIgnoreCase",
			"startsWith", "endsWith", "!= null", "== null", "isEmpty", "valueOf", "copyValueOf", "==", "!="};

	public static String get_type_of_get_bundle_extra(String m) {
		for (int i = 0; i < get_bundlle_extra_methods.length; i++) {
			if (m.contains(get_bundlle_extra_methods[i]))
				return bundle_extra_method_types[i];
		}
		return null;
	}

	public static Boolean is_get_bundle_extra_method(String u) {
		if (u.toString().contains("android.content.Intent") || u.toString().contains("android.os.Bundle")) {
			if (u.toString().contains("goto ") || u.toString().contains("sgoto "))
				return false;
			if (u.toString().startsWith("if "))
				return false;
			for (int i = 0; i < get_bundlle_extra_methods.length; i++) {
				if (u.toString().contains(get_bundlle_extra_methods[i]))
					return true;
			}
		}
		return false;
	}

	public static Boolean is_Extra_method(String u) {
		return is_get_bundle_extra_method(u) || is_get_intent_extra_method(u);
	}

	// get attribute method
	public static final String[] getAttribute_methods = { "android.content.Intent: java.lang.String getAction(",
			"android.content.Intent: java.util.Set getCategories(",
			"android.content.Intent: java.lang.String getDataString(",
			"android.content.Intent: android.net.Uri getData(", "android.content.Intent: java.lang.String getType(" };

	public static boolean is_getIntent_method(Unit u) {
		if (!(u instanceof JAssignStmt))
			return false;
		if (u.toString().contains("android.content.Intent getIntent()>()"))
			return true;
		return false;
	}

	public static boolean is_getAttribute_method(Unit u) {
		if (!(u instanceof JAssignStmt))
			return false;
		for (int i = 0; i < getAttribute_methods.length; i++) {
			if (u.toString().contains(getAttribute_methods[i]))
				return true;
		}
		return false;
	}

	public static boolean is_getAction_method(Unit u) {
		if (!(u instanceof JAssignStmt))
			return false;
		if (u.toString().contains(getAttribute_methods[0]))
			return true;
		return false;
	}

	public static boolean is_getCategory_method(Unit u) {
		if (!(u instanceof JAssignStmt))
			return false;
		if (u.toString().contains(getAttribute_methods[1]))
			return true;
		return false;
	}

	public static boolean is_getData_method(Unit u) {
		if (!(u instanceof JAssignStmt))
			return false;
		if (u.toString().contains(getAttribute_methods[2]))
			return true;
		if (u.toString().contains(getAttribute_methods[3]))
			return true;
		return false;
	}

	public static boolean is_getType_method(Unit u) {
		if (!(u instanceof JAssignStmt))
			return false;
		if (u.toString().contains(getAttribute_methods[4]))
			return true;
		return false;
	}
	//
	// public static Boolean is_intent_extra_get_method(String m) {
	// for(int i = 0; i < intent_extra_get_methods.length; i ++) {
	// if(m.contains(intent_extra_get_methods[i])) return true;
	// }
	// return false;
	// }

	public static Boolean is_bundle_extra(String s) {
		return s.equals("Bundle");
	}

	public static Boolean is_extras_extra(String s) {
		return s.equals("Extras");
	}

	// for cg construction
	// public static final String[] imp_callback_list =
	// {"onCreate(android.os.Bundle)", "onStart(",
	// "onResume(", "onRestart(", "execute(java.lang.Runnable)", "start(",
	// "onResumeFragments"};
	//
	

	
	public static final String[] unsafePrefix = {
		"<android.content.Context: java.lang.Object getSystemService(java.lang.String)>(\"activity\")",
		"<android.content.SharedPreferences", "<android.content.ContentProvider",
		"<android.app.Application","<android.content.ContextWrapper",
		"<java.io.File",
		"android.content.ComponentName getCallingActivity()"
	};
	
	public static final String[] safePrefix = {
		"<android.content.Intent", 
		"<android.content.Context: java.lang.Object getSystemService(java.lang.String)>"
	};
	
	public static int isSafeLibMethod(String methodStr){
		for (int i = 0; i < unsafePrefix.length; i++) {
			if (methodStr.startsWith(unsafePrefix[i]))
				return -1;
		}
		for (int i = 0; i < safePrefix.length; i++) {
			if (methodStr.startsWith(safePrefix[i]))
				return 1;
		}
		//else like, equals(), startWith()
		return 0;
	}
	
	
	public static final String[] exitpoint = {
		"finish()", 
		"throw "
	};
	
	public static boolean isExitPoint(String methodStr){
		for (int i = 0; i < exitpoint.length; i++) {
			if (methodStr.contains(exitpoint[i]))
				return true;
		}
		return false;
	}
	
	public static final String[] implicit_executes = { "onPreExecute(", "doInBackground(", "onPostExecute(" };

	public static final String[] implicit_start = { "start(" };

	public static final String FLAGATTRI = "attributes";
	public static final String FLAGSTATIC = "staticValues";
	public static final String FLAGEXTRA = "extras";
	public static final String FLAGPARAM = "param";

	public static final String UNINSTALL = "uninstallApp";
	public static final int UPLIMIT1 = 500;
	public static final int UPLIMIT2 = 500;
	public static final int INTERCALLLIMIT = 1000;
	public static final int GETVALUELIMIT = 1000;
	public static final String AUPFILE = "paths.txt";
	public static final String SOOTOUTPUT = "sootOutput";
	public static final String UNCONSTRUCT = "unconstructable.txt";
	public static final String CONSTRUCT = "constructable.txt";
	public static final String UNCONSTRUCTIF = "if_unconstructable.txt";
	public static final String CONSTRUCTIF = "if_constructable.txt";
	public static final String SYSTEMSERVICE = "SystemService.txt";
	public static final String ATG = "atg.txt";
	public static final String ATGDOT = "atg.dot";
	public static final String ATGREACHABLE = "atgReachable.txt";
	public static final String PRIORITY = "priority.txt";

	public static boolean is_implicit_execute(String s) {
		return s.contains(" execute(java.lang.Runnable)");
	}

	public static boolean is_implicit_start(String s) {
		return s.contains(" start()");
	}

	public static boolean is_implicit_run(String s) {
		return s.contains(" run()");
	}

	public static boolean is_implicit_execute_implict(String caller) {
		for (String s : implicit_executes)
			if (caller.contains(s))
				return true;
		return false;
	}

	public static boolean isStringType(String extra_type) {
		String no[] = { "Bundle", "Parcelable", "Serializable", "Extras", "ArrayList", "Array" };
		for (String s : no)
			if (extra_type.contains(s))
				return false;
		return true;
	}

	public static boolean isArrayListType(String extra_type) {
		String no[] = { "IntegerArrayList", "ParcelableArrayList", "StringArrayList" };
		for (String s : no)
			if (extra_type.contains(s))
				return true;
		return false;
	}

	public static boolean is_IntraInvoke_method(Unit u, String cls) {
		String id = "<" + cls + ":";
		// virtual invoke???????
		if (u.toString().contains("invoke") && u.toString().contains(id))
			return true;
		return false;
	}

	public static boolean isConstructable(String type) {
		if(type.contains("Parcelable") || type.contains("Serializable"))
			return false;
		return true;
	}
}
