@ECHO OFF
REM ############################################################################
REM #
REM # [EN] Remove telemetry updates for Windows 7 and 8.1
REM #
REM # Sources :
REM # https://gist.github.com/xvitaly/eafa75ed2cb79b3bd4e9#file-remove_crw-cmd
REM # 
REM ############################################################################
REM # History
REM # Date     Who      What
REM # 14Sep15  Tim S    Removed some of the KBs from original list.
REM ############################################################################

echo Uninstalling KB3075249 (telemetry for Win7/8.1)
start /w wusa.exe /uninstall /kb:3075249 /quiet /norestart
echo Uninstalling KB3080149 (telemetry for Win7/8.1)
start /w wusa.exe /uninstall /kb:3080149 /quiet /norestart
echo Uninstalling KB3021917 (telemetry for Win7)
start /w wusa.exe /uninstall /kb:3021917 /quiet /norestart
echo Uninstalling KB3022345 (telemetry)
start /w wusa.exe /uninstall /kb:3022345 /quiet /norestart
echo Uninstalling KB3068708 (telemetry)
start /w wusa.exe /uninstall /kb:3068708 /quiet /norestart
echo Uninstalling KB3044374 (Get Windows 10 for Win8.1)
start /w wusa.exe /uninstall /kb:3044374 /quiet /norestart
echo Uninstalling KB3035583 (Get Windows 10 for Win7sp1/8.1)
start /w wusa.exe /uninstall /kb:3035583 /quiet /norestart
echo Uninstalling KB2990214 (Get Windows 10 for Win7)
start /w wusa.exe /uninstall /kb:2990214 /quiet /norestart
echo Uninstalling KB2952664 (Get Windows 10 assistant)
start /w wusa.exe /uninstall /kb:2952664 /quiet /norestart

    PAUSE
