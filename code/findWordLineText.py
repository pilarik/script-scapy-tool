#!/usr/bin/python
import commands
import fileinput
import subprocess
#variables
class FindText():
	route = ''
	namefile = ''
	textWrite = ''
	textRead = ''
#constructor
	def __init__(self):
		self.route = ''
		self.namefile = ''
		self.textWrite = ''
		self.textRead = ''
#methods
	def setRouteFile (self, setroute):
		self.route = setroute
		pass
	def setNameFile (self, namefile):
		self.namefile = namefile
		pass
	def setReadFile (self, text):
		self.textRead = text
		pass
	def setWriteFile (self, text):
		self.textWrite = text
		pass

	def getlistFile(self):
		ls = commands.getoutput(route+' ls -l')
		return ls
	def getCatFile(self):
		routeFinal = self.route+'/'+self.namefile
		cat = commands.getoutput('cat '+routeFinal)
		print(cat)
	def grepLine(self):
		routeFinal = self.route+'/'+self.namefile
		lineGrep = commands.getoutput('grep -n "'+self.textRead+'" '+routeFinal+'')
		line,text=lineGrep.split(':')
		return line
	def clearWriteLine(self, lineWrite):
		lineFile = str(int(lineWrite)+1)
		routeFinal = self.route+'/'+self.namefile
		subprocess.call(["sed","-i",''+lineWrite+'i '+self.textWrite+'', ''+routeFinal])
		subprocess.call(["sed","-i",''+lineFile+'d', ''+routeFinal])
		pass
	def writeLine(self, lineWrite):
		routeFinal = self.route+'/'+self.namefile
		subprocess.call(["sed","-i",''+lineWrite+'i '+self.textWrite+'', ''+routeFinal])
		pass

	def findBody(self):
		print(self.route)
		print(self.namefile)
		print(self.textRead)
		print(self.textWrite)
		pass
