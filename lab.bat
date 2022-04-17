:MAIN
cd C:\Users\Moritz\Documents\Ostern\Start
set /A COUNTER=0
goto :loop

:loop
if %COUNTER% equ 22 call :link
set /A BACK=%random% %% 2
if %CD% equ C:\Users\Moritz\Documents\Ostern\Start set /A BACK=0
goto :cont

:cont
if %BACK% equ 0 goto :check
if %BACK% equ 1 cd ..
goto :loop

:check
dir /b | >nul findstr "^" && (goto :random) || (goto :create)

:random
set /A GO=%random% %% 4
if %GO% equ 0 cd rechts
if %GO% equ 1 cd links
if %GO% equ 2 cd oben
if %GO% equ 3 cd unten
goto :loop

:create
set /A COUNTER=COUNTER+1
mkdir rechts
mkdir links
mkdir oben
mkdir unten
goto :loop

:link
type nul >"https://cloudnextcloud.dynv6.net/s/nFFg8fELscHofm4"
EXIT
