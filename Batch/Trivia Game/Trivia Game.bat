@echo off
title The Trivia Game
color 0C
echo.
echo.
echo                                                             The Trivia Game! v1.1.0
echo.
echo                                                           Created by Madelyn Torres
ping localhost -n 5 >nul
goto a
:a
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
goto b
:b
cls
echo                                                         Welcome to the Trivia Game!
ping localhost -n 3 >nul
echo.
echo.
echo.
echo.
echo.
echo 1) Start Playing!
echo 2) Options
echo 3) Rules
echo 4) Information
echo 5) Latest Additions
echo 6) Feedback
echo 7) Exit
set /p choice=
if %choice%==1 goto start
if %choice%==2 goto options
if %choice%==3 goto rules
if %choice%==4 goto info
if %choice%==5 goto latest
if %choice%==6 goto feedback
if %choice%==7 goto exit
:exit
exit
:latest
cls
echo                                                                  Latest Information
echo                                                                              v1.1.0
echo.
echo -Added a new section: Latest Information... This section
echo  provides information on the latest updates to The Trivia Game.
echo -Minor bug fixes
echo -Resized many text features to format Widescreen
echo.
echo Press any key to return to the main menu. . .
pause >nul
goto b
:info
cls
echo Well, I am honestly shocked that you would come here so cheers!
echo Anyway, Basically this simple trivia game was made by Madelyn Torres.
echo Simple scripting use batch files, and soon (hopefully) Java/C++/Python!
echo Regardless, I must give my thanks for actually looking at this!
echo (Note: Pressing any key to continue will take you to the main menu!)
pause
goto b
:rules
cls
echo The rules are self-explanatory!
echo Typing the lower-case letter for multiple choice questions should be sufficient.
echo As for now, there are no open ended questions. As I learn more, expect them!
echo (Note; Pressing any key to continue will take you to the main menu!)
pause
goto b
:feedback
cls
echo Thanks for even bothering to go here! Simply type in your feedback or a song
echo recommendation and I will be glad to make changes.
echo.
echo 1) Music Requests
echo 2) Mechanics
set /p choice=
if %choice%==1 goto musfeedback
if %choice%==2 goto mecfeedback
:musfeedback
cls
echo This forum is about music feedback.
pause
cls
set /p feedback=feedback:
echo %feedback% >FeedbackMus.txt
pause
cls
echo You can send this feedback via Facebook... Would you like to do so (y/n)?
set /p choice=
if %choice%==y goto fb
if %choice%==yes goto fb
if %choice%==no goto b
if %choice%==n goto b
:mecfeedback
cls
echo This forum is about the mechanics feedback.
pause
cls
set /p feedback=feedback:
echo %feedback% >FeedbackMec.txt
pause
cls
echo You can send this feedback via Facebook... Would you like to do so (y/n)?
set /p choice=
if %choice%==y goto fb
if %choice%==yes goto fb
if %choice%==no goto b
if %choice%==n goto b
:fb
cls
echo In order to acess the file and send it via facebook, follow directions from the
echo following text file. After pressing any key, it will open. After reading it,
echo return to this window!
pause
cls
start feedhow.txt
echo Now that you know how to this, Facebook will open upon the next command!
pause
start www.facebook.com
echo.
echo Press any key to return to the main menu . . .
pause >nul
goto b
:options
cls
echo.
echo                                                                             Options
echo.
echo Sorry to say that the only option I can offer is music!
echo (Note: Once the songs end, they will not loop! If you would like to continue
echo listening to the song after it finishes, press replay! Minimize the
echo music window after selection for the full effect!)
echo.
echo.
echo.
echo 1) Music
echo 2) Return to main menu
set /p choice=
if %choice%==1 goto music
if %choice%==2 goto b
:music
cls
echo.
echo                                                                               Music
echo.
echo Choose a song. Leave a recommendation in the feedback section if you would like it
echo to be added.
echo.
echo.
echo 1) Bohemian Rhapsody - Queen
echo 2) Pumped Up Kicks - Foster the People
echo 3) Ode to Joey - Beethoven
echo 4) Still Dre - Dr. Dre featuring Snoop Dogg
echo 5) The pi song - Unknown
echo 6) Return to options
set /p choice=
if %choice%==1 goto boh
if %choice%==2 goto pump
if %choice%==3 goto ode
if %choice%==4 goto dre
if %choice%==5 goto bi
if %choice%==6 goto options
REM These options won't work if you clone this repository since I removed these files from the project
:boh
start bohemian.mp3
goto music
:bi
start bi.mp3
goto music
:pump
start pump.mp3
goto music
:ode
start ode.mp3
goto music
:dre
start dre.mp3
goto music
:start
cls
echo                                                        Please select a topic below:
echo.
echo.
echo 1) Science
echo 2) Coming soon...
echo 3) Coming soon...
echo 4) Return to the main menu
set /p choice=
if %choice%==1 goto science
if %choice%==2 goto sorry
if %choice%==3 goto sorry
if %choice%==4 goto b
:sorry
cls
echo This command is currently unavailable. Please return at a later date.
pause
goto start
:science
cls
echo                                                                             Science
echo.
echo.
echo 1) Chemistry
echo 2) Coming soon...
echo 3) Coming soon...
set /p choice=
if %choice%==1 goto chem
if %choice%==2 goto sorry2
if %choice%==3 goto sorry2
:sorry2
cls
echo This command is currently unavailable. Please return at a later date.
pause
goto science
:chem
cls
echo                                                                           Chemistry
echo.
echo.
echo 1) Easy
echo 2) Comming soon...
echo 3) Comming soon...
set /p choice=
if %choice%==1 goto chemeasy
if %choice%==2 goto sorry3
if %choice%==3 goto sorry3
:sorry3
cls
echo This command is currently unavailable. Please return at a later date.
pause
goto chem
:chemeasy
cls
echo Welcome to the chemistry test on easy!
pause
echo.
echo This test comprises of 10 chemistry questions that are simpler than the other
echo two tests.
pause
echo.
echo Let the test begin!
pause
goto chemeasy1
:chemeasy1
cls
echo Question 1...
ping localhost -n 3 >nul
echo From the nearest to the farthest, name the shells of an atom.
echo A. K, M, L                     B. 1, 2, 3
echo C. L, M, K                     D. 3, 2, 1
set /p choice=
if %choice%==a goto chemeasy1right
if %choice%==b goto chemeasy1wrong
if %choice%==c goto chemeasy1wrong
if %choice%==d goto chemeasy1wrong
:chemeasy1wrong
cls
echo Wrong! Sorry! Game Over!
pause
goto start
:chemeasy1right
cls
echo Good job!
pause
goto chemeasy2
:chemeasy2
cls
echo Question 2...
ping localhost -n 3 >nul
echo The chemical symbol Fe stands for:
echo A. Steel          B. Iron
echo C. Metal          D. Francium
set /p choice=
if %choice%==a goto chemeasy2wrong
if %choice%==b goto chemeasy2right
if %choice%==c goto chemeasy2wrong
if %choice%==d goto chemeasy2wrong
:chemeasy2wrong
cls
echo Wrong! Sorry! Game Over!
pause
goto start
:chemeasy2right
cls
echo Nice!
pause
goto chemeasy3
:chemeasy3
cls
echo Question 3...
ping localhost -n 3 >nul
echo Xenon has an atomic number of 54. How many electrons are in a neutral Xenon atom?
echo A. 1        B. 45
echo C. 54       D. 108
set /p choice=
if %choice%==a goto chemeasy3wrong
if %choice%==b goto chemeasy3wrong
if %choice%==c goto chemeasy3right
if %choice%==d goto chemeasy3wrong
:chemeasy3wrong
cls
echo Wrong! Sorry! Game Over!
pause
goto start
:chemeasy3right
cls
echo Great!
pause
goto chemeasy4
:chemeasy4
cls
echo Question 4...
ping localhost -n 3 >nul
echo How many Carbon atoms are in this bond? 2C+H+O
echo A. 1              B. 2
echo C. 0              D. 3
set /p choice=
if %choice%==a goto chemeasy4wrong
if %choice%==b goto chemeasy4right
if %choice%==c goto chemeasy4wrong
if %choice%==d goto chemeasy4wrong
:chemeasy4wrong
cls
echo Incorrect! Game Over!
pause
goto start
:chemeasy4right
cls
echo Magnificent!
pause
goto chemeasy5
:chemeasy5
cls
echo Question 5...
ping localhost -n 3 >nul
echo The atomic number of Hydrogen is 1. How many protons does a neutral atom have?
echo A. 1                  B. 2
echo C. 0                  D. 4
set /p choice=
if %choice%==a goto chemeasy5right
if %choice%==b goto chemeasy5wrong
if %choice%==c goto chemeasy5wrong
if %choice%==d goto chemeasy5wrong
:chemeasy5wrong
cls
echo Wrong! Game Over!
pause
goto start
:chemeasy5right
cls
echo Wonderful!
pause
cls
echo The next four questions will be yes/no and true/false questions.
pause
goto chemeasy6
:chemeasy6
cls
echo Question 6...
ping localhost -n 3 >nul
echo Is the following equation balanced? (y/n)
echo H+O+c yields HOC
set /p choice=
if %choice%==yes goto chemeasy6right
if %choice%==y goto chemeasy6right
if %choice%==no goto chemeasy6wrong
if %choice%==n goto chemeasy6wrong
:chemeasy6wrong
cls
echo Sorry, game over!
pause
goto start
:chemeasy6right
cls
echo Great job!
pause
goto chemeasy7
:chemeasy7
cls
echo Question 7...
ping localhost -n 3 >nul
echo Pure Water has a potential hydrogen level of 7. Milk has a potential hydrogen
echo level of 6. Is the milk more acidic than the water by 1 time? (y/n)
set /p choice=
if %choice%==yes goto chemeasy7wrong
if %choice%==y goto chemeasy7wrong
if %choice%==no goto chemeasy7right
if %choice%==n goto chemeasy7right
:chemeasy7wrong
cls
echo Game Over!
pause
goto start
:chemeasy7right
cls
echo 3 left!
pause
goto chemeasy8
:chemeasy8
cls
echo Question 8...
ping localhost -n 3 >nul
echo Flammability is a physical property. True or false?
set /p choice=
if %choice%==true goto chemeasy8wrong
if %choice%==t goto chemeasy8wrong
if %choice%==false goto chemeasy8right
if %choice%==f goto chemeasy8right
:chemeasy8wrong
cls
echo Game Over!
pause
goto start
:chemeasy8right
cls
echo Two left! Nice!
pause
goto chemeasy9
:chemeasy9
cls
echo Question 9...
ping localhost -n 3 >nul
echo Solubility is a physical property. True or false?
set /p choice=
if %choice%==true goto chemeasy9right
if %choice%==t goto chemeasy9right
if %choice%==false goto chemeasy9wrong
if %choice%==f goto chemeasy9wrong
:chemeasy9wrong
cls
echo Wrong! Game Over!
pause
goto start
:chemeasy9right
cls
echo One left! Keep going!
pause
cls
echo The last question will be multiple choice! Get ready!
goto chemeasy10
:chemeasy10
cls
echo Question 10...
ping localhost -n 3 >nul
echo There are many elements on the periodic table. How many have been given an offical
echo name?
echo A. 118       B. 92
echo C. 91        D. 112
set /p choice=
if %choice%==a goto chemeasy10wrong
if %choice%==b goto chemeasy10wrong
if %choice%==c goto chemeasy10wrong
if %choice%==d goto chemeasy10right
:chemeasy10wrong
cls
echo No!!! So close! Game Over!
pause
goto start
:chemeasy10right
cls
echo Congratulations! You have won! Victory!
start win.vbs
pause
cls
echo And now... An even bigger reward...
pause
echo Your own trophy! You can exit out of it once you have seen it.
pause
cls
start trophy.bmp
echo Thanks for playing the easy portion of the chemistry test!
echo Press any key to return to the topic menu...
pause
goto start



