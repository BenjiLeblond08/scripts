@echo off
mode con:cols=48 lines=25
rem cd C:\Users\benja\setfsb
net session >nul 2>&1
if NOT %errorLevel%==0 sudo %~0

:menu
cls                     
echo.
echo.
echo   ############################################
echo   #                                          #
echo   #           Apache - PHP - MySQL           #
echo   #                 Main Menu                #
echo   #                                          #
echo   #          S : Start all services          #
echo   #                                          #
echo   #              A : Apache Menu             #
echo   #              P : PHP Menu                #
echo   #              M : MySQL Menu              #
echo   #                                          #
echo   #       Q : End all services and Quit      #
echo   #                C : Close                 #
echo   #                                          #
echo   ############################################
echo.
choice /c SAPMQC /m "ÿ"
echo.
if %errorLevel%==1 goto START
if %errorLevel%==2 goto APACHE
if %errorLevel%==3 goto PHP
if %errorLevel%==4 goto MYSQL
if %errorLevel%==5 goto QUIT
if %errorLevel%==6 goto :eof
goto menu

:START
cls
echo.
echo.
echo   ########### Start All Services ############
echo.
net start Apache2.4
echo.
net start MySQL57
echo.
timeout 5
goto menu

:APACHE
cls
echo.
echo.
echo   ###########################################
echo   #                                         #
echo   #               Apache Menu               #
echo   #                                         #
echo   #           S : Start Service             #
echo   #           R : Restart Service           #
echo   #           P : Stop Service              #
echo   #           I : Install Service           #
echo   #           U : Uninstall Service         #
echo   #           T : Test Config               #
echo   #                                         #
echo   #              M : Main Menu              #
echo   #       Q : End all services and Quit     #
echo   #                C : Close                #
echo   #                                         #
echo   ###########################################
echo.
choice /c SRPIUTMQC /m "ÿ"
echo.
if %errorLevel%==1 net start Apache2.4
if %errorLevel%==2 net stop Apache2.4 & net start Apache2.4
if %errorLevel%==3 net stop Apache2.4
if %errorLevel%==4 httpd.exe -k install
if %errorLevel%==5 httpd.exe -k uninstall
if %errorLevel%==6 httpd.exe & pause
if %errorLevel%==7 goto menu
if %errorLevel%==8 goto QUIT
if %errorLevel%==9 goto :eof
goto APACHE

:PHP
cls
echo.
echo.
echo   ###########################################
echo   #                                         #
echo   #                 PHP Menu                #
echo   #                                         #
echo   #               I : PHP Info              #
echo   #                                         #
echo   #              M : Main Menu              #
echo   #       Q : End all services and Quit     #
echo   #                C : Close                #
echo   #                                         #
echo   ###########################################
echo.
choice /c IMQC /m "ÿ"
echo.
if %errorLevel%==1 php.exe -i
if %errorLevel%==2 goto menu
if %errorLevel%==3 goto QUIT
if %errorLevel%==4 goto :eof
goto PHP

:MYSQL
cls
echo.
echo.
echo   ###########################################
echo   #                                         #
echo   #                MySQL Menu               #
echo   #                                         #
echo   #           S : Start Service             #
echo   #           R : Restart Service           #
echo   #           P : Stop Service              #
echo   #                                         #
echo   #              M : Main Menu              #
echo   #       Q : End all services and Quit     #
echo   #                C : Close                #
echo   #                                         #
echo   ###########################################
echo.
choice /c SRPMQC /m "ÿ"
echo.
if %errorLevel%==1 net start MySQL57
if %errorLevel%==2 net stop MySQL57 & net start MySQL57
if %errorLevel%==3 net stop MySQL57 & pause
if %errorLevel%==4 goto menu
if %errorLevel%==5 goto QUIT
if %errorLevel%==6 goto :eof
goto MYSQL

:QUIT
cls
echo.
echo.
echo   ########### Ending All Services ############
echo.
net stop Apache2.4
echo.
net stop MySQL57
echo.
goto :eof