import os, os.path
import sys
import time
import shutil 
from CalculateCoverage import *

class InfoCollector:
	def __init__(self, laResultFolder,resultFolder,instAppFolder):
		self.laResultFolder = laResultFolder
		self.resultFolder = resultFolder
		self.instAppFolder = instAppFolder
		
		
	def search(self,path, logDict,fn):
		if not os.path.exists(path):
			return
		for x in os.listdir(path):
			fp = os.path.join(path, x)		
			if os.path.isfile(fp):
				if fp.endswith('.logcat'):
					#read original log
					self.handleFile(fp, fn, logDict)
			elif os.path.isdir(fp):	
				self.search(fp, logDict,fn)
	
	def handleFile(self, fp, fn, logDict):
		if fp.endswith('.logcat'):
			#read original log
			fc = open(fp, 'r')
			log1lines = fc.readlines()
			fc.close()
			for line in log1lines:
				if fn not in logDict.keys():
					logDict[fn] = set()
				if "D M_InsDal" in line:	
					logDict[fn].add(line)
					
	def writeLogDict(self,fn, logDict):
		fp  = fn+"_log.txt"
		fw = open(fp, 'w') 
		for ele in logDict.keys():
			fw.write("app: "+ele+"\n")
			fw.write("lines:\n")
			mset = logDict[ele]
			for icc in mset:
				fw.write(icc+"\n")
			fw.write('------------------------------------------------------------------------\n\n')
		fw.close()	

	def calculate(self,coverageFolder, instAppFolder, laResultFolder):
		for log in os.listdir(coverageFolder):
			if "_log.txt" in log:
				appName = log.split("_log.txt")[0]
				methodFile = instAppFolder+appName+"_ins_info.txt"
				activityFile = laResultFolder + "summary_res"+ os.sep + appName+os.sep+ appName+"_ActivityList.txt"
				if os.path.exists(methodFile) and os.path.exists(activityFile):
					logFile = coverageFolder+os.sep+log
					coverageFile = logFile.replace("_log.txt", "_coverage.txt")
					calCov = CalculateCoverage(appName,logFile,activityFile, methodFile, coverageFile)
					calCov.getCoverage()

	def main(self):
		
		logFolder = self.resultFolder + "Logs"+ os.sep
		resFolder = self.resultFolder + "Coverage"+ os.sep
		
		if not os.path.exists(resFolder):
			os.mkdir(resFolder)
			
		for fn in os.listdir(logFolder):
			logDict = dict()
			if os.path.isdir(logFolder+fn):
				self.search(logFolder+fn, logDict,fn)
				self.writeLogDict(resFolder+fn, logDict)

			
		print "\t#pkg_cov \t #pkg \t %pkg \t #act_cov \t #act \t %act \t #cls_cov \t #cls \t %cls \t #mtd_cov \t #mtd \t %mtd"
		self.calculate(resFolder, self.instAppFolder, self.laResultFolder) 
						
if __name__ == '__main__':
	testcase_dir = sys.argv[1]+ os.sep
	explore_dir = sys.argv[2]+ os.sep
	apk_output_dir = sys.argv[3]+ os.sep
	
	collector = InfoCollector(testcase_dir,explore_dir,apk_output_dir)
	collector.main()

