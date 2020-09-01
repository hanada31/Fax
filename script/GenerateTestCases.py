# /usr/bin/python
# coding=utf-8

import os
import sys
import time
import datetime


class TestGenerator:
	def __init__(self, faxJar, appDir, testGenDir, outputDir, maxPathNum, sdkVersion, install, analyzingTime):
		self.faxJar = faxJar
		self.appDir = appDir
		self.testGenDir = testGenDir
		self.outputDir = outputDir
		self.maxPathNum = maxPathNum
		self.sdkVersion = sdkVersion
		self.install = install
		self.analyzingTime = analyzingTime 
        
	def getSet(self, fn, aset):
		if not os.path.exists(fn):
			f = open(fn, "w")
			f.close()

		# get apks
		f = open(fn, "r")
		lines = f.readlines()
		f.close()

		# add into set
		for x in lines:
			aset.add(x.strip())

	def generateTC(self):
		if not os.path.exists(self.testGenDir):
			os.makedirs(self.testGenDir)
		if not os.path.exists(self.outputDir):
			os.makedirs(self.outputDir)
		print(self.appDir)

		fn = self.testGenDir + "history.txt"
		history_set = set()
		self.getSet(fn, history_set)

		# for each app
		apks = os.listdir(self.appDir)
		for apk in apks:
			if apk in history_set:
				print(apk, "has been analyzed. To analyze again, modify " + fn)
				continue
			# -Instrument -v 23 -p apk\ -n CSipSimple.apk -maxPathNumber 10000 -outputBasePath Result_testGen\androlicOutput  -o Result_testGen\ -exlib
			nowTime = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
			print(nowTime)
			command = 'java -jar ' + self.faxJar + ' -time ' + str(self.analyzingTime) +' -Instrument -v ' + self.sdkVersion + ' -p ' + self.appDir + ' -n ' + apk + " -maxPathNumber " + str(
				self.maxPathNum) + ' -outputBasePath ' + self.testGenDir + 'androlicOutput ' + ' -o ' + self.testGenDir + ' -exlib >  ' +  self.outputDir + apk[0:-4] + ".txt 2>&1"
			print(command)
			os.system(command)
			
			print("write apk ", apk)
			f = open(fn, "a")
			f.write(apk + "\n")
			f.close()
			
			if self.install == True:
				print("uninstall apk under test and test apk")
				f_mani = open(self.testGenDir  + "summary_res" + os.sep + apk[:-4] + os.sep+ "AndroidManifest.txt")
				lines = f_mani.readlines()
				for line in lines:
					if "package: " in line:
						uninstallCmd1 = "adb uninstall fax." + line.strip().split("package: ")[1]
						print(uninstallCmd1)
						os.system(uninstallCmd1)
						uninstallCmd2 = "adb uninstall " + line.strip().split("package: ")[1]
						print(uninstallCmd2)
						os.system(uninstallCmd2)
						break  
			
				print("install apk under test and test apk")
				installCmd1 = "adb install -g " + self.testGenDir + "instrument" + os.sep + apk[:-4] + os.sep + apk
				print(installCmd1)
				os.system(installCmd1)

				installCmd2 = "adb install -g " + self.testGenDir + "testcases" + os.sep + apk[:-4] + os.sep + "apkTestCases" + os.sep + "test.apk";
				print(installCmd2)
				os.system(installCmd2)

			


if __name__ == '__main__':
	faxJar = sys.argv[1]
	apkInputDir = sys.argv[2] + os.sep
	testGenDir = sys.argv[3] + os.sep
	executeInfoDir = testGenDir + sys.argv[4] + os.sep
	maxNumberOfPath = sys.argv[5]
	sdkVersion = sys.argv[6]
	install = sys.argv[7]
	analyzingTime = sys.argv[8]
	
	generator = TestGenerator(faxJar, apkInputDir, testGenDir, executeInfoDir, maxNumberOfPath, sdkVersion, install, analyzingTime)
	generator.generateTC()
