import signal
#import flicklib
from time import sleep
from curses import wrapper
from os import system
from OSC import OSCClient, OSCMessage

client = OSCClient()
client.connect(("192.168.1.200",4559))


client.send(OSCMessage("HI"))
client.send(OSCMessage("POOP"))
client.send(OSCMessage("THISISSHIT"))
client.send(OSCMessage("NEWTOTHIS"))
client.send(OSCMessage("I DONT LIKE THIS",[1]))
