# -*- coding: utf-8 -*-
import subprocess
import time
import os, sys
import shutil 
import commands
import threading
from utils import *

	
lock = threading.RLock()

class ActivityLauncher:

	def __init__(self, testcase_dir, result_dir):
		self.testcase_dir = testcase_dir
		self.result_dir = result_dir
		
	def launchAct(self):
		tcFolder = self.testcase_dir+"testcases"+os.sep
		for fn in os.listdir(tcFolder):
			folder = os.path.join(tcFolder,fn)
			if os.path.isdir(folder):
				packageFile = self.testcase_dir + "summary_res"+os.sep + fn+os.sep+"ActivityDeclaredModel.txt"
				fr = open (packageFile, "r")
				fr.readline()
				pkgName = fr.readline().split("package_name: ")[-1].strip()
				fr.close()
				#executeCmd("adb uninstall " + pkgName+"")
				print pkgName
				self.testAPK( folder , pkgName, fn)
				
				
	def testAPK(self, fileFolder, package, fn):
		if not os.path.exists(fileFolder):
			return
		appFile = fileFolder+os.sep+"apkTestCases"+os.sep+"test.apk"
		iccFile = fileFolder+os.sep+ "testCase.iccmsg"
		logDir = self.result_dir+ "Logs"+os.sep+fn+os.sep+"turn_0"+os.sep
		if not os.path.exists(logDir):
			os.makedirs(logDir)
		
		result = os.popen("adb shell pm list packages")
		f = result.readlines()
		
		if "package:fax."+package+"\n" not in f:
			print package,"not install"
			executeCmd("adb install "+appFile)
			time.sleep(5)
			executeCmd("adb shell input keyevent 4")
			time.sleep(1)
			executeCmd("adb shell input keyevent 4")
			
		f = open(iccFile)
		lines = f.readlines()
		f.close()
		
		id = 0
		for line in lines:
			id += 1
			logcatInfo= logDir+"/"+str(id)+"_"+line.split("\t")[1]+ ".logcat"
			cmdInfo= logDir+"/"+str(id)+"_"+line.split("\t")[1]+".cmdinfo"
			if not os.path.exists(logcatInfo ):
				try:
					executeCmd("adb logcat -c")
					executeCmd("adb shell am start -n fax."+package +"/.Activity_"+ str(id)+" >> "+cmdInfo,5)
					#takePicture(fn, 1,logDir)
					time.sleep(1)
					self.compareActivity(line.split("\t")[1], fn + "\t" +str(id), package)
					time.sleep(1)
					#executeCmd("adb shell monkey -p "+package+" -f /sdcard/monkey.script  10")
					executeCmd("adb logcat -s M_InsDal:D -s AndroidRuntime:E >> "+logcatInfo ,10)
					executeCmd("adb shell am force-stop " +package)
					#executeCmd("adb shell pm clear " +package)
					executeCmd("adb shell am force-stop fax." +package)
					#executeCmd("adb shell pm clear fax." +package)
					executeCmd("adb kill-server ")
					executeCmd("adb start-server")
					time.sleep(1)
				except TimeoutError, e:
					print repr(e) 

		
								
	def compareActivity(self, testActName, fn, package):
        #adb shell dumpsys activity | findstr "mFocus", if your android system version < 8.1
		result = os.popen('adb shell dumpsys activity | findstr \"mResume\" ')  
		res = result.read() 	
		str = ""
		for line in res.splitlines(): 
			current = line.split(" ")[7].split("/")[1]
			if current.startswith("."):
				current = line.split(" ")[7].split("/")[0] + current
			str += fn + "\t"+ package + "\t"+testActName +"\t"+ current +"\t"
			if current.startswith(package): 
				str +=  "yes\n"
			else:
				str += "no\n"
		if len(res)==0:
			str = fn + "\t"+ package + "\t"+testActName +"\t"+ "no return value" +"\t"
		print "!!!" + str
		lock.acquire()
		fca = open(self.result_dir+"compareActivity.txt","a+")
		fca.write(str)
		fca.close()								
		lock.release()

	def getEAs(self, fn):
		eaSet = set()
		eaFile = self.testcase_dir + "summary_res"+os.sep + fn+os.sep+fn+"_EAList.txt"
		fr = open (eaFile, "r")
		for line in fr.readlines():
			eaSet.add(line.strip())
		fr.readline()
		return eaSet

	def takePicture(self, name, id,logDir):
		id = str(id)
		executeCmd("adb shell screencap -p /sdcard/screen"+id+".png",10)
		executeCmd("adb pull /sdcard/screen"+id+".png "+ logDir+"/"+name+"_"+id+".png" )
		time.sleep(1)
			
	def getLaunchedAct(self):
		f = open(self.result_dir + "compareActivity.txt")
		lines = f.readlines()
		f.close()

		fw1 = open(self.result_dir + "isLaunched.txt", "w")
		fw2 = open(self.result_dir + "successACT.txt", "w")
		history = set()
		for line in lines:
			if "\t" in line:
				ss = line.split("\t")
				res = ss[5].strip()
				if res == "yes":
					eaSet = self.getEAs(ss[0])
					if ss[3] in eaSet:
						fw1.write(ss[0] + "\t" + ss[1] + "\t"+ ss[2] + "\t"+ ss[3]+"\tEA\n")
						if  ss[3] not in history:
							fw2.write(ss[0] + "\t" +ss[2] + "\t" + ss[3]+"\tEA\n") 
					else:
						fw1.write(ss[0] + "\t" + ss[1] + "\t"+ ss[2] + "\t"+ ss[3] +"\tIA\n")
						if ss[3]  not in history:
							fw2.write(ss[0] + "\t" +ss[2] + "\t" + ss[3]+"\tIA\n")
					history.add(ss[3])
				
		fw1.close()
		fw2.close()

		
#main function
if  __name__ == '__main__':
	testcase_dir = sys.argv[1]+os.sep
	launch_dir = sys.argv[2] +os.sep
	launcher = ActivityLauncher(testcase_dir, launch_dir)
	launcher.launchAct()
	launcher.getLaunchedAct()
	
	