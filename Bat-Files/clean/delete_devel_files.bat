REM @echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

set DELETE_CMD=del
set WX_VERSION_SUFFIX=%1
REM set WX_VERSION_SUFFIX=30

echo Cleaning files in the devel%WX_VERSION_SUFFIX% folders

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\codeblocks.exe
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\cb_console_runner.exe
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\codeblocks.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\libcodeblocks.a
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\libwxscintilla_cb.a

REM PAUSE
