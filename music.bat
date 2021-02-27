@echo off
:music
echo create ur own mix :cool:
echo what you want do?
echo add music=am   mylist=ml rem choose
set /p musicc=
if %musicc%==am (goto :maccept) else (goto :mtwo)
:mtwo
if %musicc%==ml (goto :mlist) else (goto :music)
:maccept
echo music name?
set /p mname=
dir >%mname%.bat
echo youtube music link? https://www.youtube.com/watch?v=QRzaall-3T8
set /p mlink=
echo start chrome %mlink% >> %mname%.bat rem making a bat about music bla bla
echo  ,  >> mixlist.txt
echo %mname% >> mixlist.txt
echo.
echo complated thanks :)
echo.
goto music
:mlist
echo if not work ur link you can fix link in musicname.bat
SETLOCAL DisableDelayedExpansion
FOR /F "usebackq delims=" %%a in (`"findstr /n ^^ mixlist.txt"`) do (
    set "var=%%a"
    SETLOCAL EnableDelayedExpansion rem looking added music names
    set "var=!var:*:=!"
    echo(!var!
    ENDLOCAL
)
echo.
echo chose music for open (if you want back write b) rem opening ur music
set /p mchosee=
if %mchosee%==b (goto :music) else (goto :mchosed)
:mchosed
start %mchosee%.bat rem opened
echo enjoy it
goto music
