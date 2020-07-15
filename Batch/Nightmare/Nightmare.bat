@echo off
title Nightmare
color 0b
:main
echo                          *-________Nightmare_________-*
echo.                               Created by Madelyn Torres
echo                          \___________________________/
echo                          _____________________________
echo. 
echo 1. Start
echo 2. Exit
set /p x=
if %x%' == %x%' goto item_%x%
:item_2
exit
:item_1
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
cls
pause
goto start
:start
cls
start first.wav
echo Please wait and listen to the audio...
ping localhost -n 8 >nul
echo After hearing this recording left behind, you begin to feel tense. You look up and realize that you are in a room with
echo four walls, a low roof, and a hard concrete floor. You peer into your hands and see the recording you just heard.
echo You feel that this is important and decide to keep it... You look around and try to figure out what to do.
echo.
echo 1. Further investigate the room
echo 2. Sleep
set /p x=What do you do? 
if %x%' == %x%' goto item_%x%
:item_1
cls
echo You look aroound the room and find a picture covered in soot and dust.
echo Press any key to viewe the picture...
pause >nul
cls
start nightmare1.bmp
echo You look at the picture and are not sure what to make of it.... You think that this may be some sort of monster and 
echo attempt to discard it. In the back of your mind you hear a voice urging you to keep it. Do you keep it?
echo 1. Yes, it seems important
echo 2. No, seems pretty stupid in my opinion
set /p y=
if %y%' == %y%' goto da_%y%
:da_1
cls
echo You take the picture and store it in your inventory.
pause
goto prelogue1
:prelogue1
cls
echo After gathering the picture you hear a nearby rumbling. A door opens to the side and you immediately run down the corridor.
echo The door shuts behind you and you are left in complete darkness. After about five minutes a small candle flickers in a spot
echo where before you had seen only a wall. You walk towards it and see there is a note written in a dark red ink. You then realize
echo the ink is dripping and look at your palm. It is cut yet not bleeding. The paper drys as you look at your palm and a quick
echo glance back and you see written in almost illegible letters...
echo.
pause
ping localhost -n 5 >nul
echo.
echo                        THE NIGHTMARE
start scary.jpg
pause
goto beginning2
:beginning2
cls
echo You suddenly realize that a door has opened to your left. It is pitch black and there is nothing. You seem lost and 
echo know this is a task that will be near impossible. Suddenly, you feel a vibration in your pocket. The recorder has a
echo message!
pause
cls
start beginning.wav
echo You think over this and look around. You are sure that you see nothing and then look at the candle in front of you.
echo All of a sudden it disappears and a voice echos "Find the light to survive the night, or death will come to the lonely
echo knight." You fumble over what you've heard and realize that the time is limited. You must choose what to do.
echo.
echo 1. Scan your enviornment for a lamp
echo 2. Stay still and let death embrace you
set /p z=
if %z%' == %z%' goto go_%z%
:go_2
cls
echo You feel that life is not worth living in this petty game. You stay put and eventually are captured, tortured, and killed
echo brutally. You do not remember anything except for the pain. You decide to abandon your chance at life and knowledge
echo of the situation for an easy exit. In the end, The Nightmare has consumed you...
pause
goto lost
:lost
cls
echo You have lost the game and will be redirected to the main menu in 8 seconds...
ping localhost -n 8 >nul
goto main
:go_1
cls
echo Doing the sensible thing, you go on all fours and search the room... After what feels like an hour of searching, your
echo hand encroaches a lamp. On contact, a chill runs through your body and the lamp is turned on. You slowly kill yourself
echo for the simple necessity of light.
pause
cls
start lamp.bmp
echo This lamp seems to eminate a mysterious glow. You know that you cannot sit and wait forever. You look at the hallway
echo and wonder whether or not to jump right in. The audio tape you just listened to replays in the back of your mind...
echo.
echo 1. Continue into the hallway
echo 2. Explore the room you are in
set /p a=
if %a%' = %a%' goto abc_%a%
:abc_1
:da_2
cls
echo You place the picture back and simply glance at it in disgust. You pace the room and realize there is nothing else to
echo observe and decide to lean against the wall. At this moment the floor begins to widen and a gaping hole begins to appear.
echo It attempt to suck you into its depths, however you remember the painting. You run over to it and tke it impulsively.
echo You chuck it down the hole as if to satisfy it, however this aggrivates it and causes it to open even faster. A positive
echo is that a staircase has appeared leading into a hole above. You run up without thinking, knowing the options above must
echo be better. As you run up, the staircase begins to crumble. Eventually, you tread onto a platform and collapse. After a
echo minute of regaining your strength, you look up to a skull that glares at you with embers in its eyes.
pause
start scary2.jpg
cls
echo The skull disappears after a second of staring and is soon replaced by glowing red infernos in midair that say...
echo.
pause
ping localhost -n 5 >nul
echo.
echo                                THE NIGHTMARE
pause
goto beginning3
:beginning3
:item_2
cls
echo You close your eyes and begin to fall into a sleep. The cold floor makes it uncomfortable to do anything yet you
echo bear with it.
pause
cls
echo You wake up with a start and notice a gaping hole in the floor. It seems to grow wider as time passes. As it almost
echo consumes the whole room, a hole also appears at the top of the room. A screech is heard and your vision turns 
echo bloody red. Since there is no support for you to stand on, you fall into the abyss below... And so begins 
echo. 
pause                          
ping localhost -n 5 >nul
echo.                                   
echo                                THE NIGHTMARE
start scary.jpg
pause
goto beginning1
:beginning1


