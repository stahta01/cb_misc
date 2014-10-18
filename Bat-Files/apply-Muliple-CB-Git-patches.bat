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

git.exe checkout     master --
if errorlevel 1 (
   echo git checkout returned %errorlevel%
   goto _ABORT
)
git fetch origin
git reset --hard origin/master

git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
) else (
   git.exe svn rebase
)

git.exe checkout     build/combinedNoPush --
if errorlevel 1 (
   echo git checkout returned %errorlevel%
   goto _ABORT
)
REM PAUSE
git fetch origin
git reset --hard origin/master

git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
) else (
   git.exe svn rebase
)

git.exe svn info
REM PAUSE

SET PATCH_NAME=CB_mods2_build_template_bugs
git apply -p0 --reject %PATCHES%\Patches\git\%PATCH_NAME%.patch


SET PATCH_NAME=CB_mods2_build_bats
unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

REM PAUSE

SET PATCH_NAME=CB_mods2_plugin_wxContribItems
git apply -p0 --reject %PATCHES%\Patches\git\%PATCH_NAME%.patch

SET PATCH_NAME=CB_mods2_plugin_ToolsPlus
git apply -p0 --reject %PATCHES%\Patches\git\%PATCH_NAME%.patch

SET PATCH_NAME=CB_mods2_build_addPCH_wx28_win32
git apply -p0 --reject %PATCHES%\Patches\git\%PATCH_NAME%.patch

SET PATCH_NAME=CB_project_bug_03_VirualTarget_Core_app_and_plugins
git apply -p0 --reject %PATCHES%\Patches\git\%PATCH_NAME%.patch

SET PATCH_NAME=CB_project_bug_07_remove_depends_on_lib_finder
git apply -p0 --reject %PATCHES%\Patches\git\%PATCH_NAME%.patch

REM SET PATCH_NAME=CB_mods2_build_reorderIncludes
REM unix2dos < %PATCHES%\Patches\git\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
REM patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

git commit -am "Commit apply-Muliple-CB-Git-patches.bat changes."

PAUSE
GOTO EOF



:_ABORT
echo "Operation Aborted"
PAUSE
