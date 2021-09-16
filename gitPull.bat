@echo off

@REM cd .\onward\OWSF

goto start

:start
    echo 1. asus
    echo 2. msi
    set /p system="which computer you on : "

    echo.
    echo 1. OWSF(mine)
    echo 2. OWSF_Platform(chris)
    echo 3. Batch
    echo 4. MedalLife
    echo 5. OWSF_Platform(chris)(need to make zip)
    set /p choosen="which you want to update from github :"

    if %system% == 1 (
        if %choosen% == 1 (
            cd C:\Users\Nina\Desktop\onward\github\OWSF
            goto :pull
        ) else if %choosen% == 2 (
            cd C:\Users\Nina\Desktop\onward\github\OWSF_Platform
            goto :pull
        ) else if %choosen% == 3 (
            cd C:\Users\Nina\Desktop\Batch
            goto :pull
        ) else if %choosen% == 4 (
            cd C:\Users\Nina\Desktop\MedalLife-Frontend
            goto :pull
        ) else if %choosen% == 5 (
            cd C:\Users\Nina\Desktop\OWSF_Platform
            goto :pull
        ) else (
            goto start
        )
    )

:pull
    echo ============================= pulling ==============================
    call git pull
    cd C:\Users\Nina\Desktop