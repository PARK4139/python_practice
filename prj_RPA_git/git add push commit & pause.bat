title %~n0
echo "______________________________________________________________________________________________________________________________ variable defination
chcp 65001
@echo off
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddHHmmss=%%i
cls
echo "______________________________________________________________________________________________________________________________ add
git add *  
echo "______________________________________________________________________________________________________________________________ commit
git commit -m "%yyyyMMddHHmmss%" 
echo "______________________________________________________________________________________________________________________________ push
git push -u origin main  
echo "______________________________________________________________________________________________________________________________ status
:: git status | find "clean"
git status  
cd py
call py AI_TTS.py "깃허브에 프로젝트 커밋시도를 완료했습니다"
taskkill /im alsong.exe /f
pause