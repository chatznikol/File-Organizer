@Echo off
@Mode 48,15


color 9f
echo File organiser

:Loop
Call Button  0 1 "Start organising" # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto organise)	
goto Loop

:Organise
cls
echo Organising files . . .
ping localhost -n 2 >nul
cd Files/
for %%i in (*.mp3) do (
	echo [mp3] %%i
	move "%%i" ./mp3 >nul
	ping localhost -n 1 >nul
)
for %%i in (*.wav) do (
	echo [wav] %%i
	move "%%i" ./wav >nul
	ping localhost -n 1 >nul
)
for %%i in (*.jpg) do (
	echo [jpg] %%i
	move "%%i" ./jpg >nul
	ping localhost -n 1 >nul
)
for %%i in (*.png) do (
	echo [png] %%i
	move "%%i" ./png >nul
	ping localhost -n 1 >nul
)
for %%i in (*.mp4) do (
	echo [mp4] %%i
	move "%%i" ./mp4 >nul
	ping localhost -n 1 >nul
)
for %%i in (*.txt) do (
	echo [txt] %%i
	move "%%i" ./txt >nul
	ping localhost -n 1 >nul
)
for %%i in (*.zip) do (
	echo [zip] %%i
	move "%%i" ./zip >nul
	ping localhost -n 1 >nul
)
for %%i in (*.*) do (
	echo [?] %%i - Could not organise
	ping localhost -n 1 >nul
)
ping localhost -n 2 >nul
echo Your files have been successfully organised!
echo Press any key to exit . . .
pause >nul
start .\
exit	