REM @echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

set DELETE_CMD=del
set WX_VERSION_SUFFIX=%1
REM set WX_VERSION_SUFFIX=30

echo Cleaning %WX_VERSION_SUFFIX% Misc. files not in the .objs, devel, or output folders

%DELETE_CMD% include\autorevision.h

%DELETE_CMD% base\tinyxml\libtxml%WX_VERSION_SUFFIX%.a

%DELETE_CMD% sdk\scripting\lib\libsqplus%WX_VERSION_SUFFIX%.a
%DELETE_CMD% sdk\scripting\lib\libsqstdlib%WX_VERSION_SUFFIX%.a
%DELETE_CMD% sdk\scripting\lib\libsquirrel%WX_VERSION_SUFFIX%.a

%DELETE_CMD% plugins\contrib\devpak_plugin\bzip2\libbz2.a
%DELETE_CMD% plugins\contrib\help_plugin\zlib\libz.a
%DELETE_CMD% plugins\contrib\help_plugin\bzip2\libbzip2.a
%DELETE_CMD% plugins\compilergcc\depslib\libdepslib%WX_VERSION_SUFFIX%.a
%DELETE_CMD% plugins\contrib\source_exporter\wxPdfDocument\lib%WX_VERSION_SUFFIX%\libwxPdfDocument.a

REM PAUSE
