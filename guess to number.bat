@echo off
gtnmax=100
:gtn
set gtnhak=10
cls
set /a gtnrandom=(%RANDOM%*%gtnmax%/32768)+0
echo welcome to guess the number
echo start=s options=o back=b
set /p gtnchoose=
if %gtnchoose%==s (goto :gtnstart)
if %gtnchoose%==o (goto :gtnoptions)
if %gtnchoose%==b (goto :seleks) else (goto :gtn)
:gtnstart
if %gtnhak%==0 (goto :gtnlose)
echo write a number 0-%gtnmax% you have %gtnhak% last chances left
set /p girdi=
if %girdi% gtr %gtnrandom% (goto :gtnfazla)
if %girdi%==%gtnrandom% (goto :gtnfound)
if %girdi% lss %gtnrandom% (goto :gtnaz)
:gtnfazla
echo this so much
set /a gtnhak=%gtnhak% - 1
goto gtnstart
:gtnfound
echo congrats you found (%gtnrandom%)
timeout 5
goto gtn
:gtnaz
echo this so low
set /a gtnhak=%gtnhak% - 1
goto gtnstart
:gtnlose
echo sorry, you lose (%gtnrandom%)
timeout 5
goto gtn
:gtnoptions
echo max number =
set /p gtnnmax=
set gtnmax=%gtnnmax%
goto :gtn
