REM @echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

set DELETE_CMD=del
REM set CB_OBJECT_DIR=.objs
set CB_OBJECT_DIR=%1

echo Cleaning %CB_OBJECT_DIR% PCH files

%DELETE_CMD% %CB_OBJECT_DIR%\include\*.h.gch

REM PAUSE
