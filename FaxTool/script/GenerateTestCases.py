#/usr/bin/python
#coding=utf-8

import os
import sys
import time
import datetime

class TestGenerator:

	def __init__(self, faxJar, appDir, testGenDir, outputDir, maxPathNum):
		self.faxJar = faxJar
		self.appDir = appDir
		self.testGenDir = testGenDir
		self.outputDir = outputDir
		self.maxPathNum = maxPathNum
		
	def getSet(self,fn, aset):
		if not os.path.exists(fn):		
			f = open(fn, "w")
			f.close()
			
		#get apks
		f = open(fn, "r")
		lines = f.readlines()
		f.close()
		
		#add into set
		for x in lines:
			aset.add(x.strip())	
	
	def generateTC(self):
		if not os.path.exists(self.testGenDir):
			os.makedirs(self.testGenDir)
		if not os.path.exists(self.outputDir):
			os.makedirs(self.outputDir)	
		print self.appDir
		
		fn = self.testGenDir +"history.txt"	
		history_set = set()	
		self.getSet(fn,history_set)
		
		#for each app
		apks = os.listdir(self.appDir)
		for apk in apks :
			if '.apk' in apk and '_ins.apk' not in apk:
				if apk in history_set:
					print apk , "has been analyzed. To analyze again, modify "+fn
					continue
				
				nowTime=datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
				print nowTime
				command = 'java -jar '+self.faxJar+' -p '+self.appDir+ ' -n ' +apk + " -maxPathNumber "  + str(self.maxPathNum) + ' -outputBasePath '+  self.testGenDir +'androlicOutput ' +' -o ' +self.testGenDir +' -exlib ' #>  ' +  self.outputDir + apk[0:-4] + ".txt 2>&1" 	
				print command +"\n"
				os.system(command)
	
				
				print "write apk ",apk
				f = open(fn, "a")
				f.write(apk+"\n")
				f.close()
				
				
if __name__ == '__main__' :
	faxJar = sys.argv[1]
	apk_input_dir = sys.argv[2] + os.sep
	testcase_dir = sys.argv[3]+ os.sep
	execute_info_dir = testcase_dir +sys.argv[4]+ os.sep
	max_number_of_path = sys.argv[5]
	
	generator = TestGenerator(faxJar, apk_input_dir, testcase_dir, execute_info_dir, max_number_of_path)
	generator.generateTC()

	
