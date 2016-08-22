REM
REM SET PATH=%PATH%
REM ECHO %PATH%
REM PAUSE

REM ECHO %PATH%
REM PAUSE

title Build wxWidgets-wx30X_reducedGUI-MultiLib-MSys2_32bit 

REM Mingw GCC 6.x.x 32 bit
    SET _WXCFG=wx30X_reducedGUI
    SET _WXCOMPILIER=MSys2_32bit
    SET _MINGWBASEFOLDER=C:\Apps32\MSys2\mingw32
REM SET _WXCXXFLAGS="-fno-strict-aliasing -fpermissive -Wno-deprecated-declarations -Wno-unused-local-typedefs -fno-keep-inline-dllexport"
    SET _WXCPPFLAGS="-DHAVE_TR1_TYPE_TRAITS"
    SET _WXCXXFLAGS="-Wno-deprecated-declarations -Wno-unused-local-typedefs -fno-keep-inline-dllexport"

SET WXVENDOR=MSys2_reducedGUI

SET PATH=%_MINGWBASEFOLDER%\bin;C:\Apps32\GnuWin32\bin;C:\Program Files\Git\cmd;%SystemRoot%\system32

cd /d C:\Devel\open_source_code\version_control\wxWidgets_MSys2-git
REM PAUSE
git checkout msys2/reducedGUI_3_0_X || exit 1
REM PAUSE

set _WXDIR=%CD%

copy include\wx\msw\setup0.h include\wx\msw\setup.h
copy include\wx\msw\setup0.h lib\gcc_dll%_WXCFG%\mswu\wx\setup.h

cd %_WXDIR%\build\msw

if not exist gcc_mswudll%_WXCFG% mkdir gcc_mswudll%_WXCFG%

    ECHO "Start"  > gcc_mswudll%_WXCFG%\builderr.txt
REM ECHO "Clean"  > gcc_mswudll%_WXCFG%\builderr.txt
REM mingw32-make -f makefile.gcc BUILD=release UNICODE=1 MONOLITHIC=0 SHARED=1 LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR% clean

    ECHO "Build" >> gcc_mswudll%_WXCFG%\builderr.txt
    mingw32-make -f makefile.gcc BUILD=release UNICODE=1 MONOLITHIC=0 SHARED=1 LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR% 2>> gcc_mswudll%_WXCFG%\builderr.txt

REM mingw32-make -f makefile.gcc BUILD=debug   UNICODE=1 MONOLITHIC=0 SHARED=1 LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR%

PAUSE
