@Echo Off
echo "______________________________________________________________________________________________________________________________ @echo
echo "______________________________________________________________________________________________________________________________ title
title %~n0
echo "______________________________________________________________________________________________________________________________ minimized window s
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
echo "______________________________________________________________________________________________________________________________ minimized window e
echo "______________________________________________________________________________________________________________________________ encoding 
chcp 65001 
echo "______________________________________________________________________________________________________________________________ variable 
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddHHmmss=%%i
cls
echo "______________________________________________________________________________________________________________________________ add
git add *  
echo "______________________________________________________________________________________________________________________________ commit
git commit -m "%yyyyMMddHHmmss%" 
echo "______________________________________________________________________________________________________________________________ push
git push -u origin main  
REM echo "______________________________________________________________________________________________________________________________ status
REM git status  
cls
cd py
call py TTS.py "깃허브에 프로젝트 커밋시도를 완료했습니다" 
taskkill -im Alsong.exe -f
REM echo "______________________________________________________________________________________________________________________________ timeout 60
REM timeout 60