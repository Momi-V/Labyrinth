:MAIN
cd C:\Users\Moritz\Documents\Ostern\Start
set /A COUNTER=0
goto :loop

:loop
if %COUNTER% equ 22 goto :link
set /A BACK=%random% %% 2
if %CD% equ C:\Users\Moritz\Documents\Ostern\Start set /A BACK=0
goto :cont

:cont
if %BACK% equ 0 goto :check
if %BACK% equ 1 cd ..
goto :loop

:check
dir /db | >nul findstr "^" && (call :random) || (call :create)
goto :loop

:random
set /A GO=%random% %% 4
if %GO% equ 0 cd rechts
if %GO% equ 1 cd links
if %GO% equ 2 cd oben
if %GO% equ 3 cd unten

:create
set /A COUNTER=COUNTER+1
mkdir rechts
mkdir links
mkdir oben
mkdir unten

:link
call :random
type nul >"cloudnextcloud.dynv6.net s nFFg8fELscHofm4"
EXIT
