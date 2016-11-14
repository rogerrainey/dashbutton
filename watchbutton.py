#!/usr/bin/python
# Based on work from Edward Benson

from scapy import *
import datetime, requests, json, pickle

configFile = "/config/buttons.config"

def readConfigFile(self):
	with open(configFile) as fh:
		self = pickle.loads(fh.read())

def arp_action(pkt):
	if pkt[ARP].op == 1:
		for key in myDict:
			if pkt[ARP].hwsrc == key:
				print "Key pressed"

myDict = {}
readConfigFile(myDict)
sniff(prn=arp_action, filter="arp", store=0)


