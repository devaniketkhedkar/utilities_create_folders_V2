REM Author     : Aniket Khedkar
REM GITHUB ID  : devaniketkhedkar
REM VERSION    : Version V2
REM Purpose    : To create Daywise Folder and Text file of each day in Month to write daily notes.
REM How To Use :
REM Step 1. Copy paste this utility where you want to create your folders.
REM Step 2. Run this utility in a folder where you want to create folders and text file for each day in a month.
REM Step 3. Run this utility and enter Month no in MM format. It will create folders and txt file in it for each day in month.

@echo off
setlocal enabledelayedexpansion

REM --- Prompt the user to enter a month number ---
:EnterMonth
REM echo Please enter the month number (MM format):
set /p Month=Type Month in MM format:

REM --- Validate month input ---
set "Valid=1"
for /f "delims=0123456789" %%a in ("%Month%") do set Valid=0
if %Valid% equ 0 (
    echo Invalid month format! Please enter a numeric value.
    goto EnterMonth
)
if %Month% lss 01 (
    echo Invalid month! Please enter a value between 01 and 12.
    goto EnterMonth
)
if %Month% gtr 12 (
    echo Invalid month! Please enter a value between 01 and 12.
    goto EnterMonth
) else (
    goto EnterYear
)

REM --- Ask for the current year ---
:EnterYear
echo Please enter the year (YYYY format):
set /p Year=Type the year in YYYY format:

REM --- Validate year input ---
set "Valid=1"
for /f "delims=0123456789" %%a in ("%Year%") do set Valid=0
if %Valid% equ 0 (
    echo Invalid year format! Please enter a numeric value.
    goto EnterYear
)
if %Year% lss 1000 (
    echo Invalid year! Please enter a four-digit value.
    goto EnterYear
)
if %Year% gtr 9999 (
    echo Invalid year! Please enter a four-digit value.
    goto EnterYear
) else (
    goto Success
)

REM --- Debugging Output ---
:Success
echo Year entered: %Year%
echo Month entered: %Month%
pause

REM --- Determine the number of days in the month ---
call :GetLastDayOfMonth %Month%

REM --- Debugging: Show calculated last day ---
echo Last day of the month: %LastDay%
pause

REM --- Create folders and text files ---
FOR /L %%X IN (1,1,%LastDay%) DO (
    set Day=%%X
    if %%X lss 10 set Day=0%%X

    REM --- Debugging folder and file creation ---
    echo Creating folder !Day!-!Month!-!Year! and file !Day!-!Month!-!Year!.txt

    REM --- Create folder for the day ---
    MKDIR "!Day!-!Month!-!Year!" > NUL

    REM --- Create a text file inside the folder using delayed expansion ---
    echo This is a test file. > "!Day!-!Month!-!Year!\!Day!-!Month!-!Year!.txt"
)

echo All folders and text files have been created.
pause
exit /b

REM --- Function to get the last day of the month ---
:GetLastDayOfMonth
set Month=%1
REM echo Checking last day for month: %Month%

REM Handle months with fixed days
if %Month%==01 set LastDay=31 & exit /b
if %Month%==03 set LastDay=31 & exit /b
if %Month%==05 set LastDay=31 & exit /b
if %Month%==07 set LastDay=31 & exit /b
if %Month%==08 set LastDay=31 & exit /b
if %Month%==10 set LastDay=31 & exit /b
if %Month%==12 set LastDay=31 & exit /b
if %Month%==04 set LastDay=30 & exit /b
if %Month%==06 set LastDay=30 & exit /b
if %Month%==09 set LastDay=30 & exit /b
if %Month%==11 set LastDay=30 & exit /b
if %Month%==02 (
    REM Handle February with leap year check
    call :IsLeapYear %Year%
    if !LeapYear!==1 (
        set LastDay=29
    ) else (
        set LastDay=28
    )
)
exit /b

REM --- Function to check if it's a leap year ---
:IsLeapYear
set LeapYear=0

REM Leap year check logic
set /a tempyear=%1 %% 4
set /a leap_check=%1 %% 100
set /a century_check=%1 %% 400

REM Debugging leap year logic
REM echo Year: %1
REM echo Divisible by 4: %year%
REM echo Divisible by 100: %leap_check%
REM echo Divisible by 400: %century_check%

if %tempyear%==0 (
    if %leap_check%==0 (
        if %century_check%==0 (
            set LeapYear=1
        ) else (
            set LeapYear=0
        )
    ) else (
        set LeapYear=1
    )
)

REM --- Debugging output ---
REM echo Leap year check for %1: %LeapYear%
exit /b
