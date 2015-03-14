REM @echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

set DELETE_CMD=del
set WX_VERSION_SUFFIX=%1
REM set WX_VERSION_SUFFIX=30

echo Deleting most files in the devel%WX_VERSION_SUFFIX% folders; does NOT clean Wizard Templates

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\*.exe
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\*.a
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\codeblocks.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxchartctrl.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxcustombutton.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxflatnotebook.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wximagepanel.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxkwic.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxled.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxpropgrid.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxsmithlib.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxspeedbutton.dll
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\wxtreelist.dll

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\tips.txt
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\*.zip

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.bmp
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.cbp
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.template
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.h
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.c
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\templates\*.cpp

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\SpellChecker\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\SpellChecker\OnlineSpellChecking.xml

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\scripts\*.script
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\scripts\*.gdb

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\plugins\*.dll

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\lib_finder\*.xml

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\lexers\*.xml
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\lexers\*.sample

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\16x16\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\codecompletion\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\codesnippets\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\DoxyBlocks\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\DoxyBlocks\16x16\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\settings\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\ThreadSearch\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\ThreadSearch\16x16\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\ThreadSearch\22x22\*.png
%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\images\wxsmith\*.png

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\docs\index.ini

%DELETE_CMD% devel%WX_VERSION_SUFFIX%\share\CodeBlocks\compilers\*.xml

REM PAUSE
