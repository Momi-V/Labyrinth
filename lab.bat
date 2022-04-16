:MAIN
cd "C:\Users\Moritz\Documents\Test"
set /A COUNTER=0
call :loop

:loop
if %COUNTER% equ 10 call :copy

set /A back=%random% %% 2

if %BACK% equ 0 if %CD% equ C:\Users\Moritz\Documents\Test goto :loop else call :cont

:cont
if %back% equ 0 cd ..
if %back% equ 1 call :check
call :loop

:check
dir /b | >nul findstr "^" && (call :random) || (call :create)

:random
set /A GO=%random% %% 4
if %GO% equ 0 cd rechts
if %GO% equ 1 cd links
if %GO% equ 2 cd oben
if %GO% equ 3 cd unten
call :loop

:create
set /A COUNTER=COUNTER+1
mkdir rechts
mkdir links
mkdir oben
mkdir unten
call :loop

:copy
copy C:\Users\Moritz\Documents\dummy.txt .\
EXIT
