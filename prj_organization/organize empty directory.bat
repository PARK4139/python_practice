for /f "delims=" %%i in ('dir /s /b /ad ^| sort /r') do rd "%%i" 2>NUL
for /f "usebackq delims=" %%i in (`"dir /s /b /ad | sort /r"`) do rd "%%i" 2>NUL
