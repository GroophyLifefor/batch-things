@echo
del "%tmp%\*.*" /s /q /f
FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
echo.
echo.
echo temp with % clear done now temp clear
ping localhost -n 4 > nul
echo.
del C:\Windows\Temp /S /Q /F
del C:\Windows\Temp /S /Q /A:H
FOR /D %%p IN ("C:\Windows\Temp\*") DO rmdir "%%p" /s /q
echo.
echo temp clear done now prefetch clear 
ping localhost -n 4 > nul
echo.
del C:\Windows\prefetch /S /Q /F
del C:\Windows\prefetch /S /Q /A:H
FOR /D %%p IN ("C:\Windows\prefetch\*") DO rmdir "%%p" /s /q
echo.
echo prefetch clear done now all cleared  
echo -groophy lifefor
ping localhost -n 4 > nul

rem if you want faster clear open codes 
rem click ctrl+h
rem find 4 and replace 1
timeout 3
