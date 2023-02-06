import os, os.path
import sys
 
class BugDetector:

	def __init__(self, testcase_dir, log_dir):
		self.testcase_dir = testcase_dir
		self.log_dir = log_dir
		
	def search(self, path, logDict, iccDict, mySet, pkgName):
		num = 0
		if not os.path.exists(path):
			return 0
		
		for x in os.listdir(path):
			fp = os.path.join(path, x)	
			if os.path.isfile(fp):
				if x.endswith('.logcat'):
					key = x.replace(".logcat","")
					key = key.replace(x.split('_')[0]+"_","")
					key = key.replace("_dollar_","$")
					if not key in mySet:
						continue
					num +=1
					#read original log
					fc = open(fp, 'r')
					log1lines = fc.readlines()
					fc.close()
					#write new logs
					i = 0
					log2=""
					ss = path.split(os.sep)
					for i in range(len(log1lines)):
						line1 = log1lines[i]
						if "--------- beginning of crash" in line1:
							#log2 = ss[-1]+'\n'+line1
							log2 = ""
							j = i+1
							if(j==len(log1lines)):
									break
							line = log1lines[j]
							flag=False
							while("AndroidRuntime: " in line):
								flag = True
								line = line.split("AndroidRuntime: ")[1]
								if("Permission Denial:" in line):
									#print "Permission Denial"
									log2=""
									break
								if("PID" not in line):
									log2 += line
								j=j+1
								if(j==len(log1lines)):
									break
								line = log1lines[j]
							i = j
						else:
							i = i+1
					#if "Parcelable encountered ClassNotFoundException" in log2 or "ClassNotFoundException when unmarshalling" in log2:
						#continue
					if(len(log2)>0):
						if log2 not in logDict.keys():
							logDict[log2] = set()
						testCaseId = fp.split(os.sep)[-1].split('_')[0]
						if testCaseId in iccDict:
							iccmsg = iccDict[testCaseId]
							logDict[log2].add(iccmsg)
		
			elif os.path.isdir(fp):	
				num += self.search(fp, logDict, iccDict, mySet, pkgName)
		return num

					
	def writeLogDict(self,fn, folder,  logDict, id):
		fp  = folder+fn+"_crash_"+id+".txt"
		fw = open(fp, 'w') 
		for ele in logDict.keys():
			fw.write("BugInfo:\n")
			fw.write("hash:"+str(hash(ele))+"\n")
			fw.write(ele)
			fw.write("\nICC Msgs:\n")
			mset = logDict[ele]
			for icc in mset:
				fw.write(icc+"\n")
			fw.write('------------------------------------------------------------------------\n\n')
		fw.close()	

	def writeHash(self,fn, folder, logDictUse, logDictAll):
		fp  = folder+fn+"_hash.txt"
		fw = open(fp, 'w') 
		
		fw.write("All:\n")
		for ele in logDictAll.keys():
			fw.write("hash:"+str(hash(ele))+"\n")
		fw.close()	
		
			
	def getIccDict(self,folder):
		iccDict=  dict()
		f = open(folder+os.sep+"testCase.iccmsg","r")
		lines = f.readlines()
		f.close()
		for line in lines:
			ss = line.strip().split("\t")
			iccDict[ss[0]] = line
		return iccDict
		
	def getEAs(self,fn):
		eaSet = set()
		eaFile = self.testcase_dir + "summary_res"+os.sep + fn+os.sep+fn+"_EAList.txt"
		fr = open (eaFile, "r")
		for line in fr.readlines():
			eaSet.add(line.strip())
		fr.close()
		return eaSet

	def getActs(self,fn):
		actSet = set()
		actFile = self.testcase_dir + "summary_res"+os.sep + fn+os.sep+fn+"_ActivityList.txt"
		fr = open (actFile, "r")
		for line in fr.readlines():
			actSet.add(line.strip())
		fr.close()
		return actSet

	def getPkg(self,fn):
		packageFile = self.testcase_dir + "summary_res"+os.sep + fn+os.sep+"ActivityDeclaredModel.txt"
		fr = open (packageFile, "r")
		fr.readline()
		pkgName = fr.readline().split("package_name: ")[-1].strip()
		fr.close()
		return  pkgName
	
	def detect(self):
		eaTcNum= 0
		allTcNum = 0
		allBugNum =0
		eaBugNum = 0
		
		tcFolder = self.testcase_dir + "testcases"+os.sep
		logFolder = self.log_dir + "Logs"+os.sep
		crashFolder = self.log_dir + "Crashes"+os.sep
		
		if not os.path.exists(crashFolder):
			os.mkdir(crashFolder)
		summaryFile  = crashFolder+"_summary.txt"
		fw = open(summaryFile, 'w') 
		for fn in os.listdir(tcFolder):
			tcFolder_fn = os.path.join(tcFolder,fn)
			print tcFolder_fn
			if os.path.isdir(tcFolder_fn):
				pkgName = self.getPkg(fn)
				iccDict = self.getIccDict(tcFolder_fn)
				eaSet = self.getEAs(fn)
				actSet = self.getActs(fn)
				
				logFolder_fn = os.path.join(logFolder,fn)
				
				allLogDict = dict()
				allTcNum += self.search(logFolder_fn, allLogDict, iccDict, actSet, pkgName)
				self.writeLogDict(fn, crashFolder, allLogDict, "All")
				allBugNum += len(allLogDict)	
				
				eaLogDict = dict()
				eaTcNum += self.search(logFolder_fn, eaLogDict, iccDict, eaSet, pkgName)
				self.writeLogDict(fn, crashFolder, eaLogDict, "EA")
				eaBugNum += len(eaLogDict)	
				print fn, len(allLogDict)," bugs by ",str(allBugNum) ," tcs"
				fw.write(fn + "\t"+str(len(allLogDict))+"\tbugs by "+str(allBugNum) +"\ttcs"+"\n")
				
				print fn, len(eaLogDict)," bugs by ",str(eaBugNum) ," tcs"
				fw.write(fn + "\t"+str(len(eaLogDict))+"\tbugs by "+str(eaBugNum) +"\tEA tcs"+"\n")
		
		print "All Test Case Num:" , allTcNum, "Bug Num:", allBugNum
		fw.write("\nAll Test Case Num:"+str(allTcNum)+"\n")
		fw.write("All Bug Num:"+str(allBugNum)+"\n")
		
		print "EA Test Case Num:" , eaTcNum, "Bug Num:", eaBugNum
		fw.write("\nEA Test Case Num:"+str(eaTcNum)+"\n")
		fw.write("EA Bug Num:"+str(eaBugNum)+"\n")
		
		print "IA Test Case Num:" , allTcNum-eaTcNum, "Bug Num:", allBugNum-eaBugNum
		fw.write("\nIA Test Case Num:"+str(allTcNum-eaTcNum)+"\n")
		fw.write("IA Bug Num:"+str(allBugNum-eaBugNum)+"\n")
		
		fw.close()	

if __name__ == '__main__':
	testcase_dir = sys.argv[1]+os.sep
	log_dir = sys.argv[2]+os.sep
	det = BugDetector(testcase_dir,log_dir)
	det.detect()