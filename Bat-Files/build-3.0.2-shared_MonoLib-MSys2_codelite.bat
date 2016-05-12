REM Change Directory to wxWidgets Folder
CD /D C:\Devel\open_source_code\no_version_control\wxMSW-3.0\wxWidgets-3.0.2_codelite

setlocal
set _WXDIR=%CD%
REM

title Build Shared wxWidgets-3.0.2-MonoLib-MSys2_codelite
    SET _WXVENDOR=cl
    SET _WXCFG=""
    SET _MINGWBASEFOLDER=C:\Apps32\MSys2\mingw32
    SET _WXCPPFLAGS=""
    SET _WXCXXFLAGS="-std=gnu++11 -fno-keep-inline-dllexport"
REM


REM Set the Path to a good starting value.
echo "Using C:\Apps32\GnuWin\bin" 
SET PATH=C:\Apps32\GnuWin\bin;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem

REM Create Needed Folders to prevent errors
if not exist "%_WXDIR%\build\msw" mkdir %_WXDIR%\build\msw
cd %_WXDIR%\build\msw
REM if not exist "gcc_mswud%_WXCFG%" mkdir gcc_mswud%_WXCFG%
REM
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswu" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswu
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswu\wx" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswu\wx
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswud" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswud
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswud\wx" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswud\wx
REM End Create Needed Folder

    goto _update_setup_h
REM goto _clean_objs
    goto _build


:_clean_objs
cd %_WXDIR%\build\msw
REM static Build Folders delete and recreate
REM if exist "gcc_mswud%_WXCFG%\*.o" DEL gcc_mswud%_WXCFG%\*.o
REM if exist "gcc_mswud%_WXCFG%\*.d" DEL gcc_mswud%_WXCFG%\*.d
ECHO "Clean Objects" > gcc_mswuddll%_WXCFG%\builderr.txt

REM goto _build

:_clean_libs
cd %_WXDIR%
rm -r lib/gcc_dll%_WXCFG%/mswu
rm -r lib/gcc_dll%_WXCFG%/mswud
if exist "lib\gcc_dll%_WXCFG%\*.a" DEL "lib\gcc_dll%_WXCFG%\*.a"
ECHO "Clean Libs" > gcc_mswuddll%_WXCFG%\builderr.txt


:_update_setup_h
cd %_WXDIR%
copy include\wx\msw\setup0.h include\wx\msw\setup.h
sed --in-place "s/#   define wxUSE_GRAPHICS_CONTEXT 0/#   define wxUSE_GRAPHICS_CONTEXT 1/" include\wx\msw\setup.h

if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswu" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswu
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswu\wx" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswu\wx
copy include\wx\msw\setup.h lib\gcc_dll%_WXCFG%\mswu\wx\setup.h

if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswud" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswud
if not exist "%_WXDIR%\lib\gcc_dll%_WXCFG%\mswud\wx" mkdir %_WXDIR%\lib\gcc_dll%_WXCFG%\mswud\wx
copy include\wx\msw\setup.h lib\gcc_dll%_WXCFG%\mswud\wx\setup.h
REM PAUSE
REM goto _build



:_build
SET PATH=%_MINGWBASEFOLDER%\bin;%PATH%
ECHO %PATH%
cd %_WXDIR%\build\msw

REM build_cfg_file
    mingw32-make -f makefile.gcc CFG=%_WXCFG% CPPFLAGS=%_WXCPPFLAGS% CXXFLAGS=%_WXCXXFLAGS% MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=release VENDOR=%_WXVENDOR% build_cfg_file
    mingw32-make -f makefile.gcc CFG=%_WXCFG% CPPFLAGS=%_WXCPPFLAGS% CXXFLAGS=%_WXCXXFLAGS% MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=debug   VENDOR=%_WXVENDOR% build_cfg_file
REM PAUSE
REM
    mingw32-make -f makefile.gcc CFG=%_WXCFG% CPPFLAGS=%_WXCPPFLAGS% CXXFLAGS=%_WXCXXFLAGS% MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=release VENDOR=%_WXVENDOR% 
    mingw32-make -f makefile.gcc CFG=%_WXCFG% CPPFLAGS=%_WXCPPFLAGS% CXXFLAGS=%_WXCXXFLAGS% MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=debug   VENDOR=%_WXVENDOR% 


:_end

    PAUSE
