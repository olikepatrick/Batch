@echo off

@REM cd .\onward\OWSF

goto start

:start
    echo 1. OWSF(mine)
    echo 2. OWSF_Platform(chris)
    echo 3. Batch
    set /p choosen="which you want to update from github :"

    if %choosen% == 1 (
        cd C:\Users\nina1\Desktop\onward\github\OWSF
        goto :pull
    ) else if %choosen% == 2 (
        cd C:\Users\nina1\Desktop\onward\github\OWSF_Platform
        goto :pull
    ) else if %choosen% == 3 (
        cd C:\Users\nina1\Desktop\Batch
        goto :pull
    ) else (
        goto start
    )

:pull
    echo ============================= pulling ==============================
    call git pull