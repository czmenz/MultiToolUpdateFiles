��&cls
::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDhOQQGMJleeA6YX/Ofr0/6CsVkJGucnfe8=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001
mode con cols=130 lines=30
cls
SETLOCAL ENABLEEXTENSIONS

set ver=2.0.0
echo %ver% > %localappdata%\MultiTool\version.txt

mkdir %temp%\MultiTool\ >NUL


goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
        goto main
    ) else (
        echo.
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        echo Failure: YOU NEED TO START AS ADMINISTRATOR
        timeout /t 2 >NUL
        exit
    )
    
    pause >nul



:end
exit


:main
color 9
cls
title Windows Multi Helper %ver%

echo            ██╗    ██╗      ███╗   ███╗██╗   ██╗██╗  ████████╗██╗██╗  ██╗███████╗██╗     ██████╗ ███████╗██████╗ 
echo            ██║    ██║      ████╗ ████║██║   ██║██║  ╚══██╔══╝██║██║  ██║██╔════╝██║     ██╔══██╗██╔════╝██╔══██╗
echo            ██║ █╗ ██║█████╗██╔████╔██║██║   ██║██║     ██║   ██║███████║█████╗  ██║     ██████╔╝█████╗  ██████╔╝
echo            ██║███╗██║╚════╝██║╚██╔╝██║██║   ██║██║     ██║   ██║██╔══██║██╔══╝  ██║     ██╔═══╝ ██╔══╝  ██╔══██╗
echo            ╚███╔███╔╝      ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║██║  ██║███████╗███████╗██║     ███████╗██║  ██║
echo             ╚══╝╚══╝       ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚══════╝╚═╝  ╚═╝

echo.

echo               ╔═════════════════════════════════════════════════════════════════════════════════════════════╗
echo               ║ [1] Windows Activator (Windows/Office)        [12] -------------                            ║
echo               ║ [2] Windows Utilities                         [13] -------------                            ║
echo               ║ [3] Reinstall Microsoft Store                 [14] -------------                            ║
echo               ║ [4] Uninstall Microsoft Edge                  [15] -------------                            ║
echo               ║ [5] Net Booster (Safe)                        [16] -------------                            ║
echo               ║ [6] Clear Temp/Prefetch (Safe)                [17] -------------                            ║
echo               ║ [7] Update all APPS                           [18] -------------                            ║
echo               ║ [8] Install VCRedist 2005-2022                                                              ║
echo               ║ [9] --------------                                                                          ║
echo               ║ [10] -------------                                                                          ║
echo               ║ [11] -------------                            [0] About                                     ║
echo               ║                                                                                             ║
echo               ╚═════════════════════════════════════════════════════════════════════════════════════════════╝
echo.              

echo.
set choice=
set /p choice=~multi_helper~ 
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%' == '5' goto 5
if '%choice%'=='6' goto 6
if '%choice%'=='7' goto 7
if '%choice%'=='8' goto 8


if '%choice%'=='0' goto 0
echo "%choice%" is not valid, try again
echo.
start "" "%~f0"
exit


:0
cls
echo.
echo Windows Multi Helper
echo Software Version: %ver%
echo Autor: Czmenz
echo.
echo Enter to back
PAUSE >NUL
start "" "%~f0"
exit



:1
echo.
echo Loading...
title Activator - Windows Multi Helper %ver%
powershell.exe "irm https://get.activated.win | iex"
start "" "%~f0"
exit



:2
echo.
echo Loading...
title Utilities - Windows Multi Helper %ver%
powershell.exe "irm "https://christitus.com/win" | iex"
start "" "%~f0"
exit

:3
echo.
echo Loading...
title MicrosoftReinstall - Windows Multi Helper %ver%
powershell.exe "Get-AppXPackage | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register """$($_.InstallLocation)\AppXManifest.xml"""}"
echo .

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Microsoft Edge Reinstalled" "Windows MultiHelper"
del temp_notify.vbs

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Restart may be required" "Windows MultiHelper"
del temp_notify.vbs

start "" "%~f0"
exit

:4
echo.
echo Loading...
title EdgeRemoval - Windows Multi Helper %ver%
powershell.exe "Get-AppxPackage *MicrosoftEdge* | Remove-AppxPackage"
echo.
echo Restart may be needed

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Uninstalled Microsoft Edge" "Windows MultiHelper"
del temp_notify.vbs

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Restart may be required" "Windows MultiHelper"
del temp_notify.vbs
start "" "%~f0"
exit


:5
echo.
echo Loading...
title NetBooster - Windows Multi Helper %ver%

:: Set DNS, Local, Hosts, and NetBT priority
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d 6 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d 5 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d 7 /f

:: Set Network Throttling Index and System Responsiveness
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
:: Post Video note: Even with System responsiveness set to 0 I believe windows still keeps a slight reserve

:: Set MaxUserPort, TcpTimedWaitDelay, and DefaultTTL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f

:: PowerShell commands for TCP settings
PowerShell.exe Set-NetTCPSetting -SettingName internet -AutoTuningLevelLocal disabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -ScalingHeuristics disabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -EcnCapability enabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -Timestamps enabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -MaxSynRetransmissions 2
PowerShell.exe Set-NetTcpSetting -SettingName internet -NonSackRttResiliency disabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -InitialRto 2000
PowerShell.exe Set-NetTcpSetting -SettingName internet -MinRto 300

:: PowerShell commands for offload and network settings
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling disabled
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney disabled
PowerShell.exe Disable-NetAdapterLso -Name *
PowerShell.exe Disable-NetAdapterChecksumOffload -Name *

:: netsh commands for TCP settings and MTU
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent

echo.
echo Restart may be needed

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Net Boosted" "Windows MultiHelper"
del temp_notify.vbs

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Restart needed for apply" "Windows MultiHelper"
del temp_notify.vbs
start "" "%~f0"
exit





:6
echo.
echo Loading...
echo Deleting Prefetch
del /f /s /q C:\Windows\prefetch\*
echo.
echo Deleting Temp
del /q /f /s %TEMP%\

echo Set objArgs = WScript.Arguments > temp_notify.vbs
echo Set objShell = CreateObject("WScript.Shell") >> temp_notify.vbs
echo objShell.Popup WScript.Arguments(0), 5, WScript.Arguments(1), 64 >> temp_notify.vbs
cscript //nologo temp_notify.vbs "Cleared Temp and Prefetch" "Windows MultiHelper"
del temp_notify.vbs
start "" "%~f0"
exit


:7
title Updating APPS - Windows Multi Helper %ver%
echo.
cls
echo.
echo                     ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗     █████╗ ██████╗ ██████╗ ███████╗
echo                     ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝
echo                     ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗      ███████║██████╔╝██████╔╝███████╗
echo                     ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝      ██╔══██║██╔═══╝ ██╔═══╝ ╚════██║
echo                     ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗    ██║  ██║██║     ██║     ███████║
echo                      ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝

echo.
WINGET UPGRADE --include-unknown
echo.
echo Click Enter to Install all Updates
pause >NUL

cls
echo.
echo                     ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗     █████╗ ██████╗ ██████╗ ███████╗
echo                     ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝
echo                     ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗      ███████║██████╔╝██████╔╝███████╗
echo                     ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝      ██╔══██║██╔═══╝ ██╔═══╝ ╚════██║
echo                     ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗    ██║  ██║██║     ██║     ███████║
echo                      ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝

WINGET UPGRADE --ALL
echo.
echo INSTALLING
echo ALL Updates Installed
timeout /t 3>NUL
start "" "%~f0"
exit


:8
title Install VCRedist - Windows Multi Helper %ver%
echo.
cls

echo                                    ██╗   ██╗ ██████╗██████╗ ███████╗██████╗ ██╗███████╗████████╗
echo                                    ██║   ██║██╔════╝██╔══██╗██╔════╝██╔══██╗██║██╔════╝╚══██╔══╝
echo                                    ██║   ██║██║     ██████╔╝█████╗  ██║  ██║██║███████╗   ██║   
echo                                    ╚██╗ ██╔╝██║     ██╔══██╗██╔══╝  ██║  ██║██║╚════██║   ██║   
echo                                     ╚████╔╝ ╚██████╗██║  ██║███████╗██████╔╝██║███████║   ██║   
echo                                      ╚═══╝   ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝╚══════╝   ╚═╝   

echo.
echo                                          ╔═══════════════════════════════════════╗
echo                                          ║ [1]. VCRedist 2005 (x64/x86)          ║
echo                                          ║ [2]. VCRedist 2008 (x64/x86)          ║
echo                                          ║ [3]. VCRedist 2010 (x64/x86)          ║
echo                                          ║ [4]. VCRedist 2012 (x64/x86)          ║
echo                                          ║ [5]. VCRedist 2013 (x64/x86)          ║
echo                                          ║ [6]. VCRedist 2015-2022 (x64/x86)     ║
echo                                          ╚═══════════════════════════════════════╝

echo                                          ╔═══════════════════════════════════════╗
echo                                          ║           [A]. Install ALL            ║
echo                                          ║           [0]. Go Back                ║
echo                                          ╚═══════════════════════════════════════╝
echo. 
set choice=
set /p choice=~multi_helper~ 
if '%choice%'=='1' goto 81
if '%choice%'=='2' goto 82
if '%choice%'=='3' goto 83
if '%choice%'=='4' goto 84
if '%choice%' == '5' goto 85
if '%choice%'=='6' goto 86
if '%choice%'=='A' goto 8A

if '%choice%'=='0' goto main
goto 8

:81
echo.
echo Downloading 2005
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339297182850744430/vcredist2005_x64.exe?ex=67ae3533&is=67ace3b3&hm=53c24fcc2da66432ff3d3f9f7e7c44d6c09a81715daee90c3e521cdd573571e2&' -OutFile '%temp%\MultiTool\2005.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339300312632135691/vcredist2005_x86.exe?ex=67ae381d&is=67ace69d&hm=1b6a1df1cf3dedbb09ef65b5bfaebf390c98fc79f49a0131324be145d7d702e3&' -OutFile '%temp%\MultiTool\2005x86.exe'"
echo Installing...
start /wait %temp%\MultiTool\2005.exe /q
start /wait %temp%\MultiTool\2005x86.exe /q
del %temp%\MultiTool\2005.exe
del %temp%\MultiTool\2005x86.exe
start "" "%~f0"
exit

:82
echo.
echo Downloading 2008
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339301969000530032/vcredist2008_x64.exe?ex=67ae39a8&is=67ace828&hm=529f506d0952cfce02b176400b9288c5e73a8843e2cc398e225f15285d0ab580&' -OutFile '%temp%\MultiTool\2008.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339301978991493131/vcredist2008_x86.exe?ex=67ae39aa&is=67ace82a&hm=b4d681732396d8d1ad06967f5635bb0ea3c0b8f0f4d04b8327f5649a3173e3fa&' -OutFile '%temp%\MultiTool\2008x86.exe'"
echo Installing...
start /wait %temp%\MultiTool\2008.exe /q
start /wait %temp%\MultiTool\2008x86.exe /q
del %temp%\MultiTool\2008.exe
del %temp%\MultiTool\2008x86.exe
start "" "%~f0"
exit

:83
echo.
echo Downloading 2010
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302600411185233/vcredist2010_x64.exe?ex=67ae3a3e&is=67ace8be&hm=c6aa4d23d25d03a48cd4b3bd1fe83dbc8518525e96facf146f9fa46f16c1e60a&' -OutFile '%temp%\MultiTool\2010.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302570346287186/vcredist2010_x86.exe?ex=67ae3a37&is=67ace8b7&hm=2e2fb99c1d01986cce1d0d394309a4f0e1e60ae3a1176022bfd9e414757b3344&' -OutFile '%temp%\MultiTool\2010x86.exe'"
echo Installing...
start /wait %temp%\MultiTool\2010.exe /q
start /wait %temp%\MultiTool\2010x86.exe /q
del %temp%\MultiTool\2010.exe
del %temp%\MultiTool\2010x86.exe
start "" "%~f0"
exit

:84
echo.
echo Downloading 2012
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302814270226564/vcredist2012_x64.exe?ex=67ae3a71&is=67ace8f1&hm=37114523c431323bb807eadc4a27dd6a2295ad4ffd0fb25fcfaa0c6ae9cabec3&' -OutFile '%temp%\MultiTool\2012.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302819928346694/vcredist2012_x86.exe?ex=67ae3a73&is=67ace8f3&hm=18022ca6a2d1b49ba7a582753bc6235b00fe85a568abf29892f9de43feab47bc&' -OutFile '%temp%\MultiTool\2012x86.exe'"
echo Installing...
start /wait %temp%\MultiTool\2012.exe /q
start /wait %temp%\MultiTool\2012x86.exe /q
del %temp%\MultiTool\2012.exe
del %temp%\MultiTool\2012x86.exe
start "" "%~f0"
exit

:85
echo.
echo Downloading 2013
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339303258128257055/vcredist2013_x64.exe?ex=67ae3adb&is=67ace95b&hm=bcca7a8c90eb73fcb77c167a8f3dbaf6161e46421fecd18336cff0691889a1d2&' -OutFile '%temp%\MultiTool\2013.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339303262351921162/vcredist2013_x86.exe?ex=67ae3adc&is=67ace95c&hm=ddb3f76e5cda575c35cdabd227bf83c9f79d298b63d2737eff36f32a27a6270c&' -OutFile '%temp%\MultiTool\2013x86.exe'"
echo Installing...
start /wait %temp%\MultiTool\2013.exe /q
start /wait %temp%\MultiTool\2013x86.exe /q
del %temp%\MultiTool\2013.exe
del %temp%\MultiTool\2013x86.exe
start "" "%~f0"
exit


:86
echo.
echo Downloading 2015, 2017, 2019 and 2022
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -OutFile '%temp%\MultiTool\2015792.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -OutFile '%temp%\MultiTool\2015792x86.exe'"
echo Installing...
start /wait %temp%\MultiTool\2015792.exe /q
start /wait %temp%\MultiTool\2015792x86.exe /q
del %temp%\MultiTool\2015792.exe
del %temp%\MultiTool\2015792x86.exe
start "" "%~f0"
exit

:8A
echo Downloading 2015, 2017, 2019 and 2022
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -OutFile '%temp%\MultiTool\2015792.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -OutFile '%temp%\MultiTool\2015792x86.exe'"

echo Downloading 2013
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339303258128257055/vcredist2013_x64.exe?ex=67ae3adb&is=67ace95b&hm=bcca7a8c90eb73fcb77c167a8f3dbaf6161e46421fecd18336cff0691889a1d2&' -OutFile '%temp%\MultiTool\2013.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339303262351921162/vcredist2013_x86.exe?ex=67ae3adc&is=67ace95c&hm=ddb3f76e5cda575c35cdabd227bf83c9f79d298b63d2737eff36f32a27a6270c&' -OutFile '%temp%\MultiTool\2013x86.exe'"

echo Downloading 2012
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302814270226564/vcredist2012_x64.exe?ex=67ae3a71&is=67ace8f1&hm=37114523c431323bb807eadc4a27dd6a2295ad4ffd0fb25fcfaa0c6ae9cabec3&' -OutFile '%temp%\MultiTool\2012.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302819928346694/vcredist2012_x86.exe?ex=67ae3a73&is=67ace8f3&hm=18022ca6a2d1b49ba7a582753bc6235b00fe85a568abf29892f9de43feab47bc&' -OutFile '%temp%\MultiTool\2012x86.exe'"

echo Downloading 2010
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302600411185233/vcredist2010_x64.exe?ex=67ae3a3e&is=67ace8be&hm=c6aa4d23d25d03a48cd4b3bd1fe83dbc8518525e96facf146f9fa46f16c1e60a&' -OutFile '%temp%\MultiTool\2010.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339302570346287186/vcredist2010_x86.exe?ex=67ae3a37&is=67ace8b7&hm=2e2fb99c1d01986cce1d0d394309a4f0e1e60ae3a1176022bfd9e414757b3344&' -OutFile '%temp%\MultiTool\2010x86.exe'"

echo Downloading 2008
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339301969000530032/vcredist2008_x64.exe?ex=67ae39a8&is=67ace828&hm=529f506d0952cfce02b176400b9288c5e73a8843e2cc398e225f15285d0ab580&' -OutFile '%temp%\MultiTool\2008.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339301978991493131/vcredist2008_x86.exe?ex=67ae39aa&is=67ace82a&hm=b4d681732396d8d1ad06967f5635bb0ea3c0b8f0f4d04b8327f5649a3173e3fa&' -OutFile '%temp%\MultiTool\2008x86.exe'"

echo Downloading 2005
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339297182850744430/vcredist2005_x64.exe?ex=67ae3533&is=67ace3b3&hm=53c24fcc2da66432ff3d3f9f7e7c44d6c09a81715daee90c3e521cdd573571e2&' -OutFile '%temp%\MultiTool\2005.exe'"
powershell -NoProfile -ExecutionPolicy Bypass -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1339296835583348786/1339300312632135691/vcredist2005_x86.exe?ex=67ae381d&is=67ace69d&hm=1b6a1df1cf3dedbb09ef65b5bfaebf390c98fc79f49a0131324be145d7d702e3&' -OutFile '%temp%\MultiTool\2005x86.exe'"

echo Installing...
start /wait %temp%\MultiTool\2015792.exe /q
start /wait %temp%\MultiTool\2015792x86.exe /q

echo Installing...
start /wait %temp%\MultiTool\2013.exe /q
start /wait %temp%\MultiTool\2013x86.exe /q

echo Installing...
start /wait %temp%\MultiTool\2012.exe /q
start /wait %temp%\MultiTool\2012x86.exe /q

echo Installing...
start /wait %temp%\MultiTool\2010.exe /q
start /wait %temp%\MultiTool\2010x86.exe /q

echo Installing...
start /wait %temp%\MultiTool\2008.exe /q
start /wait %temp%\MultiTool\2008x86.exe /q

echo Installing...
start /wait %temp%\MultiTool\2005.exe /q
start /wait %temp%\MultiTool\2005x86.exe /q


del %temp%\MultiTool\2015792.exe
del %temp%\MultiTool\2015792x86.exe

del %temp%\MultiTool\2013.exe
del %temp%\MultiTool\2013x86.exe

del %temp%\MultiTool\2012.exe
del %temp%\MultiTool\2012x86.exe

del %temp%\MultiTool\2010.exe
del %temp%\MultiTool\2010x86.exe

del %temp%\MultiTool\2008.exe
del %temp%\MultiTool\2008x86.exe

del %temp%\MultiTool\2005.exe
del %temp%\MultiTool\2005x86.exe

start "" "%~f0"
exit