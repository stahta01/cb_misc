SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%

CD /D C:\Users\stahta01\GitHome

set GitHome=%CD%

REM 9983 git svn find-rev bd63c619247b2e551cc71f1e75bbadaa5fe1bbb6
SET GIT_HEAD_COMMIT=bd63c619247b2e551cc71f1e75bbadaa5fe1bbb6

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
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" plugin/ToolsPlus:plugin/ToolsPlus
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_plugin_ToolsPlus.patch
)

git.exe checkout     plugin/wxContribItems --
git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" plugin/wxContribItems:plugin/wxContribItems
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_plugin_wxContribItems.patch
)

git.exe checkout master --
git pull --rebase origin master
REM PAUSE

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
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" build/addPCH_wx28_win32:build/addPCH_wx28_win32
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_addPCH_wx28_win32.patch
)
REM PAUSE

git.exe checkout     build/cbPCHeadersFixed --
git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" build/cbPCHeadersFixed:build/cbPCHeadersFixed
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_cbPCHeadersFixed.patch
)
REM PAUSE

git.exe checkout master --
git pull --rebase origin master
echo git pull returned %errorlevel%
REM PAUSE


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
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" build/template_bugs:build/template_bugs
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_template_bugs.patch
)

git.exe checkout     build/scripts --
git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" build/scripts:build/scripts
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_scripts.patch
)

git.exe checkout     build/reorderIncludes --
git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" build/reorderIncludes:build/reorderIncludes
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_reorderIncludes.patch
)

git.exe checkout     compiler/open_watcom --
git pull --rebase origin master
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push --force-with-lease "origin" compiler/open_watcom:compiler/open_watcom
   git diff --diff-filter=M --no-prefix %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_compiler_open_watcom.patch
)

git.exe checkout master --
git pull --rebase origin master

PAUSE
GOTO EOF

:_ABORT
echo "Operation Aborted"
PAUSE
