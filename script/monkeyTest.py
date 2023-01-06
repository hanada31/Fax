#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
import os.path
import os,sys
import time
from generateMonkeyScript import *
import shutil 

def getPkgName(laResultDir, appName):
	packageFile = laResultDir + "summary_res" + os.sep + appName + os.sep +"ActivityDeclaredModel.txt"
	fr = open (packageFile, "r")
	fr.readline()
	pkg = fr.readline().split("package_name: ")[-1].strip()	
	fr.close()
	return pkg
		
if __name__ == '__main__' :
	laResultDir = "Result_launch"+os.sep
	appDir = "apk"+os.sep
	for appName in os.listdir(appDir):
		appName = appName[:-4]
		
		package = getPkgName(laResultDir, appName)
		file =  "MonkeyLogs"+os.sep + "Logs" +os.sep + appName + os.sep +appName+'_coverage.logcat'
		if not os.path.exists("MonkeyLogs"+os.sep + "Logs"+os.sep + appName):
			os.makedirs("MonkeyLogs"+os.sep + "Logs"+os.sep + appName)
		if(not os.path.exists(file)): 
			start = 'start /min "logcat" CMD /c call script/log.bat '+file
			print start
			os.system(start)
			#3600-1h,   60-1min
			# once execution 5 min
			monkey = "adb shell monkey -p "+package+" --throttle 100 -v-v-v 50000 --ignore-crashes --ignore-security-exceptions "
			print monkey	
			time_start=time.time()
			while(True):
				os.system("adb start-server ")
				# time.sleep(2)
				time_end=time.time()
				print time_end-time_start 
				if(time_end-time_start > 3600):
					break
				os.system(monkey)
				os.system("adb shell am force-stop " + package)
				time.sleep(1) 
			print "stop monkey"
			os.system("adb kill-server")
			os.system("adb start-server")
					
		