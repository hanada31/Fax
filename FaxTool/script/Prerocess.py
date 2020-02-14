import os
import sys
import shutil
import re
import time
import xml.dom.minidom as xdom


class PreProcess:
	def __init__(self, apkPath, outPath):
		self.apkPath = apkPath
		self.outPath = outPath

	def replace(self, path):
		manifest = list()
		files = os.listdir(path)
		for ff in files:
			if ff == "AndroidManifest.xml":
				manifest.append(os.path.join(path, ff))
		for ff in manifest:
			dom = xdom.parse(ff)
			activities = dom.getElementsByTagName("activity")
			for activity in activities:
				if activity.getAttribute("android:exported") is "true":
					print(activity.getAttribute("android:name"))
				elif activity.getAttribute("android:exported") is "false":
					activity.setAttribute("android:exported", "true")
				else:
					activity.setAttribute("android:exported", "true")
			services = dom.getElementsByTagName("service")
			for service in services:
				if service.getAttribute("android:exported") is "true":
					print(service.getAttribute("android:name"))
				elif service.getAttribute("android:exported") is "false":
					service.setAttribute("android:exported", "true")
				else:
					service.setAttribute("android:exported", "true")
			with open(ff, "w") as fh:
				dom.writexml(fh)

								 
	def exportApp(self):
		apkPath = os.path.abspath(self.apkPath)
		outPath = os.path.abspath(self.outPath)
		DECOMPILE = "java -jar lib/apktool.jar d -f "
		REBUILD = "java -jar lib/apktool.jar b "
		REMOVE = "rm -r "
		RESIGN = "java -jar lib/signapk.jar lib/platform.x509.pem lib/platform.pk8 "

		ff = os.listdir(apkPath)
		for file in ff:
			pattern = ".*\\.apk"
			result = re.findall(pattern, file)
			if len(result) != 0:
				print(file)
				unsignApk = outPath+os.sep+file[:-4] + "_unsigned.apk"
				signApk = outPath+os.sep+file[:-4] + ".apk"
				if os.path.exists( signApk):
					continue
					
				folder = file[:-4]
				if not os.path.exists(folder):
					os.makedirs(folder)
				decompile = DECOMPILE + apkPath +"/" + file + " -o " + folder
				print (decompile)
				os.system(decompile)
				
				self.replace("./" + folder)
				
				rebuild = REBUILD + folder + " -o " + unsignApk
				print (rebuild)
				os.system(rebuild)
				
				resign = RESIGN + unsignApk + " " + signApk
				print (resign)
				os.system(resign)

				if os.path.exists(unsignApk):
					os.remove( unsignApk)
				print folder
				if os.path.exists(folder):
					shutil.rmtree(folder,True)
		

	def instrument(self):
		files = os.listdir(self.outPath)
		for name in files:
			if "_ins" in name or os.path.exists(self.outPath+"/"+name[:-4]+"_ins.apk"):
				continue
			if ".apk" in name:
				print "instrument apk "+ name
				INSTRU = "java -jar lib/InsDal.jar -f "+self.outPath+"/"+name+"  -m -i"
				print (INSTRU)
				os.system(INSTRU)
				if(os.path.exists(self.outPath +os.sep + "ins_info")):
					shutil.move(self.outPath +os.sep +"ins_info",self.outPath+os.sep+name[:-4]+"_ins_info.txt")
				
	def install(self):
		files = os.listdir(self.outPath)
		for name in files:
			if "_ins.apk" in name :
				cmd = "adb install -g " +self.outPath+os.sep+name 
				os.system(cmd)
#main function
if  __name__ == '__main__':   
	apk_input_dir = sys.argv[1]+ os.sep
	apk_output_dir = sys.argv[2]+ os.sep
	
	pre = PreProcess(apk_input_dir,apk_output_dir)
	#pre.exportApp()
	#pre.instrument()
	pre.install()
