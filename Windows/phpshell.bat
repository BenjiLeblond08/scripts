@echo off
:loop
    set /p php="php> " %=%
    php -r "%php%"
    echo.
goto loop