SET PATH=C:\Program Files (x86)\Git\bin;C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set PATCHES=%CD%\Patches

CD ..

set GitHome=%CD%

set GitBranch=%GitHome%\codeblocks-svn2git

CD %GitBranch%

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

git.exe checkout build/macros --

git format-patch HEAD~1..HEAD     --stdout > %PATCHES%\master01.ampatch
git format-patch HEAD~2..HEAD~1   --stdout > %PATCHES%\master02.ampatch
git format-patch HEAD~3..HEAD~2   --stdout > %PATCHES%\master03.ampatch
git format-patch HEAD~4..HEAD~3   --stdout > %PATCHES%\master04.ampatch
git format-patch HEAD~5..HEAD~4   --stdout > %PATCHES%\master05.ampatch

PAUSE
GOTO EOF

:_ABORT
echo "Operation Aborted"
PAUSE
