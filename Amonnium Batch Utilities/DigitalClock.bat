@echo off
:clock
color f0
title batch file clock
mode con: cols=40 lines=2
echo date: %date% time: %time%
goto clock