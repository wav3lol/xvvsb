@echo off
title MultiTool - by xvvsb
chcp 65001 >nul
color 5


:start
call :banner

:banner

echo.
echo.
echo           				[38;2;255;0;0m██╗  ██╗██╗   ██╗██╗   ██╗███████╗██████╗ [0m
echo          				[38;2;255;51;0m╚██╗██╔╝██║   ██║██║   ██║██╔════╝██╔══██╗[0m
echo          				[38;2;255;102;0m╚███╔╝ ██║   ██║██║   ██║███████╗██████╔╝[0m
echo          				[38;2;255;153;0m██╔██╗ ╚██╗ ██╔╝╚██╗ ██╔╝╚════██║██╔══██╗[0m
echo         				[38;2;255;204;0m██╔╝ ██╗ ╚████╔╝  ╚████╔╝ ███████║██████╔╝[0m
echo         				[38;2;255;255;0m╚═╝  ╚═╝  ╚═══╝    ╚═══╝  ╚══════╝╚═════╝ [0m
echo.
echo.


:menu
echo [38;2;255;255;0m 			   Page 1
echo [38;2;255;0;0m        ╔═(1) Discord[0m  
echo [38;2;255;51;0m        ║[0m  
echo [38;2;255;102;0m        ╠══(2) Spotify[0m  
echo [38;2;255;153;0m        ║[0m  
echo [38;2;255;204;0m        ╠═══(3) Virtualbox[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠════(4) Firefox[0m
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═════(5) OBS[0m  
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠══════(6) Change Page[0m  
echo [38;2;255;255;0m        ╚═══════(7) Leave[0m  

set /p escolha="Press (1-7) to make something happen: "

if "%escolha%"=="1" goto instalar_discord
if "%escolha%"=="2" goto instalar_spotify
if "%escolha%"=="3" goto instalar_virtualbox
if "%escolha%"=="4" goto instalar_firefox
if "%escolha%"=="5" goto instalar_obs
if "%escolha%"=="6" goto mudar_pagina
if "%escolha%"=="7" goto sair

echo Invalid Option! Please choose valid option!(1-7).
pause
goto menu

:menu2
echo.
echo.
echo           				[38;2;255;0;0m██╗  ██╗██╗   ██╗██╗   ██╗███████╗██████╗ [0m
echo          				[38;2;255;51;0m╚██╗██╔╝██║   ██║██║   ██║██╔════╝██╔══██╗[0m
echo          				[38;2;255;102;0m╚███╔╝ ██║   ██║██║   ██║███████╗██████╔╝[0m
echo          				[38;2;255;153;0m██╔██╗ ╚██╗ ██╔╝╚██╗ ██╔╝╚════██║██╔══██╗[0m
echo         				[38;2;255;204;0m██╔╝ ██╗ ╚████╔╝  ╚████╔╝ ███████║██████╔╝[0m
echo         				[38;2;255;255;0m╚═╝  ╚═╝  ╚═══╝    ╚═══╝  ╚══════╝╚═════╝ [0m
echo.
echo.
echo [38;2;255;255;0m 			   Page 2
echo [38;2;255;0;0m        ╔═(1) Steam[0m  
echo [38;2;255;51;0m        ║[0m  
echo [38;2;255;102;0m        ╠══(2) VSCode[0m  
echo [38;2;255;153;0m        ║[0m  
echo [38;2;255;204;0m        ╠═══(3) NotePad[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠════(4) GithubDesktop[0m
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═════(5) WhatsApp[0m  
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠══════(6) Change Page[0m  
echo [38;2;255;255;0m        ╚═══════(7) Leave[0m

set /p escolha2="Press (1-7) to make something happen: "

if "%escolha2%"=="1" goto instalar_steam
if "%escolha2%"=="2" goto instalar_vscode
if "%escolha2%"=="3" goto instalar_notepad
if "%escolha2%"=="4" goto instalar_githubdesktop
if "%escolha2%"=="5" goto instalar_whatsapp
if "%escolha2%"=="6" goto mudar_pagina2
if "%escolha2%"=="7" goto sair

echo Invalid Option! Please choose valid option!(1-7).
pause
goto menu


:instalar_discord
cls
echo Downloading and installing Discord...
bitsadmin /transfer DiscordDownload /download /priority foreground https://discord.com/api/download?platform=win "%temp%\DiscordSetup.exe"
start /wait "" "%temp%\DiscordSetup.exe"
echo Discord installed with success!
pause
goto menu

:instalar_spotify
cls
echo Downloading and installing Spotify...
bitsadmin /transfer SpotifyDownload /download /priority foreground https://download.scdn.co/SpotifySetup.exe "%temp%\SpotifySetup.exe"
start /wait "" "%temp%\SpotifySetup.exe"
echo Spotify installed with success!
pause
goto menu

:instalar_virtualbox
cls
echo Downloading and installing VirtualBox...
bitsadmin /transfer VBoxDownload /download /priority foreground https://download.virtualbox.org/virtualbox/7.0.6/VirtualBox-7.0.6-155176-Win.exe "%temp%\VirtualBoxSetup.exe"
start /wait "" "%temp%\VirtualBoxSetup.exe"
echo VirtualBox installed with success!
pause
goto menu

:instalar_firefox
cls
echo Downloading and installing Firefox...
bitsadmin /transfer FirefoxDownload /download /priority foreground https://download.mozilla.org/?product=firefox-latest&os=win64&lang=de "%temp%\FirefoxSetup.exe"
start /wait "" /i "%temp%\FirefoxSetup.exe"
echo Firefox installed with success!
pause
goto menu

:instalar_obs
cls
echo Downloading and installing OBS...
bitsadmin /transfer OBS-StudioDownload /download /priority foreground https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe "%temp%\OBS-Studio.exe"
start /wait "" /i "%temp%\OBS-Studio.exe"
echo Firefox installed with success!
pause
goto menu

:instalar_steam
cls
echo Downloading and installing Steam...
bitsadmin /transfer SteamDownload /download /priority foreground https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe "%temp%\Steam.exe"
start /wait "" /i "%temp%\SteamSetup.exe"
echo Steam installed with success!
pause
goto menu2

:instalar_vscode
cls
echo Downloading and installing VSCode...
bitsadmin /transfer VSCodeDownload /download /priority foreground https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user "%temp%\VSCode.exe"
start /wait "" /i "%temp%\VSCodeSetup.exe"
echo VSCode installed with success!
pause
goto menu2

:instalar_notepad
cls
echo Downloading and installing NotePad...
bitsadmin /transfer NotePadDownload /download /priority foreground https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.7/npp.8.7.Installer.x64.exe "%temp%\NotePad.exe"
start /wait "" /i "%temp%\NotePadSetup.exe"
echo NotePad installed with success!
pause
goto menu2

:instalar_githubdesktop
cls
echo Downloading and installing GithubDesktop...
bitsadmin /transfer GithubDesktopDownload /download /priority foreground https://desktop.github.com/?ref_cta=download+desktop&ref_loc=installing+github+desktop&ref_page=docs "%temp%\GithubDesktop.exe"
start /wait "" /i "%temp%\GithubDesktop.exe"
echo GithubDesktop installed with success!
pause
goto menu2

:instalar_whatsapp
cls
echo Downloading and installing WhatsApp...
bitsadmin /transfer WhatsAppDownload /download /priority foreground https://get.microsoft.com/installer/download/9NKSQGP7F2NH?cid=website_cta_psi "%temp%\WhatsApp.exe"
start /wait "" /i "%temp%\WhatsApp.exe"
echo WhatsApp installed with success!
pause
goto menu2

:mudar_pagina
cls
goto :menu2

:mudar_pagina2
cls
goto :menu

:sair
cls
echo Exiting Multitool...
exit