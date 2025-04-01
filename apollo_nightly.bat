@echo off
color 0f
title apollo nightly v0.2.4
cls

echo =====================================
echo       apollo nightly installer            
echo =====================================
echo please note that you are using a nightly build of apollo.
echo apollo is not responsible for misuse of this service.
echo do you accept? (y/n)
set /p choice="> "

if /i "%choice%" neq "y" exit

cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo.
echo do you want to install apollo nightly v0.2.4? (y/n)
set /p install="> "

if /i "%install%" neq "y" exit

set "install_dir=c:\windows\temp\ChromeLogs"
set "desktop_dir=C:\Users\%USERNAME%\OneDrive - Volusia County Schools\Desktop"
set "batch_file=%USERPROFILE%\Downloads\apollonightly.bat"

echo installing apollo...
echo creating installation directory
mkdir "%install_dir%" 2>nul

echo creating readme.txt...
(
    echo you're using a nightly build,
    echo you should already know what apollo does.
    echo "Shave"
    echo "Shave Folder".
) > "%install_dir%\readme.txt"

echo downloading shave panel (this may take a while)
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/s-hre/Apollo-Project/releases/download/latest/ShaveInstaller.exe', '%install_dir%\ShaveInstaller.exe')" 2>nul
if %errorlevel% neq 0 (
    echo.
    echo [91merror: cannot access download server.[0m
    echo [91mtry turning your internet on.[0m
    pause
    exit
)

echo installed

echo running installer




start "" "%install_dir%\ShaveInstaller.exe"


echo install complete, read the readme file! 
pause




:::    ___       ___       ___       ___       ___       ___       ___   
:::   /\__\     /\  \     /\  \     /\__\     /\  \     /\__\     /\__\  
:::  /:| _|_   _\:\  \   /::\  \   /:/__/_    \:\  \   /:/  /    |::L__L 
::: /::|/\__\ /\/::\__\ /:/\:\__\ /::\/\__\   /::\__\ /:/__/     |:::\__\
::: \/|::/  / \::/\/__/ \:\:\/__/ \/\::/  /  /:/\/__/ \:\  \     /:;;/__/
:::   |:/  /   \:\__\    \::/  /    /:/  /   \/__/     \:\__\    \/__/   
:::   \/__/     \/__/     \/__/     \/__/               \/__/       (v0.2.4)        