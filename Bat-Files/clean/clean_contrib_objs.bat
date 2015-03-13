REM @echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

echo Cleaning .objs folder of contrib workspace items

set DELETE_CMD=del
REM set CB_OBJECT_DIR=.objs
set CB_OBJECT_DIR=%1


%DELETE_CMD% %CB_OBJECT_DIR%\plugins\codecompletion\cctest\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\codecompletion\cctest\parser\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\codecompletion\cctest\cctest\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\codecompletion\cctest\cctest\*.res

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\wxContribItems\wxFlatNotebook\wxFlatNotebook\src\wxFlatNotebook\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\AutoVersioning\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\DoxyBlocks\*.res
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\DoxyBlocks\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\codesnippets\plugin\*.res
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\codesnippets\plugin\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\ThreadSearch\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\ToolsPlus\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\contrib\help_plugin\zlib\zlib\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\tools\Addr2LineUI\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\tools\Addr2LineUI\*.res
%DELETE_CMD% %CB_OBJECT_DIR%\tools\CbLauncher\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\tools\CbLauncher\*.res
%DELETE_CMD% %CB_OBJECT_DIR%\tools\cb_share_config\*.o

REM PAUSE
