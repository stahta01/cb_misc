REM @echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

echo Cleaning core .objs folder except for include PCH files

set DELETE_CMD=del
REM set CB_OBJECT_DIR=.objs
set CB_OBJECT_DIR=%1

%DELETE_CMD% %CB_OBJECT_DIR%\base\tinyxml\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\base\exchndl\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\build_tools\autorevision\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\abbreviations\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\plugins\astyle\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\astyle\astyle\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\autosave\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\classwizard\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\codecompletion\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\codecompletion\parser\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\compilergcc\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\compilergcc\depslib\src\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\debuggergdb\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\defaultmimehandler\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\occurrenceshighlighting\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\openfileslist\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\projectsimporter\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\scriptedwizard\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\todo\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\plugins\xpmanifest\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\sdk\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\mozilla_chardet\src\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\sdk\wxscintilla\src\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\wxscintilla\src\scintilla\src\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\wxscintilla\src\scintilla\lexlib\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\wxscintilla\src\scintilla\lexers\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\sdk\wxpropgrid\src\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\sdk\scripting\bindings\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\scripting\sqplus\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\scripting\sqstdlib\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\sdk\scripting\squirrel\*.o

%DELETE_CMD% %CB_OBJECT_DIR%\src\*.o
%DELETE_CMD% %CB_OBJECT_DIR%\src\resources\*.res

%DELETE_CMD% %CB_OBJECT_DIR%\tools\ConsoleRunner\*.o

REM PAUSE
