@echo off
echo "______________________________________________________________________________________________________________________________ echo
echo "______________________________________________________________________________________________________________________________ minimized window
:: minimized s
@Echo Off
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
:: minimized e


echo "______________________________________________________________________________________________________________________________ chcp 65001
chcp 65001
echo "______________________________________________________________________________________________________________________________ variable
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddHHmmss=%%i
cls
echo "______________________________________________________________________________________________________________________________ git clone https://github.com/PARK4139/PRJS_PRIVATE.git
echo "______________________________________________________________________________________________________________________________ "%yyyyMMddHHmmss% >> tmp.log
echo "______________________________________________________________________________________________________________________________ "%~n0%~x0 >> tmp.log
REM git clone https://github.com/PARK4139/PRJS_PUBLIC.git



REM echo "______________________________________________________________________________________________________________________________ timeout 600
REM timeout 600



