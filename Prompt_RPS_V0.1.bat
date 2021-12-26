@echo off
set wins=0
set loses=0
set ties=0
:1
set /a var=%random%*99/32767+1
:rps
cls
echo -----------------
echo Username: ...
echo Wins: %wins%
echo Loses: %loses%
echo Ties: %ties%
echo -----------------
echo Rock (R)
echo Paper (P)
echo Scissors (S)
echo -----------------
echo -- Prompt RPS V0.1 -- 
echo.
set /p rps=
if %var% GEQ 66 goto rock
if %var% LEQ 42 goto paper
goto scissors

:rock
cls
echo --------------------
echo BOT chosed rock!
echo You chosed %rps%!
if %rps% == R goto tie
if %rps% == S goto lose
if %rps% == P goto win
echo --------------------
goto rps

:paper
cls
echo --------------------
echo Result:
echo BOT chosed paper!
echo You chosed %rps%!
if %rps% == R goto lose
if %rps% == S goto win
if %rps% == P goto tie
echo --------------------
goto rps

:scissors
cls
echo --------------------
echo Result:
echo BOT chosed scissors!
echo You chosed %rps%!
if %rps% == S goto tie
if %rps% == P goto lose
if %rps% == R goto win
echo --------------------
goto rps

:tie
echo TIE!
set /a ties=%ties% + 1
pause
goto 1

:lose
echo YOU LOSE!
set /a loses=%loses% + 1
pause
goto 1

:win
echo YOU WIN!
set /a wins=%wins% + 1
pause
goto 1