import os, os.path
import sys
import time
import shutil 
from CalculateCoverage import *

class InfoCollector:
	def __init__(self,resultFolder,runResultFolder):
		self.resultFolder = resultFolder
		self.runResultFolder = runResultFolder

		
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
				if "I FAX_Ins : " in line:
					logDict[fn].add(line.strip().split("I FAX_Ins : ")[1])

	def writeLogDict(self,fn, logDict):
		fp  = fn+"_log.txt"
		fw = open(fp, 'w') 
		for ele in logDict.keys():
			mset = logDict[ele]
			for icc in mset:
				fw.write(icc+"\n")
		fw.close()

	def calculate(self,coverageFolder):
		for log in os.listdir(coverageFolder):
			if "_log.txt" in log:
				appName = log.split("_log.txt")[0]
				methodFile = self.resultFolder+ "instrument" +os.sep +appName + os.sep+ "instruMethods.txt"
				activityFile = self.resultFolder + "summary_res"+ os.sep + appName+os.sep+ appName+"_ActivityList.txt"
				if os.path.exists(methodFile) and os.path.exists(activityFile):
					logFile = coverageFolder+os.sep+log
					coverageFile = logFile.replace("_log.txt", "_coverage.txt")
					print coverageFile
					calCov = CalculateCoverage(appName,logFile,activityFile, methodFile, coverageFile)
					calCov = CalculateCoverage(appName,logFile,activityFile, methodFile, coverageFile)
					calCov.getCoverage()

	def main(self):
		
		logFolder = self.runResultFolder + "Logs"+ os.sep
		resFolder = self.runResultFolder + "Coverage"+ os.sep
		
		if not os.path.exists(resFolder):
			os.makedirs(resFolder)
			
		for fn in os.listdir(logFolder):
			logDict = dict()
			if os.path.isdir(logFolder+fn):
				self.search(logFolder+fn, logDict,fn)
				self.writeLogDict(resFolder+fn, logDict)

			
		print "\t#pkg_cov \t #pkg \t %pkg \t #act_cov \t #act \t %act \t #cls_cov \t #cls \t %cls \t #mtd_cov \t #mtd \t %mtd"
		self.calculate(resFolder)
						
if __name__ == '__main__':
	testcase_dir = sys.argv[1]+ os.sep
	explore_dir = sys.argv[2]+ os.sep
	apk_output_dir = sys.argv[3]+ os.sep
	
	collector = InfoCollector(testcase_dir,explore_dir,apk_output_dir)
	collector.main()

