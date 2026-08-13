@echo off
title calculator
color F0

:app
cls
echo Enter first digit
set /p num1=
echo Enter second digit
set /p num2=
set /a ans=%num1%+%num2%
echo %ans%
pause
goto app