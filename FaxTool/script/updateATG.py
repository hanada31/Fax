import os, os.path
import sys
 
def search(path, myList):
	num = 0
	if not os.path.exists(path):
		return
	for x in os.listdir(path):
		fp = os.path.join(path, x)		
		if os.path.isfile(fp):
			if x.endswith('.logcat'):
				num +=1
				#read original log
				fc = open(fp, 'r')
				log1lines = fc.readlines()
				fc.close()
				for line in log1lines:
					if "M_InsDal: L" in line:
						target = line.split("M_InsDal: L")[1].split(";--->")[0]
						target = target.replace("/",".")
						myList.add(path.split("\\")[-1]+", \""+target+"\"\n")
		elif os.path.isdir(fp):	
			search(fp, myList)
				
def writeLogDict(fn, folder, myList):
	fp  = folder+fn+"_atg.txt"
	fw = open(fp, 'w') 
	for ele in myList:
		fw.write(ele)
	fw.close()	
	
	
if __name__ == '__main__':
	for fn in os.listdir(os.getcwd()):
		folder = os.path.join(os.getcwd(),fn)
		if os.path.isdir(folder):		
			myList = set()
			search(folder+"\\", myList)		
			writeLogDict(fn, folder+"\\", myList)
			print ""
	

