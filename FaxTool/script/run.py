from 0_prerocess import *
from 1_generateTestCases import *
from 2_launchActs import *
from 3_findCrashes import *
from 5_FairAndroidExploer import *
from 7_collectLogcat import *


#main function
if  __name__ == '__main__':   
	apk_input_dir = "apk"+ os.sep
	apk_output_dir = "apk_processed"+ os.sep
	testcase_dir = "Result_testGen"+ os.sep
	execute_info_dir = testcase_dir +"executeInfo"+ os.sep
	launch_dir = "Result_launch"+ os.sep
	explore_dir = "Result_explore_EA"+ os.sep
	
	faxJar ="lib/Fax0108.jar"+ os.sep
	max_number_of_path = 10000
	act_type = "EA"
	
	#[Preprocess]
	pre = PreProcess(apk_input_dir,apk_output_dir)
	pre.exportApp()
	pre.instrument()
	pre.install()
	
	#[Test Generation]
	generator = TestGenerator(faxJar, apk_input_dir, testcase_dir, execute_info_dir, max_number_of_path)
	generator.generateTC()
	
	#[Fax Launching Test]	
	launcher = ActivityLauncher(testcase_dir, launch_dir)
	launcher.launchAct()
	launcher.getLaunchedAct()
	
	#[Detect Crashes for Fax Launching]
	det = BugDetector(testcase_dir,launch_dir)
	det.detect()
	
	
	#[Fax Exploration Test]
	tcFolder = testcase_dir + "testcases"+os.sep
	for appName in os.listdir(tcFolder):
		fax = FairAndroidExploer(appName, launch_dir, explore_dir,testcase_dir, apk_output_dir, act_type)
		if not os.path.exists(fax.LogDir):
			fax.main()
	
	#[Detect Crashes for Fax Exploration]
	det = BugDetector(testcase_dir,explore_dir)
	det.detect()
	
	#[Calculate Coverage Result]
	collector = InfoCollector(testcase_dir,explore_dir,apk_output_dir)
	collector.main()