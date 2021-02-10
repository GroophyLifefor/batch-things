rem echo off for good look
@echo off
rem temp clear
del "%tmp%\*.*" /s /q /f
FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
rem not auto closing
pause > nul
