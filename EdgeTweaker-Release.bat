@echo off
SETLOCAL EnableDelayedExpansion
SET version=1.0
title EdgeTweaker-Release
chcp 65000
color 0
cls
goto startmenu

:startmenu
@echo off
mode con cols=61 lines=17
cls
color a
echo.
echo.
echo.                        Edge Tweaker
echo.            ===================================
echo.
echo.                 1:Tweaks          2:Revert
echo.
echo.                           X:Exit
echo.
echo.            ===================================
echo.
SET /P AREYOUSURE=
IF %AREYOUSURE%==1 GOTO tweaks
IF %AREYOUSURE%==2 GOTO revents
IF %AREYOUSURE%==X GOTO ext
IF %AREYOUSURE%==x GOTO ext
goto startmenu

:tweaks
@echo off
mode con cols=61 lines=30
cls
color b
echo.
echo.
echo.                        Tweaks
echo.          ===================================
echo.
echo.           1: Disable Alternate Error Pages
echo.           2: Disable Autofill Address
echo.           3: Disable Autofill Credit Card
echo.           4: Configure Edge Tracking
echo.           5: Disable Edge Shopping Assistant
echo.           6: Disable Sidebar
echo.           7: Disable Payment Method Query
echo.           8: Disable Personalization Reporting
echo.           9: Disable Web Resolve Navigation Errors Service
echo.          10: Disable Site Safety Services (Not Recommend)
echo.          11: Disable Smart Screen Filter
echo.          12: Disable Feedback
echo.          13: Disable Web Widget
echo.          14: Stop Edge Auto Import
echo.          15: Stop Edge Spdate Service
echo.           X: Go Back
echo.
echo.         ===================================
SET /P AREYOUSURE=
IF %AREYOUSURE%==1 GOTO aep
IF %AREYOUSURE%==2 GOTO atf
IF %AREYOUSURE%==3 GOTO cdc
IF %AREYOUSURE%==4 GOTO etrack
IF %AREYOUSURE%==5 GOTO esa
IF %AREYOUSURE%==6 GOTO sibar
IF %AREYOUSURE%==7 GOTO pmq
IF %AREYOUSURE%==8 GOTO Preport
IF %AREYOUSURE%==9 GOTO webres
IF %AREYOUSURE%==10 GOTO sitesafe
IF %AREYOUSURE%==11 GOTO ssf
IF %AREYOUSURE%==12 GOTO fed
IF %AREYOUSURE%==13 GOTO webwig
IF %AREYOUSURE%==14 GOTO sautoimp
IF %AREYOUSURE%==15 GOTO eupdis
IF %AREYOUSURE%==X GOTO back
IF %AREYOUSURE%==x GOTO back
goto tweaks

:revents
@echo off
mode con cols=61 lines=30
cls
color c
echo.
echo.
echo.                        Revent
echo.          ===================================
echo.
echo.           1: Enable Alternate Error Pages
echo.           2: Enable Autofill Address
echo.           3: Enable Autofill Credit Card
echo.           4: Remove Configure Edge Tracking
echo.           5: Enable Edge Shopping Assistant
echo.           6: Enable Sidebar
echo.           7: Enable Payment Method Query
echo.           8: Enable Personalization Reporting
echo.           9: Enable Web Resolve Navigation Errors Service
echo.          10: Enable Site Safety Services
echo.          11: Enable Smart Screen Filter
echo.          12: Enable Feedback
echo.          13: Enable Web Widget
echo.          14: Start Edge Auto Import
echo.          15: Start Edge Update Services
echo.           X: Go Back
echo.
echo.          ===================================

SET /P AREYOUSURE=
IF %AREYOUSURE%==1 GOTO reaep
IF %AREYOUSURE%==2 GOTO reatf
IF %AREYOUSURE%==3 GOTO recdc
IF %AREYOUSURE%==4 GOTO retrack
IF %AREYOUSURE%==5 GOTO resa
IF %AREYOUSURE%==6 GOTO resibar
IF %AREYOUSURE%==7 GOTO repmq
IF %AREYOUSURE%==8 GOTO rePreport
IF %AREYOUSURE%==9 GOTO rewebres
IF %AREYOUSURE%==10 GOTO resitesafe
IF %AREYOUSURE%==11 GOTO ressf
IF %AREYOUSURE%==12 GOTO refed
IF %AREYOUSURE%==13 GOTO rewebwig
IF %AREYOUSURE%==14 GOTO resautoimp
IF %AREYOUSURE%==15 GOTO eupen
IF %AREYOUSURE%==X GOTO back
IF %AREYOUSURE%==x GOTO back
goto revents

:aep
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AlternateErrorPagesEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:atf
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillAddressEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:cdc
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillCreditCardEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:etrack
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureDoNotTrack" /t REG_DWORD /d 1 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:esa
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:sibar
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:pmq
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PaymentMethodQueryEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:Preport
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:webres
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ResolveNavigationErrorsUseWebService" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:sitesafe
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SiteSafetyServicesEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:ssf
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:fed
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:webwig
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d 0 /f
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:sautoimp
cls
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Edge" /v "AutoImportAtFirstRun" /t REG_DWORD /d 4 /f.
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:back
cls
goto startmenu

:ext
cls
exit

:reaep
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AlternateErrorPagesEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:reatf
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutofilldeleteressEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:recdc
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillCreditCardEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:retrack
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureDoNotTrack"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:resa
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:resibar
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HubsSidebarEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:repmq
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PaymentMethodQueryEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:rePreport
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:rewebres
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ResolveNavigationErrorsUseWebService"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:resitesafe
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SiteSafetyServicesEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:ressf
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:refed
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:rewebwig
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:resautoimp
cls
reg delete "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Edge" /v "AutoImportAtFirstRun"
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents

:eupdis
cls
sc config "MicrosoftEdgeElevationService" start=disable
sc config "edgeupdate" start=disabled
sc config "edgeupdatem" start=disabled
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto tweaks

:eupen
cls
sc config "MicrosoftEdgeElevationService" start=demand
sc config "edgeupdate" start=demand
sc config "edgeupdatem" start=demand
cls
echo.
Echo.2
timeout /t 1 /nobreak > nul
Echo.1
timeout /t 1 /nobreak > nul
goto revents


