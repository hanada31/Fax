# -*- coding: utf-8 -*-
import subprocess
import time
import os,sys
import shutil 
import commands,math
from generateMonkeyScript import *
from utils import *
from graphDistance import optimal_path

class FairAndroidExploer:
	def __init__(self, appName, laResultDir, exResultDir,tgResultDir, instAppFolder, act_type):
		self.appName = appName
		self.laResultDir = laResultDir
		self.exResultDir = exResultDir
		self.tgResultDir = tgResultDir
		self.energyInfoDir = exResultDir+"Energy" +os.sep+appName+os.sep
		self.LogDir = exResultDir+"Logs" +os.sep +appName+os.sep
		self.instAppFolder = instAppFolder
		self.theta = 1000
		self.curTurn = 0
		self.lbound = 0.01
		self.eventNum = 0
		self.time_start = 0
		self.time_end = 0
		self.timeLimit = 3600
		self.initEvent = 5000
		self.crashTcSet =set()
		self.pickSet = set()
		if act_type == "EA":
			self.pickSet = self.getEAs()
		else:
			self.pickSet = self.getActs()
			
		
	def initial(self):
		self.activityDict = self.getActs()
		self.methodNumDict = self.getMethodNum(self.instAppFolder+self.appName+"_ins_info.txt")
		self.pkgName = self.getPkgName()	
		
	
	def getEAs(self):
		eaSet = set()
		eaFile = self.tgResultDir + "summary_res" + os.sep + self.appName+os.sep+self.appName+"_EAList.txt"
		fr = open (eaFile, "r")
		for line in fr.readlines():
			eaSet.add(line.strip())
		fr.readline()
		fr.close()
		return eaSet
	
	def getActs(self):
		actSet = set()
		actFile = self.tgResultDir + "summary_res"+ os.sep + self.appName+os.sep+ self.appName+"_ActivityList.txt"
		fr = open (actFile, "r")
		for line in fr.readlines():
			actSet.add(line.strip())
		fr.close()
		return actSet

	
	def searchCrashTc(self, path):
		if not os.path.exists(path):
			return
		for x in os.listdir(path):
			fp = os.path.join(path, x)	
			if os.path.isfile(fp):
				if x.endswith('.logcat'):
					key = x.replace(".logcat","")
					key = key.replace(x.split('_')[0]+"_","")
					key = key.replace("_dollar_","$")
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
							log2 = ss[-1]+'\n'+line1
							j = i+1
							line = log1lines[j]
							flag=False
							while("E AndroidRuntime: " in line):
								flag = True
								line = line.split("E AndroidRuntime: ")[1]
								if("Permission Denial:" in line):
									print "Permission Denial"
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
					if(len(log2)>0):
						testCaseId = fp.split(os.sep)[-1].split('_')[0]
						self.crashTcSet.add(testCaseId)
		
			elif os.path.isdir(fp):	
				self.searchCrashTc(fp)
	
	def getTestCases(self):
		TCMap = dict()
		iccFile = self.tgResultDir + "testcases"+os.sep +self.appName +os.sep +"testCase.iccmsg"
		f = open(iccFile)
		lines = f.readlines()
		f.close()
		for line in lines:
			ss = line.split("\t")
			id = ss[0]
			act = ss[1]
			tc = ss[2]
			if act not in TCMap:
				TCMap[act] = dict()
			TCMap[act][id] = tc	
		return TCMap
		
	def getLaunchTestCases(self):
			
		self.searchCrashTc(self.laResultDir + "Logs"+os.sep+self.appName)
		TCMap = self.getTestCases()
		launchedTCMap = dict()
		f = open(self.laResultDir + "isLaunched.txt","r")
		lines = f.readlines()
		f.close()
		for line in lines:
			ss = line.split("\t")
			name = ss[0]
			id = ss[1]
			act = ss[3]
			if id in self.crashTcSet:
				continue
			if act in self.pickSet:
				if self.appName == name:
					if act not in launchedTCMap:
						launchedTCMap[act] = dict()
					launchedTCMap[act][id] = TCMap[act][id]
		return launchedTCMap	

	def getPkgName(self):
		packageFile = self.tgResultDir + "summary_res" + os.sep + self.appName + os.sep +"ActivityDeclaredModel.txt"
		fr = open (packageFile, "r")
		fr.readline()
		pkg = fr.readline().split("package_name: ")[-1].strip()	
		fr.close()
		return pkg
			
	# get atg model for app, source and its direct destination 	
	# atg.txt should be updated during testing
	def getATGModel(self, fn):
		atgEdges = dict()
		f = open(fn,"r")
		lines = f.readlines()
		f.close()
		for line in lines:
			ss = line.strip().split(", ")
			source = ss[0]
			des = ss[1].replace("\"", "")
			if source not in atgEdges.keys():
				atgEdges[source] = set()
			atgEdges[source].add(des)
		return atgEdges

	# get all reachable acts, may be direct or indirect
	def getReachableMap(self, fn):
		atgEdges = self.getATGModel(fn)
		self.reachableMap = dict()
		for source in atgEdges.keys():
			reachables = set()
			self.getReachableEdges(atgEdges, source, reachables)
			reachables.remove(source);
			self.reachableMap[source] = reachables
		
	# get all the reachable acts from a source
	def getReachableEdges(self, atgEdges, source, reachables):
		if source not in reachables:
			reachables.add(source);
			if source in atgEdges.keys():
				for des in atgEdges[source]:
					reachables.add(des)
					if des in self.reachableMap:
						reachables.union(self.reachableMap[des])
					else:
						self.getReachableEdges(atgEdges, des, reachables)
	
	def getMethodNum(self,fn):
		methodNumDict = dict()
		lines = readFromFile(fn)
		for line in lines:
				line = line.split(";--->")[0].split("$")[0][1:]
				line = line.replace("/",".")
				if line not in methodNumDict.keys():
					methodNumDict[line] = 0
				methodNumDict[line] +=1
		return methodNumDict
	
	def getLaunched(self, fn):
		launchSet = set()
		lines = readFromFile(fn)
		for line in lines:
			line = line.strip()
			launchSet.add(line)
		return launchSet

	def getSubviewMap(self, fn):
		lines = readFromFile(fn)
		#subviewMap[s][d]
		subviewMap = dict()
		actNumMap = dict()
		for line in lines:
			line = line.strip().replace("\"","")
			ss = line.split(", ")
			if ss[0] not in actNumMap:
				length = len(actNumMap)
				actNumMap[ss[0]] = length
				subviewMap[str(length)] = list()
			if ss[1] not in actNumMap:
				length = len(actNumMap)
				actNumMap[ss[1]] = length
				subviewMap[str(length)] = list()
		for line in lines:
			line = line.strip().replace("\"","")
			ss = line.split(", ")
			source = str(actNumMap[ss[0]])
			des = actNumMap[ss[1]]
			subviewMap[source].append(des)
		return subviewMap,actNumMap
		
	def getEnergy(self, subviewMap, actNumMap, energyFn, eventNum):
		energy = dict()
		priority = dict()
		eventDict = dict()
		#every one can launch itself 
		
		for act in self.faxEx_launchSet:
			if act not in self.pickSet:
				continue
			if act not in self.reachableMap.keys():
				self.reachableMap[act] = set()
			self.reachableMap[act].add(act)
			# get the sum of method in the subview of act
			energy[act]  = 0
			for dest in self.reachableMap[act]:
				if dest in self.methodNumDict:
					energy[act] += self.methodNumDict[dest]
					#print 1,act, dest, self.methodNumDict[dest]
			#for each dest in atg subview
			for dest in self.reachableMap[act]:
				if dest not in self.faxEx_launchSet:
					g = optimal_path(subviewMap)
					res = g.bfs(actNumMap[act], actNumMap[dest])
					energy[act] += self.theta/res
					#print 2,act, dest,(self.theta/res)
		sum = 0
		fw = open(energyFn,"w")
		for act in energy.keys():
			sum +=  energy[act]
		for act in  energy.keys():
			priority[act] = 1.0 * energy[act]/sum
			#print "energy", act, energy[act]
			#fw.write("energy\t"+ act+" \t" + str(energy[act]) +"\n")
			#print "priority", act, priority[act] 
			#fw.write("priority\t"+ act+"\t"+str(priority[act] )+"\n")
			eventDict[act] = priority[act]*eventNum
			#print "eventNum", act,  event[act] 
			fw.write("event\t"+ act+"\t"+str(eventDict[act] )+"\n")
		fw.close()
		return eventDict
	
	

	def generateLaunchTxt(self, turnFD):
		f = open(self.laResultDir + "compareActivity.txt")
		lines = f.readlines()
		f.close()

		fw = open(turnFD +self.appName + "_launch.txt", "w")
		history = set()
		for line in lines:
			if "\t" not in line:
				continue
			ss = line.split("\t")
			app = ss[0]
			state = ss[5].strip()
			act = ss[3]
			if app == self.appName:
				if state == "yes":
					if act  not in history and act in self.pickSet:
						fw.write(act+"\n")
					history.add(act)
		fw.close()

	def prepareDataforTurn0(self, mSet):	
		energyTurn0= self.energyInfoDir + "turn_0"+os.sep
		if  not os.path.exists(energyTurn0):
			os.makedirs(energyTurn0)
		source = self.tgResultDir + "summary_res"+os.sep + self.appName +os.sep+ "atg.txt"
		target = energyTurn0 + self.appName+"_atg.txt"
		shutil.copy(source, target)
		self.generateLaunchTxt(energyTurn0)
		
		#log files
		source= self.laResultDir+"Logs" +os.sep +appName+os.sep+ "turn_0"
		target= self.LogDir + "turn_0"
		if not os.path.exists(target):
			os.makedirs(target)
		for f in os.listdir(source):
			end = f.split(".")[-1]
			start = f.split("_")[0]
			act = f.replace("."+end,"").replace(start+"_","")
			if act in mSet:
				shutil.copy(os.path.join(source, f), target)
	
	def timeCheck(self):
		self.time_end = time.time()
		if(self.time_end-self.time_start > self.timeLimit):
			return True
		else:
			print "running time", self.time_end-self.time_start
		return False
		
	def explore(self, turnFD, turnId):
		currentlogDir = self.LogDir+"turn_"+str(turnId)
		if not os.path.exists(currentlogDir):
			os.makedirs(currentlogDir)
			
		launchedTCMap = self.getLaunchTestCases()	
		for act in launchedTCMap.keys():
			tcList = launchedTCMap[act].items()
			TClen = len(tcList)
			logcatInfo= currentlogDir+"/" + act+ ".logcat"
			cmdInfo= currentlogDir+"/" + act+".cmdinfo"
				
			if not os.path.exists(logcatInfo) and TClen>0:
				try:
					eventVal = self.eventDict[act]
					if self.curTurn >1 and eventVal < self.eventNum * self.lbound:
						print "skip",act, eventVal, "<", self.lbound * self.eventNum
						continue
					if self.curTurn == 1:
						eventVal = max(50, eventVal)
					if self.timeCheck():
						return
					
					# tcPair = list()
					# for index in range(5):
						# tcPair = tcList[random.randint(0,TClen-1)]
						# if "Parcelable" not in  tcPair[1] and "Serializable" not in tcPair[1] :
							# break
					tcPair = tcList[0]		
					print "tcNum", TClen, "id", tcPair[0]
					targetAct= "fax."+self.pkgName +"/.Activity_"+ str(tcPair[0])
					
					start = 'start /min "logcat" CMD /c call script/log.bat '+logcatInfo
					executeCmd(start)
					generate( turnFD +"monkey.script" , int(math.ceil(eventVal)) , "fax."+self.pkgName, "fax."+self.pkgName+".Activity_"+ str(tcPair[0]) )
					
					executeCmd("adb start-server")
					executeCmd("adb shell rm /sdcard/monkey.script")
					executeCmd("adb push "+turnFD +"monkey.script /sdcard/monkey.script")
					time.sleep(1)					
					executeCmd("adb shell am start -n "+ targetAct+" >> "+cmdInfo)
					time.sleep(2)
					
					if self.compareActivity(act, self.appName, self.pkgName) == True:
						os.system("adb shell monkey -p " + self.pkgName+ 
						" -f /sdcard/monkey.script 1 --throttle 100  --ignore-crashes --ignore-security-exceptions >> "+ self.exResultDir+"monkey.txt")
					
					executeCmd("adb shell am force-stop fax." +self.pkgName)
					executeCmd("adb shell am force-stop " +self.pkgName)
					executeCmd("adb kill-server ")
					
					#executeCmd("adb shell pm clear fax." +self.pkgName)
					#executeCmd("adb shell pm clear " +self.pkgName)
				except TimeoutError, e:
					print repr(e) 
	
	def searchLogcat(self, path,launchedChain):
		if not os.path.exists(path):
			print "log folder not exist!"
		else:
			for x in os.listdir(path):
				fp = os.path.join(path, x)
				if os.path.isfile(fp):
					if x.endswith(".logcat"):
						prefix = x.split(".logcat")[0]
						ss = prefix.split("_")
						act = prefix.replace(ss[0]+"_","")
						if act not in launchedChain.keys():
							launchedChain[act] = list()
						flag = False
						with open(fp, 'r') as fc:
							for line in fc.readlines():
								if flag == True and "Launcher: onWindowVisibilityChanged : true" in line :
									break
								if "D M_InsDal: " in line:
									flag = True
									destAct = line.split("D M_InsDal: ")[1]
									destAct = destAct.split(";--->")[0].split("$")[0][1:]
									destAct = destAct.replace("/",".")
									if(len(launchedChain[act]) >0 and destAct == launchedChain[act][-1]):
										continue
									if destAct in self.activityDict:
										launchedChain[act].append(destAct)
				elif os.path.isdir(fp):
					self.searchLogcat(fp, launchedChain)
			
	def getLaunchedChain(self, folder):
		launchedChain = dict()
		self.searchLogcat(folder, launchedChain)
		return launchedChain
		
	def storeInfo(self, turnFDLast, turnFD)	:
		fn_atg = turnFD+self.appName+"_atg.txt"
		atglines = set() # only for the first running
		
		if self.curTurn >1:
			atglines = set(readFromFile(turnFDLast +self.appName+"_atg.txt"))
		
		fn_launch = turnFD+self.appName+"_launch.txt"
		launchlines = readFromFile(turnFDLast +self.appName+"_launch.txt")	
		launchlines = set(launchlines)
		#launchlines = set()
		
		logcats = turnFD.replace(self.energyInfoDir, self.LogDir)
		launchedChain = self.getLaunchedChain(logcats)

		for x in launchedChain.keys():
			for i in range(len(launchedChain[x])):
				#transition = launchedChain[x][i]+", "+"\"" +launchedChain[x][i+1]+"\"\n" 
				transition = x+", "+"\"" +launchedChain[x][i]+"\"\n"
				if transition not in atglines:
					atglines.add(transition)
			for ele in launchedChain[x]:
				launchlines.add(ele+"\n")
		write2File(fn_atg, list(atglines))
		write2File(fn_launch, list(launchlines))
		
	def compareActivity(self, testActName, fn, package):		
		result = os.popen('adb shell dumpsys activity | findstr \"mResume\" ')  
		res = result.read() 	
		str = ""
		if res == None or len(res)==0:
			str = fn + "\t"+ package + "\t"+testActName +"\t"+ "no return value" +"\t"
			#print "!!!" +str+ "no\n"
			return False
		else:
			flag = False
			for line in res.splitlines():
			
				current = line.split(" ")[7].split("/")[1]
				if current.startswith("."):
					current = line.split(" ")[7].split("/")[0] + current
				str += fn + "\t"+ package + "\t"+testActName +"\t"+ current +"\t"	
				if current.startswith(package) or "GrantPermissionsActivity permission" in current:
					flag =  True
			if flag ==True:
				print  str+ "yes\n"
				return True
			else:
				print "!!!" +str + "no\n"
				return False
	
	#main function
	def main(self):
		self.initial()
		print self.appName, self.pkgName
		
		self.time_start=time.time() # begin time 
		# prepare files for explore_turn_0
		self.prepareDataforTurn0(self.pickSet)
		self.faxLa_launchSet = self.getLaunched(self.energyInfoDir + "turn_" +str(self.curTurn)+os.sep+self.appName+"_launch.txt")
		
		while(True):
			self.curTurn += 1
			#if self.curTurn ==3:
				#return
			energyFolderCurTurn= self.energyInfoDir + "turn_"+str(self.curTurn)+os.sep
			energyFolderLastTurn = self.energyInfoDir + "turn_"+str(self.curTurn-1)+os.sep
			energyFolderFirstTurn = self.energyInfoDir + "turn_0"+os.sep
			print time.strftime('%H:%M:%S',time.localtime(time.time())), energyFolderLastTurn

			#update atg.txt, update every turn
			reachableMap = self.getReachableMap(energyFolderLastTurn+self.appName+"_atg.txt")
			self.faxEx_launchSet = self.getLaunched(energyFolderLastTurn+self.appName+"_launch.txt")		
			subviewMap,actNumMap = self.getSubviewMap(energyFolderFirstTurn+self.appName+"_atg.txt")
			# calculate energy for each act
			energyFn = energyFolderLastTurn+self.appName+"_enengy.txt"
			self.eventNum =self.initEvent*self.curTurn
			#eventNum =10000
			self.eventDict = self.getEnergy(subviewMap, actNumMap, energyFn, self.eventNum)
			if  not os.path.exists(energyFolderCurTurn):
				os.makedirs(energyFolderCurTurn)
			
			self.explore(energyFolderCurTurn, self.curTurn) 
			self.storeInfo(energyFolderLastTurn, energyFolderCurTurn)
			
			if self.timeCheck():
				break
		print "stop test app " +self.appName
		time.sleep(3) 



if  __name__ == '__main__':
	launch_dir = sys.argv[1]+os.sep
	explore_dir = sys.argv[2]+os.sep
	testcase_dir = sys.argv[3]+os.sep
	apk_output_dir = sys.argv[4]+os.sep
	act_type = sys.argv[5]
	tcFolder = testcase_dir + "testcases"+os.sep
	for appName in os.listdir(tcFolder):
		fax = FairAndroidExploer(appName, launch_dir, explore_dir,testcase_dir, apk_output_dir, act_type)
		if not os.path.exists(fax.LogDir):
			fax.main()
		#break
	
	

