REM
REM SET PATH=%PATH%
REM ECHO %PATH%
REM PAUSE

REM ECHO %PATH%
REM PAUSE

title Test Build wxWidgets-3.1.X-MultiLib-MSys2_32bit 

REM Mingw GCC 6.x.x 32 bit
    SET _WXCFG=wx31X
    SET _WXCOMPILIER=MSys2_32bit
    SET _MINGWBASEFOLDER=C:\msys32\mingw32
REM SET _WXCXXFLAGS="-fno-strict-aliasing -fpermissive -Wno-deprecated-declarations -Wno-unused-local-typedefs -fno-keep-inline-dllexport"
REM SET _WXCPPFLAGS="-DHAVE_TR1_TYPE_TRAITS"
REM SET _WXCXXFLAGS="-Wno-deprecated-declarations -Wno-unused-local-typedefs -fno-keep-inline-dllexport"

SET WXVENDOR=%_WXCOMPILIER%

SET PATH=%_MINGWBASEFOLDER%\bin;C:\Program Files\Git\cmd;%SystemRoot%\system32

cd /d C:\Devel\open_source_code\version_control\wxWidgets-git
REM PAUSE
git checkout staging || exit 1
REM PAUSE

set _WXDIR=%CD%

copy include\wx\msw\setup0.h include\wx\msw\setup.h
copy include\wx\msw\setup0.h lib\gcc_dll%_WXCFG%\mswu\wx\setup.h
copy include\wx\msw\setup0.h lib\gcc_lib%_WXCFG%\mswu\wx\setup.h

cd %_WXDIR%\build\msw



REM Static Builds
if not exist gcc_mswu%_WXCFG% mkdir gcc_mswu%_WXCFG%
    ECHO "Start"  > gcc_mswu%_WXCFG%\builderr.txt
    ECHO "Clean"  > gcc_mswu%_WXCFG%\builderr.txt
    mingw32-make -f makefile.gcc BUILD=release LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR% clean

    ECHO "Build" >> gcc_mswu%_WXCFG%\builderr.txt
    mingw32-make -f makefile.gcc BUILD=release LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR% 2>> gcc_mswu%_WXCFG%\builderr.txt
    ECHO "Finish" >> gcc_mswu%_WXCFG%\builderr.txt

REM Shared/DLL Builds
REM if not exist gcc_mswudll%_WXCFG% mkdir gcc_mswudll%_WXCFG%

REM ECHO "Start"  > gcc_mswudll%_WXCFG%\builderr.txt
REM ECHO "Clean"  > gcc_mswudll%_WXCFG%\builderr.txt
REM mingw32-make -f makefile.gcc BUILD=release UNICODE=1 MONOLITHIC=0 SHARED=1 USE_XRC=1 USE_OPENGL=1 LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR% clean

REM ECHO "Build" >> gcc_mswudll%_WXCFG%\builderr.txt
REM mingw32-make -f makefile.gcc BUILD=release UNICODE=1 MONOLITHIC=0 SHARED=1 USE_XRC=1 USE_OPENGL=1 LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR% 2>> gcc_mswudll%_WXCFG%\builderr.txt

REM mingw32-make -f makefile.gcc BUILD=debug   UNICODE=1 MONOLITHIC=0 SHARED=1 USE_XRC=1 USE_OPENGL=1 LDFLAGS=%_WXLDFLAGS% CXXFLAGS=%_WXCXXFLAGS% CFLAGS=%_WXCFLAGS% CPPFLAGS=%_WXCPPFLAGS% CFG=%_WXCFG% VENDOR=%WXVENDOR%


PAUSE
