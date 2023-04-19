from Prerocess import *
from GenerateTestCases import *
from LaunchActs import *
from FindCrashes import *
from FairAndroidExploer import *
from CollectLogcat import *


#main function
if  __name__ == '__main__':   
	apk_input_dir = "apk"+ os.sep
	apk_output_dir = "apk_processed"+ os.sep
	testcase_dir = "Result_testGen"+ os.sep
	execute_info_dir = testcase_dir +"executeInfo"+ os.sep
	launch_dir = "Result_launch"+ os.sep
	explore_dir = "Result_explore"+ os.sep
	sdkVersion = "23"
	
	faxJar ="lib/Fax.jar"
	max_number_of_path = 10000
	act_type = "All" #EA or All
	exploration_time = 60
	
	#[Preprocess]
	pre = PreProcess(apk_input_dir,apk_output_dir)
	pre.exportApp()
	pre.instrument()
	pre.install()
	
	print "Preprocess Finish!"
	
	#[Test Generation]
	generator = TestGenerator(faxJar, apk_input_dir, testcase_dir, execute_info_dir, max_number_of_path, sdkVersion )
	generator.generateTC()
	print "TestGenerator Finish!"
	
	#[Fax Launching Test]	
	launcher = ActivityLauncher(testcase_dir, launch_dir)
	launcher.launchAct()
	launcher.getLaunchedAct()
	print "Fax Launching Finish!"
	
	#[Detect Crashes for Fax Launching]
	det = BugDetector(testcase_dir,launch_dir)
	det.detect()
	print "Detect Launching Crashes Finish!"
	
	#[Fax Exploration Test]
	tcFolder = testcase_dir + "testcases"+os.sep
	for appName in os.listdir(tcFolder):
		fax = FairAndroidExploer(appName, launch_dir, explore_dir,testcase_dir, apk_output_dir, act_type,exploration_time)
		if not os.path.exists(fax.LogDir):
			fax.main()
	print "Fax Exploration Finish!"
	
	#[Detect Crashes for Fax Exploration]
	det = BugDetector(testcase_dir,explore_dir)
	det.detect()
	print "Detect Exploration Crashes Finish!"
	
	#[Calculate Coverage Result]
	collector = InfoCollector(testcase_dir,explore_dir,apk_output_dir)
	collector.main()
	print "Calculate Coverage Finish!"