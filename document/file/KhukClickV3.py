import time
import threading
from pynput.mouse import Button, Controller
from pynput.keyboard import Listener, KeyCode
import mouse as ms
from sys import exit
delay = 2
button = Button.left
start_stop_key = KeyCode(char='s')
exit_key = KeyCode(char='e')
i = 0
class ClickMouse(threading.Thread):
    def __init__(self, delay, button):
        super(ClickMouse, self).__init__()
        self.delay = delay
        self.button = button
        self.running = False
        self.program_running = True
        self.i = i;
        print("Press S for start.")

    def start_clicking(self):
        self.running = True

    def stop_clicking(self):
        self.running = False

    def exit(self):
        self.stop_clicking()
        self.program_running = False

    def run(self):
        while self.program_running:
            time.sleep(1)
            while self.running:
                time.sleep(1)
                mouse.position = (970,816)
                time.sleep(1)
                mouse.press(Button.left)
                mouse.release(Button.left)
                time.sleep(1)
                mouse.position = (970,783)
                time.sleep(1)
                mouse.press(Button.left)
                mouse.release(Button.left)
                time.sleep(1)

                
                mouse.position = (900,725)
                for x in range(300):
                    ms.wheel(-1)
                    time.sleep(0.01)
                
                time.sleep(1)
                
                for x in range(15):
                    mouse.position = (900,735)
                    mouse.press(Button.left)
                    mouse.release(Button.left)
                    time.sleep(1)

                time.sleep(2)
                mouse.position = (1080,600)
                mouse.press(Button.left)
                mouse.release(Button.left)
                    
                time.sleep(2)
                mouse.position = (1080,600)
                mouse.press(Button.left)
                mouse.release(Button.left)
                    
                for x in range(60):
                    time.sleep(10)
                    mouse.position = (970,470)
                    mouse.press(Button.left)
                    mouse.release(Button.left)

                    time.sleep(10)
                    mouse.position = (970,730)
                    mouse.press(Button.left)
                    mouse.release(Button.left)
                    
                    time.sleep(10)
                    mouse.position = (1825,550)
                    mouse.press(Button.left)
                    mouse.release(Button.left)

                self.i = self.i+1
                time.sleep(2)
                print(self.i,"Round")

mouse = Controller()
click_thread = ClickMouse(delay, button)
click_thread.start()

def on_press(key):
    print(key)
    if key == start_stop_key:
        print("Starting")
        if click_thread.running:
            click_thread.stop_clicking()
        else:
            click_thread.start_clicking()
    elif key == exit_key:
        print("Exit..")
        time.sleep(2)
        exit()
        
with Listener(on_press=on_press) as listener:
    listener.join()

