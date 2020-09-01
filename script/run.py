from GenerateTestCases import *
from LaunchActs import *
from FindCrashes import *
from FairAndroidExploer import *
from CollectLogcat import *


#main function
if  __name__ == '__main__':
	apkInputDir = "apk"+ os.sep
	testcaseDir = "Result_testGen"+ os.sep
	executeInfoDir = testcaseDir +"executeInfo"+ os.sep
	launchDir = "Result_launch"+ os.sep
	exploreDir = "Result_explore"+ os.sep
	sdkVersion = "23"

	faxJar ="lib/Fax.jar"
	maxNumberOfPath = 10000
	actType = "All" #EA or All
	analyzingTime = 180
	explorationTime = 60

	# pick the running pahse
	install = False
	launch = False
	explore = False
	
	#[Test Generation]
	generator = TestGenerator(faxJar, apkInputDir, testcaseDir, executeInfoDir, maxNumberOfPath, sdkVersion, install, analyzingTime)
	generator.generateTC()
	print "TestGenerator Finish!"

	if launch == True:
		#[Fax Launching Test]
		launcher = ActivityLauncher(testcaseDir, launchDir)
		launcher.launchAct()
		launcher.getLaunchedAct()
		print "Fax Launching Finish!"

		#[Detect Crashes for Fax Launching]
		det = BugDetector(testcaseDir,launchDir)
		det.detect()
		print "Detect Launching Crashes Finish!"

		#[Calculate Coverage Result]
		collector = InfoCollector(testcaseDir,launchDir)
		collector.main()
		print "Calculate Coverage Finish!"

	if explore == True: 
		#[Fax Exploration Test]
		tcFolder = testcaseDir + "testcases"+os.sep
		for appName in os.listdir(tcFolder):
			fax = FairAndroidExploer(appName, launchDir, exploreDir,testcaseDir, actType,explorationTime)
			if not os.path.exists(fax.LogDir):
				fax.main()
		print "Fax Exploration Finish!"
		
		#[Detect Crashes for Fax Exploration]
		det = BugDetector(testcaseDir,exploreDir)
		det.detect()
		print "Detect Exploration Crashes Finish!"
		
		collector = InfoCollector(testcaseDir,exploreDir)
		collector.main()
		print "Calculate Coverage Finish!"