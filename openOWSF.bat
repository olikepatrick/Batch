@ECHO off


@REM set tmp=3333
@REM echo %tmp%

goto start

:start
    echo 1. OWSF(mine)
    echo 2. OWSF_Platform(chris)
    set /p choosen="Open Platform with which file :"

    if %choosen% == 1 (
        cd C:\Users\Nina\Desktop\onward\github\OWSF\OWSF_Beta_V1
    ) else if %choosen% == 2 (
        cd C:\Users\Nina\Desktop\onward\github\OWSF_Platform
    ) else (
        goto start
    )

for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo Open at %ip%

@REM set /p ip="Please enter the ip you want to set :"
set /p port="Port :"


title OWSF
.\venv\Scripts\activate.bat && python manage.py runserver %ip%:%port%

@REM start .\venv\Scripts\activate.bat
@REM start python manage.py runserver %url%:%port%

cd C:\Users\Nina\Desktop