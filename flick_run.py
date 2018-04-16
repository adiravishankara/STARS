import signal
import flicklib
from time import sleep
from curses import wrapper
from os import system
import OSC

mesSend = upd_client.SimpleUDPClient('10.0.0.1',4559)


# flick demo code
@flicklib.move()
def move(x, y, z):
    global xyztxt, x_range, y_range, z_range
    xyztxt = '{:5.3f} {:5.3f} {:5.3f}'.format(x,y,z)
    x_range = x  #find a divisor
    if x_range < 30:
        x_range = 30
    if x_range > 90:
        x_range = 90
    y_range = y
    if y_range < 30:
        y_range = 30
    if y_range > 90:
        y_range = 90
    z_range = z
    if z_range < 30:
        z_range = 30
    if z_range > 90:
        z_range = 90
    print(xyztxt)
@flicklib.flick()
def flick(start,finish):
    global flicktxt
    flicktxt = start + '-' + finish
    
    print(flicktxt)
@flicklib.airwheel()
def spinny(delta):
    global some_value
    global airwheeltxtq
    some_value += delta
    if some_value < 30:
        some_value = 30
    if some_value > 90:
        some_value = 90
    airwheeltxt = (some_value)
    print(airwheeltxt)

def main(stdscr):
    global xyztxt
    global x_range
    global y_range
    global z_range
    global flicktxt
    global airwheeltxt
    global touchtxt
    global taptxt
    global doubletaptxt

    xyztxt = ''
    x_range = ''
    y_range = ''
    z_range = ''
    flicktxt = ''
    flickcount = 0
    airwheeltxt = ''
    airwheelcount = 0
    cmd = ""

#    setled("off")



    # continuously check for gestures
    while(True):
        # flick from left to right and right to left, control which song plays
        if len(flicktxt) > 0:
            if flicktxt == "east-west":
                mesSend.send_message('gooseA',[1])
                print(flicktxt + "gooseA")
            elif flicktxt == "west-east":
                print(flicktxt)
                mesSend.send_message('gooseS',[1])
            elif flicktxt == "north-south":
                print(flicktxt)
                mesSend.send_message('Twinkle',[1])
            elif flicktxt == "south-north":
                print(flicktxt)
                mesSend.send_message('Water',[1])
            #flicktxt = ''

        # airwheel controls volume
        if len(airwheeltxt) > 0:
            print(airwheeltxt)
            #mesSend.send_message('airwheel',[airwheeltxt])
            airwheeltxt = ''
        
#        if len(xyztxt) > 0:
            #mesSend.send_message('')
        if len(x_range) > 0:
            print(x_range)
            #mesSend.send_message('x_range',[x_range])
            x_range = ''

        if len(y_range) > 0:
            print(y_range)
            #mesSend.send_message('y_range',[y_range])
            y_range = ''

        if len(z_range) > 0:
            print(z_range)
            #mesSend.send_message('z_range',[z_range])
            z_range = ''
            
    

        sleep(0.02)

#wrapper(main)
