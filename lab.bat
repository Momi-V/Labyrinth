:MAIN
cd C:\Users\Moritz\Documents\Ostern\Start
set /A COUNTER=0
call :loop

:loop
if %COUNTER% equ 22 call :link
set /A BACK=%random% %% 2
if %CD% equ C:\Users\Moritz\Documents\Ostern\Start set /A BACK=0
call :cont

:cont
if %BACK% equ 0 call :check
if %BACK% equ 1 cd ..
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

:link
type nul >link
EXIT
