##This class takes an apk path and name as input and change permission of it
#
# @author yjw@iscas
# @version 0.1
# @date Sep, 7th, 2015
from __future__ import division
import os,sys
import shutil

## cmd command
## %1 self.__folder
## %2 self.__filename
class CalculateCoverage:
	## the constructor.	  
	def __init__(self,apkName,logFile, activityFile, methodFile, coverageFile) :
		## apk path
		self.__apkName= apkName
		## apk file name
		self.printRes=""
		self.activityDict = {}
		self.activityNum=0
		self.activityCovNum=0
		self.pkgDict = {}
		self.pkgNum=0
		self.pkgCovNum=0
		self.methodDict ={}
		self.methodNum=0
		self.methodCovNum=0
		self.classDict ={}
		self.classNum=0
		self.classCovNum=0
		self.resourceDict={}
		self.activityFile = activityFile
		self.methodFile = methodFile
		self.logFile = logFile
		self.coverageFile = coverageFile
		self.html = coverageFile.replace(".txt",".html")
		self.pkgfile = coverageFile.replace(".txt",".pkg")
		self.acfile = coverageFile.replace(".txt",".act")
		self.clsfile = coverageFile.replace(".txt",".cls")
		self.metfile = coverageFile.replace(".txt",".met")
		self.coverDict={}
		self.pkgCovHtml={}
		self.clsCovHtml={}
		self.totalPkgCoverage=''
		self.totalActivityCoverage=''
		self.totalClsCoverage=''
		self.totalMethodCoverage=''
		
	def getMonkeyCoverage(self):
		self.getMethodList()
		#self.printMethodList()
		self.calMethodCoverage()
		
		self.getClassList()
		#self.printClassList()
		self.calClassCoverage()

		
	def getCoverage(self):
		self.printRes = self.__apkName+" "
		oldprint = sys.stdout
		sys.stdout = open( self.coverageFile, 'w')
		
		self.getPkgList()
		self.calPkgCoverage()
		#self.printPkgList()
		
		self.getActivityList()
		self.calActivityCoverage()
		# self.printActList()
		
		self.getClassList()
		self.calClassCoverage()
		#self.printClassList()
		
		self.getMethodList()
		self.calMethodCoverage()
		#self.printMethodList()
		
		#print self.coverDict
		
		self.calCoverageByPkg()
		self.calCoverageByCls()
		sys.stdout = oldprint
		self.writeHtml()
		print self.printRes
		
	def writeHtml(self):
		fw = open(self.html,'w')
		fw.write( '<html><body>')
		fw.write('<h1> Coverage Report of App <b>' + self.__apkName+'</b></h1>')
		
		fw.write('<b> <font color="#333333">'+ self.totalPkgCoverage +'</br>' )
		fw.write(self.totalActivityCoverage +' </br>' )
		fw.write(self.totalClsCoverage +' </br>' )
		fw.write(self.totalMethodCoverage +'</b> </font></br>' )
		
		fw.write('<hr style="height:10px;border:none;border-top:10px groove skyblue;" />')
		for activity in self.activityDict.keys():
			if self.activityDict[activity]>0:
				fw.write('<font color="green"> activity name: ' + activity+'</font> </br>')
			else:
				fw.write(' <font color="red"> activity name: ' + activity+'</font></br>')
						
		for pkg in self.coverDict.keys():
			fw.write('<hr style="height:10px;border:none;border-top:10px groove skyblue;" />')
			fw.write('<h2> <font color="#336699"> package name: ' + pkg[1:-1]+'</font></h2>')
			fw.write('<b> <font color="#333333">'  +self.pkgCovHtml[pkg] +'</b> <br> </font><br>' )
			for cls in self.coverDict[pkg].keys():
				fw.write('<hr style="height:1px;border:none;border-top:1px solid #555555;" />')
				fw.write('<h3>  <font color="#336699"> class name: ' + cls[1:-1].replace('/','.')+'</font></h3>')
				fw.write( '<b> <font color="#333333">' + self.clsCovHtml[cls] +'</b> </font><br> <br>' )
				for method in self.coverDict[pkg][cls].keys():
					if self.coverDict[pkg][cls][method] ==True:
						fw.write('<font color="green"> method name: ' + method+'</font> </br>')
					else:
						fw.write(' <font color="red"> method name: ' + method+'</font></br>')
				
			
			
		fw.write('</body></html>')
		fw.close()
	
	def getActivity(self, line):
		activity = line.strip('\r\n').split(';')[0]
		activity = activity.replace('/','.').split("$")[0]
		return activity[1:]
		
	def getPkg(self, line):
		classA = line.strip('\r\n').split('--->')[0]
		ss = classA.split('/')
		pkg=''
		for i in range(len(ss)-1) :
			pkg+=ss[i]+'.'
		return pkg
		
	def getClass(self, line):		
		return line.strip('\r\n').split('--->')[0]
	
	def getActivityList(self):	  
		if(not os.path.exists(self.activityFile)):
			return
		file = open(self.activityFile)
		lines = file.readlines()
		for line in lines:
			activity = line.strip('\r\n')
			if(activity == ''):
				continue
			if activity not in self.activityDict.keys():
				self.activityDict[activity]=0
		file.close()
		self.activityNum = len(self.activityDict)
		
	def getPkgList(self):	  
		file = open(self.methodFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				pkg = self.getPkg(line)
				if(pkg == ''):
					continue
				if pkg not in self.pkgDict.keys():
					self.pkgDict[pkg]=0
					self.coverDict[pkg]={}
		file.close()
		self.pkgNum = len(self.pkgDict)
		
	def getClassList(self):	  
		file = open(self.methodFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				classA = self.getClass(line)
				pkg = self.getPkg(line)
				if pkg =='':
					continue
				if classA not in self.classDict.keys():
					self.classDict[classA]=0
					self.coverDict[pkg][classA] = {}
		file.close()
		self.classNum = len(self.classDict)
	

		
	def getMethodList(self):	  
		file = open(self.methodFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				line = line.strip("\r\n")
				classA = self.getClass(line)
				pkg = self.getPkg(line)
				if pkg =='':
					continue
				self.methodDict[line]=0
				self.coverDict[pkg][classA][line]=False
		file.close()
		self.methodNum = len(self.methodDict)
		
	def printPkgList(self):
		f = open(self.pkgfile,"w")
		for key in self.pkgDict:  
			if self.pkgDict[key] >0:
				f.write( '%s\t%s' % (key, self.pkgDict[key])+"\n" ) 
		f.close()
	def printActList(self):
		f = open(self.acfile,"w")
		for key in self.activityDict:  
			if self.activityDict[key] >0:
				f.write( '%s\t%s' % (key, self.activityDict[key])  +"\n" ) 
		f.close()	
	def printClassList(self):		
		f = open(self.clsfile,"w")
		for key in self.classDict:  
			if self.classDict[key] >0:
				f.write( '%s\t%s' % (key, self.classDict[key])  +"\n" ) 
		f.close()
	def printMethodList(self):		
		f = open(self.metfile,"w")
		for key in self.methodDict:  
			if self.methodDict[key] >0:
				f.write( '%s\t%s' % (key, self.methodDict[key]) +"\n" ) 
		f.close()
			
	def calPkgCoverage(self):
		file = open(self.logFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].split('--->')[0]
				else:
					line = line.split('!')[0]
					
				pkg = self.getPkg(line)
				if pkg in self.pkgDict.keys():
					if self.pkgDict[pkg] == 0:
						self.pkgDict[pkg] = 1
						self.pkgCovNum+=1
					else:
						self.pkgDict[pkg] += 1
		file.close()
		res =  'App-Level  Package Coverage = '+ str(self.pkgCovNum) + '/' + str(self.pkgNum) +' = '+ str(1.0*self.pkgCovNum/self.pkgNum)+'\n'
		print res
		self.totalPkgCoverage =  res 
		self.printRes += "\t"+ str(self.pkgCovNum) + "\t" +str(self.pkgNum)+"\t"+ str(1.0*self.pkgCovNum/self.pkgNum)+ "\t"
	
	def calActivityCoverage(self):
		file = open(self.logFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].split('--->')[0]
				else:
					line = line.split('!')[0]
				activity= self.getActivity(line)
				if activity in self.activityDict.keys():
					if self.activityDict[activity] == 0:
						self.activityDict[activity] = 1
						self.activityCovNum+=1
					else:
						self.activityDict[activity] += 1
		file.close()
		res =  'App-Level  Activity Coverage = '+ str(self.activityCovNum) + '/' + str(self.activityNum) +' = '+ str(1.0*self.activityCovNum/self.activityNum)+'\n'
		print res
		self.totalActivityCoverage =  res 
		self.printRes += str(self.activityCovNum) + "\t" +str(self.activityNum)+"\t"+ str(1.0*self.activityCovNum/self.activityNum)+ "\t"
		
	def calClassCoverage(self):
		file = open(self.logFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].split('--->')[0]
				else:
					line = line.split('!')[0]
				if line in self.classDict.keys():
					if self.classDict[line] == 0:
						self.classDict[line] = 1
						self.classCovNum+=1
					else:
						self.classDict[line] += 1
		file.close()
		res =  'App-Level Class Coverage = '+ str(self.classCovNum) + '/' + str(self.classNum) +' = '+ str(1.0*self.classCovNum/self.classNum)+'\n'
		print res
		self.totalClsCoverage =  res 
		self.printRes += str(self.classCovNum) +"\t" +str(self.classNum) + "\t" + str(1.0*self.classCovNum/self.classNum)+ "\t"
		
	def calMethodCoverage(self):
		file = open(self.logFile)
		while 1:
			lines = file.readlines(100000)
			if not lines:
				break
			for line in lines:
				if '--->' in line:
					line = line.split(': ')[1].strip('\r\n')
				else:
					line = line.strip('\r\n')
				if  self.methodDict.has_key(line):
					if self.methodDict[line] == 0:
						self.methodDict[line] = 1
						self.methodCovNum+=1
					else:
						self.methodDict[line] += 1
				classA = self.getClass(line)
				pkg = self.getPkg(line)
				if pkg =='':
					continue
				if pkg in self.coverDict and classA in self.coverDict[pkg] and line in self.coverDict[pkg][classA]:
					if self.coverDict[pkg][classA][line]==False:
						self.coverDict[pkg][classA][line]=True
		file.close()	
		res =  'App-Level Method Coverage = '+ str(self.methodCovNum) + '/' + str(self.methodNum) +' = '+ str(1.0*self.methodCovNum/self.methodNum)+'\n'
		print res
		self.totalMethodCoverage =  res 
		self.printRes += str(self.methodCovNum) + "\t" +str(self.methodNum) +"\t"+str(1.0*self.methodCovNum/self.methodNum)+ "\t"
		
	def calCoverageByPkg(self):
		for pkg in self.coverDict.keys():
			me_cover = 0;
			me_sum =0;
			cls_cover = 0;
			cls_sum = len(self.coverDict[pkg].keys())
			for cls in self.coverDict[pkg].keys():
				cls_flag = False
				for method in self.coverDict[pkg][cls].keys():
					me_sum+=1
					if self.coverDict[pkg][cls][method] ==True:
						me_cover+=1
						if(not cls_flag):
							cls_cover+=1
							cls_flag=True
			name = pkg[1:-1]
			print 'Package Name: ' +name
			cls_str =  'Packaget-Level Class Coverage = ' + str(cls_cover) + '/' + str(cls_sum) +' = '+ str(1.0*cls_cover/cls_sum)
			me_str =  'Packaget-Level Method Coverage = '+ str(me_cover) + '/' + str(me_sum) +' = '+str(1.0*me_cover/me_sum)+'\n'
			print cls_str
			print me_str
			self.pkgCovHtml[pkg] = cls_str +'</br>' +me_str 
			
		
	def calCoverageByCls(self):
		for pkg in self.coverDict.keys():
			for cls in self.coverDict[pkg].keys():
				me_cover = 0;
				me_sum =0;
				for method in self.coverDict[pkg][cls].keys():
					me_sum+=1
					if self.coverDict[pkg][cls][method] ==True:
						me_cover+=1
				name = cls[1:-1].replace('/','.')
				print 'Class Name: ' + name
				me_str =  'Class-Level Method Coverage  = '+ str(me_cover) + '/' + str(me_sum) +' = '+str(1.0*me_cover/me_sum)+'\n'
				print me_str
				self.clsCovHtml[cls] =  me_str 
				
	def generateReport(self):
		filename = 'coverage.html'
		f = open(filename, 'w')
		f.write('')
		
		f.close()

		
if __name__ == '__main__' :
	pass