@echo  off
mode con:cols=34 lines=11
title PHP Version Switch
echo.
echo  Current PHP version is:

if exist C:\php7 (
	php -r "echo '          PHP '.phpversion();"
	echo.
	echo  Switching to PHP 7...
	move C:\php C:\php5 >nul
	move C:\php7 C:\php >nul
) else ( 
	php -r "echo '          PHP '.phpversion();"
	echo.
	echo  Switching to PHP 5...
	move C:\php C:\php7 >nul
	move C:\php5 C:\php >nul
)
echo.
echo     Done!
echo.
echo  PHP version is now:
php -r "echo  '          PHP '.phpversion();"
echo.
timeout 3 >nul