@shift /0
@echo off
:start
echo Do you want to access the requested folder? (y/n)
echo.
set /p choice="> "
if %choice%==n goto quit
if %choice%==N goto quit
if %choice%==y goto passRequest
if %choice%==Y goto passRequest
echo Please try again
echo.
goto start
:passRequest
cls
echo Please enter your password.
echo.
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
REM Basically make sure to change the password below
if %password%==insertpasswordhere goto success
if NOT %password%==insertpasswordhere goto sorry
:sorry
cls
echo The password was incorrect. The program will now terminate.
pause
goto quit
:success
REM
%SystemRoot%\explorer.exe "insert path here"
goto quit
:quit