import os
import serial
import time

ser = serial.Serial('COM4', 115200)
time.sleep(3)

while True:
    line = ser.readline().decode().strip()
    if line == "play1":
        print(line)
        os.startfile('C:/Users/sebas/Documents/Cegep docs/Others/Robotics Learning/01/001.mp3')
    if line == "play2":
        print(line)
        os.startfile('C:/Users/sebas/Documents/Cegep docs/Others/Robotics Learning/01/009.mp3')
    




