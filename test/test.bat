@echo off

set /a step=0
goto start

:start
    echo 1. OWSF(mine)
    echo 2. OWSF_Platform(chris)
    echo 3. Batch
    set /p choosen="which you want to git push :"
    if %choosen% == 1 (
        cd C:\Users\nina1\Desktop\onward\github\OWSF
        goto :checkStatus1
    ) else if %choosen% == 2 (
        cd C:\Users\nina1\Desktop\onward\github\OWSF_Platform
        goto :checkStatus1
    ) else if %choosen% == 3 (
        cd C:\Users\nina1\Desktop\Batch
        goto :checkStatus1
    ) else (
        goto start
    )

:checkStatus1
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

:push
    echo ============================= Continue push =============================
    call git push
