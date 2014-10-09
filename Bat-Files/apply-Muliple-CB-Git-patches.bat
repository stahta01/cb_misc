SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set PATCHES=%CD%

CD /D C:\Users\stahta01\GitHome

set GitHome=%CD%

cd %GitHome%\Production\codeblocks_mods2_bugfix
@echo off
git diff --exit-code
if errorlevel 1 (
   echo git diff returned %errorlevel%
   goto _ABORT
)
git diff --cached --exit-code
if errorlevel 1 (
   echo git diff --cached returned %errorlevel%
   goto _ABORT
)
@echo on

git.exe checkout     build/combinedNoPush --
if errorlevel 1 (
   echo git checkout returned %errorlevel%
   goto _ABORT
)
PAUSE
git fetch origin
git reset --hard origin/master

SET PATCH_NAME=CB_mods2_build_template_bugs
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_mods2_build_scripts
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_mods2_plugin_wxContribItems
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_mods2_plugin_ToolsPlus
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_mods2_build_addPCH_wx28_win32
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_project_bug_02_VirtualBuildTargetsDlg
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_project_bug_07_remove_depends_on_lib_finder
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

SET PATCH_NAME=CB_project_bug_11_change_WX_VER_to_WX_VERSION
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

PAUSE
GOTO EOF



:_ABORT
echo "Operation Aborted"
PAUSE
