SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%

CD /D C:\Users\stahta01\GitHome

set GitHome=%CD%

REM 9936
SET GIT_HEAD_COMMIT=adc3eda801c1d045ef80642e1c78b5fefbfafc95

cd %GitHome%\Production\codeblocks_mods2_plugin

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

git.exe checkout     plugin/ToolsPlus --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_plugin_ToolsPlus.patch

git.exe checkout     plugin/wxContribItems --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_plugin_wxContribItems.patch

git.exe checkout master --
git pull --rebase origin master


cd %GitHome%\Production\codeblocks_mods2_origin
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

git.exe checkout     build/addPCH_wx28_win32 --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_addPCH_wx28_win32.patch

git.exe checkout     build/cbPCHeadersFixed --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_cbPCHeadersFixed.patch

git.exe checkout master --
git pull --rebase origin master


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

git.exe checkout     build/template_bugs --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_template_bugs.patch

git.exe checkout     build/scripts --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_scripts.patch

git.exe checkout     build/reorderIncludes --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_reorderIncludes.patch

git.exe checkout     compiler/open_watcom --
git pull --rebase origin master
git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_compiler_open_watcom.patch

git.exe checkout master --
git pull --rebase origin master


PAUSE
GOTO EOF

:_ABORT
echo "Operation Aborted"
PAUSE
