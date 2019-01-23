@echo off

echo.
echo  Etat de l'hyperviseur Hyper-V :
bcdedit | find /i "hypervisorlaunchtype"
echo  Auto : Hyper-V
echo  Off : VirtualBox
echo.
echo  Appuyez sur une touche pour continuer...
echo   Ctrl+C pour quitter
echo.

pause > nul

bcdedit | findstr /r /i "^hypervisorlaunchtype.*Off$" > nul
if %ERRORLEVEL%==0 goto start

bcdedit | findstr /r /i "^hypervisorlaunchtype.*Auto$" > nul
if %ERRORLEVEL%==0 goto stop

goto error

:start
echo.
echo  ACTIVATION de l'hyperviseur Hyper-V
bcdedit /set hypervisorlaunchtype auto
echo.
echo  L'hyperviseur Hyper-V est ACTIVER
echo  Redemarer pour utiliser Hyper-V
echo  VirtualBox ne sera plus utilisable
echo.
goto end

:stop
echo.
echo  DESACTIVATION de l'hyperviseur Hyper-V
bcdedit /set hypervisorlaunchtype off
echo.
echo  L'hyperviseur Hyper-V est DESACTIVER
echo  Redemarer pour utiliser VirtualBox
echo  Hyper-V ne sera plus utilisable
echo.
goto end

:error
echo.
echo  Une erreur est survenu
echo.
echo  Verifier l'etat de hypervisorlaunchtype
echo  avec la commande 'bcdedit'
echo.
echo  Le programme doit etre execute en admin
echo.
goto end

:end
echo  Appuyez sur une touche pour quitter...
pause > nul
