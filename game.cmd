@echo off
:menu
assets\click.dll f870 "play" "credits" "Close"
if %ERRORLEVEL% == 1 goto start
if %ERRORLEVEL% == 2 goto cre
if %ERRORLEVEL% == 3 exit



:start
echo loading

::vir go here


cls
echo press any key to start game...
pause >nul
type grz\intro.grz
echo I have been in here for 236 days I must trying to Escape
echo.
echo.
echo press any key to open jail cell.
pause >nul
type grz\hallway.grz
echo you have approached a hallway
pause
echo a guard has approached you.
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto fight
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:fight
set /A rnd=%RANDOM% * 10 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto map1
pause



:surrender
echo you have surrendered
goto start
:end
echo game over
pause
goto menu

:map1
echo have a approached a computer do you want to hack it
assets\click.dll f870 "yes" "no" "main menu"
if %ERRORLEVEL% == 1 goto hack
if %ERRORLEVEL% == 2 goto nohack
if %ERRORLEVEL% == 3 exit menu


:hack
type grz\map1.grz
echo oh no you have choose the wrong answer it has set off alarms and now you are back in your jail cell
::pause
goto start
:nohack
echo you have chosen the right answer
pause
goto map2

:map2
echo but...
pause
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto fight2
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:fight2
::fight
set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto map3
::pause


:map3
type grz\hallway.grz
echo press any key to proceed
pause >nul
type grz\map3.grz
echo 

echo you have made it to the first exit door...
echo but
pause
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto fight3
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:fight3
::fight
set /A rnd=%RANDOM% * 4 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto map4
::pause

:map4
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto assetf1
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:asset1
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto assetf2
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:asset2
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto assetf3
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu


:asset3
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto assetf4
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:asset4
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto assetf5
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:asset5
echo a guard has approached you...
assets\click.dll f870 "fight" "surrender" "main menu"
if %ERRORLEVEL% == 1 goto Doneasset
if %ERRORLEVEL% == 2 goto surrender
if %ERRORLEVEL% == 3 exit menu

:assetf1
::fight
set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto asset1
::pause


:assetf2
::fight
set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto asset2
::pause


:assetf3
::fight
set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto asset3
::pause

:assetf4
::fight
set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto asset4
::pause


:assetf5
::fight
set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
if %rnd% == 1 goto end
goto asset5
:::assetf5
::fight
::set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
::if %rnd% == 1 goto end
::goto asset5
:::assetf5
::fight
::set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
::if %rnd% == 1 goto end
::goto asset5
:::assetf5
::fight
::set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
::if %rnd% == 1 goto end
::goto asset5
:::assetf5
::fight
::set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
::if %rnd% == 1 goto end
::goto asset5
:::assetf5
::fight
::set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
::if %rnd% == 1 goto end
::goto asset5
:::assetf5
::fight
::set /A rnd=%RANDOM% * 5 / 32768 + 1
::echo %rnd%
::if %rnd% == 1 goto end
::goto asset5

cls
goto doneasset
:doneasset
cls
type grz\doneasset.grz
pause
color 72
type grz\assetdone.grz
echo congratulations you have escaped.
assets\click.dll f870 "play again" "close"
if %ERRORLEVEL% == 1 goto start
if %ERRORLEVEL% == 2 exit
::if %ERRORLVEL% = 3 exit

::done



