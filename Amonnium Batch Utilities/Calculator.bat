@echo off
title CMD Calculator (Decimal Support)

:start
cls
echo.
echo CMD Calculator
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
echo.

set /p choice="Enter your choice (1-5): "

if %choice%==1 goto addition
if %choice%==2 goto subtraction
if %choice%==3 goto multiplication
if %choice%==4 goto division
if %choice%==5 exit

echo Invalid choice.
pause
goto start

:addition
cls
set /p num1="Enter first number: "
set /p num2="Enter second number: "
for /f "tokens=*" %%a in ('powershell -command "(%num1% + %num2%)"') do set result=%%a
echo Result: %result%
pause
goto start

:subtraction
cls
set /p num1="Enter first number: "
set /p num2="Enter second number: "
for /f "tokens=*" %%a in ('powershell -command "(%num1% - %num2%)"') do set result=%%a
echo Result: %result%
pause
goto start

:multiplication
cls
set /p num1="Enter first number: "
set /p num2="Enter second number: "
for /f "tokens=*" %%a in ('powershell -command "(%num1% * %num2%)"') do set result=%%a
echo Result: %result%
pause
goto start

:division
cls
set /p num1="Enter dividend: "
set /p num2="Enter divisor: "
if %num2%==0 (
    echo Error: Cannot divide by zero.
    pause
    goto start
)
for /f "tokens=*" %%a in ('powershell -command "(%num1% / %num2%)"') do set result=%%a
echo Result: %result%
pause
goto start   