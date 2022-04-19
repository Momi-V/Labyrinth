:MAIN
cd C:\tree
set /A COUNTER=0
goto :loop

:loop
if %COUNTER% equ 22 goto :link
set /A BACK=%random% %% 2
if %CD% equ C:\tree set /A BACK=0
goto :cont

:cont
if %BACK% equ 0 goto :check
if %BACK% equ 1 cd ..
goto :loop

:check
dir /b /ad | >nul findstr "^" && (call :random) || (call :create)
goto :loop

:random
set /A GO=%random% %% 4
if %GO% equ 0 cd rechts
if %GO% equ 1 cd links
if %GO% equ 2 cd oben
if %GO% equ 3 cd unten
goto :eof

:create
set /A COUNTER=COUNTER+1
mkdir rechts
mkdir links
mkdir oben
mkdir unten
goto :eof

:link
call :random
type nul >link
EXIT
