#!/usr/bin/python
import commands
import fileinput
import subprocess
#variables
p=":"
wordA='INTERFACES'
wordB=''
routeA='/etc/default/isc-dhcp-server'
routeB='/etc/dhcp/dhcpd.conf'
routeTest='test'
line=''
line2=''
text=''
def cont():
	while(true):
		for i in range(0,10):
			ptrin(i)		
		if(i==10):
			break
		
def writeDoc():
	return true

#lineGrep = commands.getoutput('grep -n "'+wordA+'" '+routeA+'')
lineGrep = commands.getoutput('grep -n "'+wordA+'" '+routeTest+'')
print(lineGrep)
line,text=lineGrep.split(p)
print(line)
b = commands.getoutput('cat test')
line2=str(int(line)+1)
subprocess.call(["sed","-i",''+line+'i INTERFACES="GG"',"test"])
subprocess.call(["sed","-i",''+line2+'d',"test"])
print("---------------------------------------------------")
print(b)
#comWrite = commands.getoutput('sed -i '+line+'i'+text+'" '+routeTest'')
