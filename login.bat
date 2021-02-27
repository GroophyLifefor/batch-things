@echo off
goto log
:login
echo accont not fount.(maybe name or pass wrong) rem wrong 
:log
set "cdMe=cd C:\Users\%username%\Documents"
%cdMe%
findstr "hesapgirmisonceden" hide.txt rem finding hide.txt and find hesapgirmisonceden if have going to menu
echo %errorlevel%
if %errorlevel%==0 (goto :sayın1) else (goto :logs2)
rem ----------------------------------------------------------------------
:logs2
echo name: 
set /p name=
echo pass: 
set /p pass=
if %name%==name (goto :area1) else (goto :login) rem if not have an hide.txt creating one (here to writing informations)
:area1
if %pass%==pass (goto :sayın1) else (goto :login)
rem ----------------------------------------------------------------------
:sayın1
dir C:\Users\%username%\Documents\>C:\Users\%username%\Documents\hide.txt
echo hesapgirmisonceden >C:\Users\%username%\Documents\hide.txt rem here creating hide.txt
goto menu
rem -----------------------------------
:menu
cls rem cls=clear
echo welcome, work! rem fully done
pause > nul
