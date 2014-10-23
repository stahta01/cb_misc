SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set PATCHES=%CD%

CD /D C:\Users\stahta01\GitHome

set GitHome=%CD%
SET GIT_PULL_MASTER=svn_rebase/master

cd %GitHome%\Production\CB_Obf_build
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
REM PAUSE
git fetch origin
git reset --hard origin/%GIT_PULL_MASTER%

git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
) else (
   git.exe svn rebase
   if errorlevel 1 (
   echo git.exe svn rebase returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
   )
)

git.exe svn info
REM PAUSE

REM
REM
REM

git pull --rebase origin build/cb_sdk_includes_fixed
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
)

git pull --rebase origin build/template_bugs
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
)

REM
REM build/rejectedPatches
REM

git pull --rebase origin build/rejectedPatches
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
)

REM
REM Cleanup
REM

git pull --rebase origin %GIT_PULL_MASTER%
if errorlevel 1 (
   echo git pull returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
) else (
   git.exe svn rebase
   if errorlevel 1 (
   echo git.exe svn rebase returned %errorlevel%
   echo aborting rebase
   git rebase --abort
   goto _ABORT
   )
)

git.exe svn info
REM PAUSE


PAUSE
GOTO EOF



:_ABORT
echo "Operation Aborted"
PAUSE
