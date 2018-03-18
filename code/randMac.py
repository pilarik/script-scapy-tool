#! /usr/bin/python

import random
# Variables
hexNumber = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']
p = ':'
# function generate 1 number hexadecimal random
def rand_number():
    number = random.randrange(0,15)
    return hexNumber[number]
# function generate MAC address random
def rand_mac():
    date = ""
    for i in range (0,6):
        hn1 = rand_number()
        hn2 = rand_number()
        if(i<5):
            mac = hn1+hn2+p
        else:
            mac = hn1+hn2
        date += mac
    return date
