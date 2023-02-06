package analyzer;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

import model.AppModel;
import soot.Body;
import soot.BodyTransformer;
import soot.PackManager;
import soot.Scene;
import soot.SootClass;
import soot.Transform;
import soot.options.Options;
import transformer.DefUseTransformer;
import utils.ConstantUtils;
import utils.MyConfig;

public class SootAnalyzer {
	AppModel appModel;
	public SootAnalyzer(AppModel appModel) {
		this.appModel = appModel;
	}

	/**
	 * analyze using soot
	 */
	public void analyze() {
		// start soot
		activityAnalyze();
		System.out.println("SootAnalyzer Finish...");
	}

	private void activityAnalyze() {
		soot.G.reset();
		
		Options.v().set_android_jars(ConstantUtils.android_jar_path);
		Options.v().set_process_dir(Collections.singletonList(appModel.appPath));
		Options.v().set_no_bodies_for_excluded(true);
		Options.v().process_multiple_dex();
		if(MyConfig.getInstance().isJimple)
			Options.v().set_output_format(Options.output_format_jimple);
		else 
			Options.v().set_output_format(Options.output_format_shimple);
		String out = ConstantUtils.RESULTFOLDER + ConstantUtils.SUMMARYFOLDER  + appModel.appName +  File.separator + ConstantUtils.SOOTOUTPUT;
		Options.v().set_output_dir(out);
		Options.v().set_src_prec(Options.src_prec_apk);
		Options.v().allow_phantom_refs();
		setExcludePackage();

		if (appModel.appName == null)
			return;
		
		String pack ="jtp";
		if(!MyConfig.getInstance().isJimple)
			pack ="stp";
		//T0
		Transform t0 = new Transform(pack+".bt", new BodyTransformer(){
			@Override
			protected void internalTransform(Body b, String phase,
					Map<String, String> options) {
				b.getMethod().setActiveBody(b);
			}
		});
		PackManager.v().getPack(pack).add(t0);
		
		if(!MyConfig.getInstance().isJimple){
			//T1
			DefUseTransformer transfer = new DefUseTransformer(appModel);
			Transform t1 = new Transform(pack+".iitf", transfer);
			PackManager.v().getPack(pack).add(t1);
		}
			
		
		soot.Main.v().autoSetOptions();
		Scene.v().loadNecessaryClasses();
		Scene.v().loadBasicClasses();
		Scene.v().addBasicClass("java.util.List",SootClass.SIGNATURES);
		PackManager.v().runPacks();
	}

	private void setExcludePackage() {
		ArrayList<String> excludeList = new ArrayList<String>();
		excludeList.add("android.*");
		excludeList.add("androidx.*");
		excludeList.add("kotlin.*");
		excludeList.add("com.google.*");
		excludeList.add("soot.*");
		Options.v().set_exclude(excludeList);
	}
}