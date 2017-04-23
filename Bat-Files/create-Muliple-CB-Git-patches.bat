SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%

CD /D C:\Users\stahta01\GitHome

set GitHome=%CD%

REM 10002 git svn find-rev 2b09d8d1555c0d98a8d57347c2975b2c7a6d6284
SET GIT_HEAD_COMMIT=2b09d8d1555c0d98a8d57347c2975b2c7a6d6284

SET GIT_PUSH_OPTION=--force-with-lease 
SET GIT_PULL_MASTER=svn_rebase/master
REM SET GIT_PUSH_OPTION=

REM goto codeblocks_mods2_bugfix

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

git.exe checkout master --
git pull --rebase origin %GIT_PULL_MASTER%
echo git pull returned %errorlevel%
git reset --hard origin/%GIT_PULL_MASTER%
REM PAUSE


git.exe checkout     plugin/wxContribItems --
git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push %GIT_PUSH_OPTION% "origin" plugin/wxContribItems:plugin/wxContribItems
   git diff --diff-filter=M %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_plugin_wxContribItems.patch
)

git.exe checkout master --
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

git.exe checkout master --
git pull --rebase origin %GIT_PULL_MASTER%
echo git pull returned %errorlevel%
git reset --hard origin/%GIT_PULL_MASTER%
REM PAUSE

git.exe checkout     build/addPCH_wx28_win32 --
git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push %GIT_PUSH_OPTION% "origin" build/addPCH_wx28_win32:build/addPCH_wx28_win32
   git diff --diff-filter=M %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_addPCH_wx28_win32.patch
)
REM PAUSE

git.exe checkout     build/cbPCHeadersFixed --
git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push %GIT_PUSH_OPTION% "origin" build/cbPCHeadersFixed:build/cbPCHeadersFixed
   git diff --diff-filter=M %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_cbPCHeadersFixed.patch
)
REM PAUSE

git.exe checkout master --
REM PAUSE

:codeblocks_mods2_bugfix
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

git.exe checkout master --
git pull --rebase origin %GIT_PULL_MASTER%
echo git pull returned %errorlevel%
git reset --hard origin/%GIT_PULL_MASTER%
REM PAUSE

git.exe checkout     build/template_bugs --
git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push %GIT_PUSH_OPTION% "origin" build/template_bugs:build/template_bugs
   git diff --diff-filter=M %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_template_bugs.patch
)

git.exe checkout     build/scripts --
git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
) else (
   git push %GIT_PUSH_OPTION% "origin" build/scripts:build/scripts
   git diff --diff-filter=M %GIT_HEAD_COMMIT% HEAD -- > %TOP%\Patches\Git\CB_mods2_build_scripts.patch
)

git.exe checkout master --
REM PAUSE

PAUSE
GOTO EOF

:_ABORT
echo "Operation Aborted"
PAUSE
