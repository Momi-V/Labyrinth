:MAIN
cd "C:\Users\Moritz\Documents\Test"
set /A COUNTER=0
call :loop

:loop
if %COUNTER% equ 10 EXIT

set /A back=%random% %% 2

if %back% equ 0 if %CD% equ C:\Users\Moritz\Documents\Test goto :loop else call :cont

:cont
if %back% equ 0 cd ..
if %back% equ 1 goto :check
call :loop

:check
dir /b /ad | >nul findstr "^" && (call :random) || (call :create)

:random
set /A back=%random% %% 4
if %back% equ 0 cd rechts
if %back% equ 1 cd links
if %back% equ 2 cd oben
if %back% equ 3 cd unten
call :loop

:create
set /A COUNTER=COUNTER+1
mkdir rechts
mkdir links
mkdir oben
mkdir unten
call :loop