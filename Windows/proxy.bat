@echo off

reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable | find "0x1" /C /i > nul
IF %ERRORLEVEL%==0 goto stop
:start
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0x1 /f
echo.
echo.
echo.
echo.
echo     _____  _____   ______   ____     __   
echo    ^|  __ \^|  __ \ / __ \ \ / /\ \   / /   
echo    ^| ^|__) ^| ^|__) ^| ^|  ^| \ V /  \ \_/ /    
echo    ^|  ___/^|  _  /^| ^|  ^| ^|^> ^<    \   /     
echo    ^| ^|    ^| ^| \ \^| ^|__^| / . \    ^| ^|      
echo    ^|_^|    ^|_^|  \_\\____/_/ \_\   ^|_^|      

echo                                              __     
echo                                             /_/     
echo              _____ _______ _______      ________    
echo        /\   / ____^|__   __^|_   _\ \    / /  ____^|   
echo       /  \ ^| ^|       ^| ^|    ^| ^|  \ \  / /^| ^|__      
echo      / /\ \^| ^|       ^| ^|    ^| ^|   \ \/ / ^|  __^|     
echo     / ____ \ ^|____   ^| ^|   _^| ^|_   \  /  ^| ^|____    
echo    /_/    \_\_____^|  ^|_^|  ^|_____^|   \/   ^|______^|   
echo.
echo.
echo.
echo.
goto end

:stop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0x0 /f
echo.
echo.
echo.
echo.
echo     _____  _____   ______   ____     __   
echo    ^|  __ \^|  __ \ / __ \ \ / /\ \   / /   
echo    ^| ^|__) ^| ^|__) ^| ^|  ^| \ V /  \ \_/ /    
echo    ^|  ___/^|  _  /^| ^|  ^| ^|^> ^<    \   /     
echo    ^| ^|    ^| ^| \ \^| ^|__^| / . \    ^| ^|      
echo    ^|_^|    ^|_^|  \_\\____/_/ \_\   ^|_^|      

echo               __                                                 __     
echo              /_/                                                /_/     
echo     _____  ______  _____         _____ _______ _______      ________    
echo    ^|  __ \^|  ____^|/ ____^|  /\   / ____^|__   __^|_   _\ \    / /  ____^|   
echo    ^| ^|  ^| ^| ^|__  ^| (___   /  \ ^| ^|       ^| ^|    ^| ^|  \ \  / /^| ^|__      
echo    ^| ^|  ^| ^|  __^|  \___ \ / /\ \^| ^|       ^| ^|    ^| ^|   \ \/ / ^|  __^|     
echo    ^| ^|__^| ^| ^|____ ____) / ____ \ ^|____   ^| ^|   _^| ^|_   \  /  ^| ^|____    
echo    ^|_____/^|______^|_____/_/    \_\_____^|  ^|_^|  ^|_____^|   \/   ^|______^|   
echo.
echo.
echo.
echo.
goto end

:end
timeout 2