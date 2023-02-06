package utils;

public class AppGeneration {

	public static void creatProject(String oldpkg, String param_result_dir, String projectName) {
		 Utils.exec("android create project --name " + projectName + " --target " + ConstantUtils.ANDROIDTARGET
				+ " --path " + param_result_dir + " --package " + ConstantUtils.APKFLAG + oldpkg + " --activity "
				+ ConstantUtils.ACTIVITY);
		 System.out.println("android create project --name " + projectName +" --target " + ConstantUtils.ANDROIDTARGET + 
				 " --path "+param_result_dir+" --package " + ConstantUtils.APKFLAG+oldpkg+  " --activity "+ConstantUtils.ACTIVITY);
	}

	public static void buildApp(String projectPath) {
		System.out.println("ant debug -buildfile " + projectPath + "/build.xml");
		Utils.exec("ant debug -buildfile " + projectPath + "/build.xml");
	}
}
