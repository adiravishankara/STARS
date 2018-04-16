import signal
import flicklib
from time import sleep
from curses import wrapper
from os import system
from OSC import *

client = OSCStreamingClient()
client.connect(("192.168.0.15",4559))


client.sendOSC("HI")

