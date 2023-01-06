import random
import threading,time 

def generateLaunch(pkg, name):
	write("LaunchActivity("+pkg+", "+name+")")

# according to the resolution ratio of screen
# my screen x:1080, y:1920

def generateDrag1():
	x1 = random.randint(0, 1080)
	y1 = random.randint(100, 1920)
	y2 = random.randint(100, 1920)
	step = 100
	write( "Drag(" +str(x1)+ "," +str(y1)+ "," +str(x1)+ ", " +str(y2)+ " ," +str(step)+")")	

def generateDrag2():
	x1 = random.randint(0, 1080)
	x2 = random.randint(0, 1080)
	y1 = random.randint(100, 1920)
	step = 100
	write( "Drag(" +str(x1)+ "," +str(y1)+ "," +str(x2)+ ", " +str(y1)+ " ," +str(step)+")")	

def generateClick():
	x1 = random.randint(0,1080)
	y1 = random.randint(72,1920)
	write( "DispatchPointer(10,10,0, " +str(x1)+ "," +str(y1)+ ",1,1,-1,1,1,0,0)")	
	write( "DispatchPointer(10,10,1, " +str(x1)+ "," +str(y1)+ ",1,1,-1,1,1,0,0)")	
	
def generateClick_rotate():
	x1 = random.randint(0,1920)
	y1 = random.randint(72,1080)
	write( "DispatchPointer(10,10,0, " +str(x1)+ "," +str(y1)+ ",1,1,-1,1,1,0,0)")	
	write( "DispatchPointer(10,10,1, " +str(x1)+ "," +str(y1)+ ",1,1,-1,1,1,0,0)")	
	
def generateRotate():
	x = random.randint(0, 3)
	write( "RotateScreen(" + str(x) +",1)")	

def generateString():
	r = random.randint(1, 100)
	if(r%4==0):
		write( "DispatchString(ahh@*/h$%#)")
	elif(r%4==1):
		write( "DispatchString(car)")
	elif(r%4==2):
		write( "DispatchString(china)")	
	else:
		write( "DispatchString(12345)")	
	generateEnter()
	
def generateTap():
	x1 = random.randint(0, 1080)
	y1 = random.randint(72, 1920)
	write( "Tap("+str(x1)+ "," +str(y1)+")")	
def generateMenu():
	write( "DispatchPress(82)")	
def generateBack():
	write( "DispatchPress(4)")
	
def generateEnter():
	write( "DispatchPress(66)")	
def generateLongPress():
	x1 = random.randint(0, 1080)
	y1 = random.randint(72, 1920)
	write( "PressAndHold("+str(x1)+ "," +str(y1)+",1000)")	

q=threading.RLock()

def write(s):
	q.acquire()    #acquire the lock 
	fw.write(s+"\n")
	q.release()

	
def generate(fn, num, pkg, name):
	print "!!!!!!!!!!!!!!!!!!!generate",num,"events"
	global fw
	fw =open(fn, "w")
	fw.write("type=raw events\n")
	fw.write("count="+str(num)+"\n")
	fw.write("speed=1.0\n")
	fw.write("start data >>\n")
	i=0
	while i < num:
		r = random.randint(1, 1000)
		if r<10:
			generateDrag1()
		if r<20:
			generateDrag2()
		elif r<40:
			generateMenu()
			generateClick()
			generateClick()
			i+=2
		elif r<60:
			generateBack()
			generateClick()
			generateClick()
			i+=2
		elif r<90:
			generateLongPress()
		elif r<100:
			generateString()
		#elif r<11:
			#generateRotate()
		elif r<101:
			generateLaunch(pkg, name)
		elif r<150:
			generateClick_rotate()
		else:
			generateClick()
		i+=1
	fw.close()