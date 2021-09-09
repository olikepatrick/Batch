@echo off

set /a step=0
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
    set /p choosen="which you want to git push : "

    if %system% == 1 (
            if %choosen% == 1 (
            cd C:\Users\Nina\Desktop\onward\github\OWSF_Beta_V1
            goto :checkStatus1
        ) else if %choosen% == 2 (
            cd C:\Users\Nina\Desktop\onward\github\OWSF_Platform
            goto :checkStatus1
        ) else if %choosen% == 3 (
            cd C:\Users\Nina\Desktop\Batch
            goto :checkStatus1
        ) else if %choosen% == 4 (
        cd C:\Users\Nina\Desktop\MedalLife-Frontend
        goto :pull
        ) else (
            goto start
        )
    )

:checkStatus1
    @REM 換行
    @REM echo. 
    @REM echo %cd%
    echo ============================= Check Status ==============================
    call git status
    goto :add

    @REM set /p click="IF YOU WANT TO STOP THIS PROCESS, PLEASE ENTER 'exit' "
    @REM if '%click%' != "exit" (
    @REM     goto :add
    
    @REM ) else (
    @REM     goto :exit
    @REM )

    @REM if %step% equ %0 (
    @REM     set /p click="IF YOU WANT TO STOP THIS PROCESS, PLEASE ENTER 'exit' "
    @REM     if %click% != "exit" (
    @REM         goto :add
        
    @REM     ) else (
    @REM         goto :exit
    @REM     )
    @REM ) else if %step% equ %1 (
    @REM     echo Finished add
    @REM     set /p click="IF YOU WANT TO STOP THIS PROCESS, PLEASE ENTER 'exit' "
    @REM     if %click% != "exit" (
    @REM         goto :commit
    @REM     ) else (
    @REM         goto :exit
    @REM     )
    @REM ) else if %step% equ %2(
    @REM     echo Go To Push
    @REM     set /p click="IF YOU WANT TO STOP THIS PROCESS, PLEASE ENTER 'exit' "
    @REM     if %click% != "exit" (
    @REM         goto :push
    @REM     ) else (
    @REM         goto :exit
    @REM     )
    @REM )
    
:add
    echo ============================= Continue add ============================
    call git add .
    set /a step=1
    goto :checkStatus2

:checkStatus2
    echo.
    call git status
    echo ============================ Continue commit ============================
    goto :commit

:commit
    echo.
    set /p commit_content="What you want to commit : "
    echo ~~~~~~~~~~~~~~~~~~~~ git commit -m "%commit_content%" ~~~~~~~~~~~~~~~~~~~~
    call git commit -m "%commit_content%"
    set /a step=2
    echo ============================= Continue push =============================

:push
    call git push
    cd C:\Users\Nina\Desktop
