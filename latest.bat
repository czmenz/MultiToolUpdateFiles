��&cls
@echo off
chcp 65001
mode con cols=130 lines=30
cls
SETLOCAL ENABLEEXTENSIONS

set ver=2.1.1
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
chcp 65001 >NUL
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
echo               ║ [5] Net Booster                               [16] -------------                            ║
echo               ║ [6] Clear Temp/Prefetch                       [17] -------------                            ║
echo               ║ [7] Update all APPS                           [18] Install OS ISO                           ║
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


if '%choice%'=='18' goto 18

if '%choice%'=='0' goto 0
echo "%choice%" is not valid, try again
echo.
goto main
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
goto main
exit



:1
echo.
echo Loading...
title Activator - Windows Multi Helper %ver%
chcp 437 >NUL
powershell.exe "irm https://get.activated.win | iex"
goto main
exit



:2
echo.
echo Loading...
title Utilities - Windows Multi Helper %ver%
chcp 437 >NUL
powershell.exe "irm "https://christitus.com/win" | iex"
goto main
exit

:3
echo.
echo Loading...
title MicrosoftReinstall - Windows Multi Helper %ver%
chcp 437 >NUL
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

goto main
exit

:4
echo.
echo Loading...
title EdgeRemoval - Windows Multi Helper %ver%
chcp 437 >NUL
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
goto main
exit


:5
echo.
echo Loading...
chcp 437 >NUL
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
goto main
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
goto main
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
goto main
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
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2005.exe" "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2005x86.exe" "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE"
echo Installing...
start /wait %temp%\MultiTool\2005.exe /q
start /wait %temp%\MultiTool\2005x86.exe /q
del %temp%\MultiTool\2005.exe
del %temp%\MultiTool\2005x86.exe
goto 8
exit

:82
echo.
echo Downloading 2008
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2008.exe" "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2008x86.exe" "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe"
echo Installing...
start /wait %temp%\MultiTool\2008.exe /q
start /wait %temp%\MultiTool\2008x86.exe /q
del %temp%\MultiTool\2008.exe
del %temp%\MultiTool\2008x86.exe
goto 8
exit

:83
echo.
echo Downloading 2010
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2010.exe" "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2010x86.exe" "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe"
echo Installing...
start /wait %temp%\MultiTool\2010.exe /q
start /wait %temp%\MultiTool\2010x86.exe /q
del %temp%\MultiTool\2010.exe
del %temp%\MultiTool\2010x86.exe
goto 8
exit

:84
echo.
echo Downloading 2012
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2012.exe" "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2012x86.exe" "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe"
echo Installing...
start /wait %temp%\MultiTool\2012.exe /q
start /wait %temp%\MultiTool\2012x86.exe /q
del %temp%\MultiTool\2012.exe
del %temp%\MultiTool\2012x86.exe
goto 8
exit

:85
echo.
echo Downloading 2013
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2013.exe" "https://download.microsoft.com/download/2/e/6/2e61cfa4-993b-4dd4-91da-3737cd5cd6e3/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2013x86.exe" "https://download.microsoft.com/download/2/e/6/2e61cfa4-993b-4dd4-91da-3737cd5cd6e3/vcredist_x86.exe"
echo Installing...
start /wait %temp%\MultiTool\2013.exe /q
start /wait %temp%\MultiTool\2013x86.exe /q
del %temp%\MultiTool\2013.exe
del %temp%\MultiTool\2013x86.exe
goto 8
exit

:86
echo.
echo Downloading 2015, 2017, 2019 and 2022
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2015792.exe" "https://download.visualstudio.microsoft.com/download/pr/285b28c7-3cf9-47fb-9be8-01cf5323a8df/8F9FB1B3CFE6E5092CF1225ECD6659DAB7CE50B8BF935CB79BFEDE1F3C895240/VC_redist.x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2015792x86.exe" "https://download.visualstudio.microsoft.com/download/pr/285b28c7-3cf9-47fb-9be8-01cf5323a8df/C4E3992F3883005881CF3937F9E33F1C7D792AC1C860EA9C52D8F120A16A7EB1/VC_redist.x86.exe"
echo Installing...
start /wait %temp%\MultiTool\2015792.exe /q
start /wait %temp%\MultiTool\2015792x86.exe /q
del %temp%\MultiTool\2015792.exe
del %temp%\MultiTool\2015792x86.exe
goto 8
exit

:8A
echo Downloading 2015, 2017, 2019 and 2022
echo.
curl -o "%temp%\MultiTool\2015792.exe" "https://download.visualstudio.microsoft.com/download/pr/285b28c7-3cf9-47fb-9be8-01cf5323a8df/C4E3992F3883005881CF3937F9E33F1C7D792AC1C860EA9C52D8F120A16A7EB1/VC_redist.x86.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2015792x86.exe" "https://download.visualstudio.microsoft.com/download/pr/285b28c7-3cf9-47fb-9be8-01cf5323a8df/C4E3992F3883005881CF3937F9E33F1C7D792AC1C860EA9C52D8F120A16A7EB1/VC_redist.x86.exe"

echo Downloading 2013
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2013.exe" "https://download.microsoft.com/download/2/e/6/2e61cfa4-993b-4dd4-91da-3737cd5cd6e3/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2013x86.exe" "https://download.microsoft.com/download/2/e/6/2e61cfa4-993b-4dd4-91da-3737cd5cd6e3/vcredist_x86.exe"

echo Downloading 2012
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2012.exe" "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2012x86.exe" "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe"

echo Downloading 2010
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2010.exe" "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2010x86.exe" "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe"

echo Downloading 2008
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2008.exe" "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2008x86.exe" "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe"

echo Downloading 2005
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2005.exe" "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE"
echo.
curl --ssl-no-revoke -o "%temp%\MultiTool\2005x86.exe" "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE"

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

goto main
exit


:18sel
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion
REM echo You chose !folder!

endlocal



:18
title Operating Systems - Windows Multi Helper %ver%
echo.
cls
echo                    ██████╗  ██████╗ ██╗    ██╗███╗   ██╗██╗      ██████╗  █████╗ ██████╗      ██████╗ ███████╗
echo                    ██╔══██╗██╔═══██╗██║    ██║████╗  ██║██║     ██╔═══██╗██╔══██╗██╔══██╗    ██╔═══██╗██╔════╝
echo                    ██║  ██║██║   ██║██║ █╗ ██║██╔██╗ ██║██║     ██║   ██║███████║██║  ██║    ██║   ██║███████╗
echo                    ██║  ██║██║   ██║██║███╗██║██║╚██╗██║██║     ██║   ██║██╔══██║██║  ██║    ██║   ██║╚════██║
echo                    ██████╔╝╚██████╔╝╚███╔███╔╝██║ ╚████║███████╗╚██████╔╝██║  ██║██████╔╝    ╚██████╔╝███████║
echo                    ╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝      ╚═════╝ ╚══════╝

echo.
echo                     ╔═════════ WINDOWS ═════════╗ ╔═════════= LINUX ══════════╗ ╔═════════ MAC OS ══════════╗
echo                     ║ [1]. Windows 11  (5GB)    ║ ║ [7]. Ubuntu      (5GB)    ║ ║ [13]. BigSur     (13GB)   ║
echo                     ║ [2]. Windows 10  (5GB)    ║ ║ [8]. Fedora      (4GB)    ║ ║ [14]. Catalina   (8GB)    ║
echo                     ║ [3]. Windows 8.1 (3GB)    ║ ║ [9]. Pop!_OS     (4GB)    ║ ║ [15]. HighSierra (6GB)    ║
echo                     ║ [4]. Windows 7   (5GB)    ║ ║ [10]. Debian     (5GB)    ║ ║ [16]. Mojave     (6GB)    ║
echo                     ║ [5]. Windows XP  (600MB)  ║ ║ [11]. Arch Linux (1GB)    ║ ║ [17]. Monterey   (14GB)   ║
echo                     ║ [6]. Windows ME  (400MB)  ║ ║ [12]. Linux Mint (3GB)    ║ ║ [18]. Ventura    (16GB)   ║
echo                     ╚═══════════════════════════╝ ╚═══════════════════════════╝ ╚═══════════════════════════╝

echo                     ╔══════════════════════════════════════=════════════════════════════════════════════════╗
echo                     ║     These are not all Operating systems in world. They are just the most popular.     ║
echo                     ╚═══════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo                                                    ╔════════════════════════╗
echo                                                    ║     [0]. Main Menu     ║
echo                                                    ╚════════════════════════╝

set choice=
set /p choice=~multi_helper~ 
if '%choice%'=='1' goto 181
if '%choice%'=='2' goto 182
if '%choice%'=='3' goto 183
if '%choice%'=='4' goto 184
if '%choice%'=='5' goto 185
if '%choice%'=='6' goto 186

if '%choice%'=='7' goto 187
if '%choice%'=='8' goto 188
if '%choice%'=='9' goto 189
if '%choice%'=='10' goto 1810
if '%choice%'=='11' goto 1811
if '%choice%'=='12' goto 1812

if '%choice%'=='13' goto 1813
if '%choice%'=='14' goto 1814
if '%choice%'=='15' goto 1815
if '%choice%'=='16' goto 1816
if '%choice%'=='17' goto 1817
if '%choice%'=='18' goto 1818

if '%choice%'=='0' goto main
goto 18





REM ================================ WINDOWS ==================================
REM ================================ WINDOWS ==================================
REM ================================ WINDOWS ==================================



:181
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Windows11.iso https://dn720605.ca.archive.org/0/items/windows11_20220930/Win11_22H2_English_x64v1.iso

move %temp%\MultiTool\Windows11.iso %folder%\Windows11.iso

echo.
echo Windows 11 ISO Downloaded to %folder%
pause
goto main


:182
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Windows10.iso https://dn721103.ca.archive.org/0/items/en-us_windows_10_consumer_editions_version_22h2_updated_feb_2023_x64_dvd_c29e4bb3/en-us_windows_10_consumer_editions_version_22h2_updated_feb_2023_x64_dvd_c29e4bb3.iso

move %temp%\MultiTool\Windows10.iso %folder%\Windows10.iso

echo.
echo Windows 10 ISO Downloaded to %folder%
pause
goto main


:183
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Windows81.iso https://dn720208.ca.archive.org/0/items/win-8.1-english-x-64_20211019/Win8.1_English_x64.iso

move %temp%\MultiTool\Windows81.iso %folder%\Windows81.iso

echo.
echo Windows 8.1 ISO Downloaded to %folder%
pause
goto main


:184
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Windows7.iso https://dn720706.ca.archive.org/0/items/Windows7-iso/win7_64_bit.iso

move %temp%\MultiTool\Windows7.iso %folder%\Windows7.iso

echo.
echo Windows 7 ISO Downloaded to %folder%
pause
goto main


:185
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\WindowsXP.iso https://dn720700.ca.archive.org/0/items/WindowsXPProfessional64BitCorporateEdition/Windows%20XP%20Professional%2064-bit%20Corporate%20Edition%28CD%20Key%20VCFQD-V9FX9-46WVH-K3CD4-4J3JM%29.iso

move %temp%\MultiTool\WindowsXP.iso %folder%\WindowsXP.iso

echo.
echo Windows XP ISO Downloaded to %folder%
pause
goto main


:186
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\WindowsME.iso https://dl-alt1.winworldpc.com/Microsoft%20Windows%20ME%20(4.90.3000)%20(OEM%20Full).7z

move %temp%\MultiTool\WindowsME.iso %folder%\WindowsME.iso

echo.
echo Windows ME ISO Downloaded to %folder%
pause
goto main























REM ================================ LINUX ====================================
REM ================================ LINUX ====================================
REM ================================ LINUX ====================================


:187
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Ubuntu.iso https://cz.releases.ubuntu.com/24.10/ubuntu-24.10-desktop-amd64.iso

move %temp%\MultiTool\Ubuntu.iso %folder%\Ubuntu.iso

echo.
echo Ubuntu ISO Downloaded to %folder%
pause
goto main


:188
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Fedora.iso https://mirror.karneval.cz/pub/linux/fedora/linux/releases/41/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-41-1.4.iso

move %temp%\MultiTool\Fedora.iso %folder%\Fedora.iso

echo.
echo Fedora ISO Downloaded to %folder%
pause
goto main


:189
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\PopOS.iso https://iso.pop-os.org/22.04/amd64/intel/49/pop-os_22.04_amd64_intel_49.iso

move %temp%\MultiTool\PopOS.iso %folder%\PopOS.iso

echo.
echo PopOS ISO Downloaded to %folder%
pause
goto main


:1810
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Debian.iso https://cdimage.debian.org/debian-cd/12.9.0-live/amd64/iso-hybrid/debian-live-12.9.0-amd64-gnome.iso

move %temp%\MultiTool\Debian.iso %folder%\Debian.iso

echo.
echo Debian ISO Downloaded to %folder%
pause
goto main


:1811
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\ArchLinux.iso https://geo.mirror.pkgbuild.com/iso/2025.02.01/archlinux-2025.02.01-x86_64.iso

move %temp%\MultiTool\ArchLinux.iso %folder%\ArchLinux.iso

echo.
echo ArchLinux ISO Downloaded to %folder%
pause
goto main


:1812
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\LinuxMint.iso https://mirrors.cicku.me/linuxmint/iso/stable/22.1/linuxmint-22.1-cinnamon-64bit.iso

move %temp%\MultiTool\LinuxMint.iso %folder%\LinuxMint.iso

echo.
echo LinuxMint ISO Downloaded to %folder%
pause
goto main























REM ================================ MAC OS ====================================
REM ================================ MAC OS ====================================
REM ================================ MAC OS ====================================


:1813
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\BigSur.iso https://archive.org/download/macos_iso/BigSur_11.7.1.iso

move %temp%\MultiTool\BigSur.iso %folder%\BigSur.iso

echo.
echo BigSur ISO Downloaded to %folder%
pause
goto main


:1814
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Catalina.iso https://archive.org/download/macos_iso/Catalina_10.15.7.iso

move %temp%\MultiTool\Catalina.iso %folder%\Catalina.iso

echo.
echo Catalina ISO Downloaded to %folder%
pause
goto main


:1815
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\HighSierra.iso https://archive.org/download/macos_iso/HighSierra_10.13.6.iso

move %temp%\MultiTool\HighSierra.iso %folder%\HighSierra.iso

echo.
echo HighSierra ISO Downloaded to %folder%
pause
goto main


:1816
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Mojave.iso https://archive.org/download/macos_iso/Mojave_10.14.6.iso

move %temp%\MultiTool\Mojave.iso %folder%\Mojave.iso

echo.
echo Mojave ISO Downloaded to %folder%
pause
goto main


:1817
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Monterey.iso https://archive.org/download/macos_iso/Monterey_12.6.1.iso

move %temp%\MultiTool\Monterey.iso %folder%\Monterey.iso

echo.
echo Monterey ISO Downloaded to %folder%
pause
goto main


:1818
setlocal

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

chcp 437 >NUL
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion

endlocal

echo.
curl --ssl-no-revoke -o %temp%\MultiTool\Ventura.iso https://archive.org/download/macos_iso/Ventura_13.0.1.iso

move %temp%\MultiTool\Ventura.iso %folder%\Ventura.iso

echo.
echo Ventura ISO Downloaded to %folder%
pause
goto main