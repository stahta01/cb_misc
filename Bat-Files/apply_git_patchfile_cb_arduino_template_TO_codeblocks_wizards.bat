SET PATH=C:\Program Files (x86)\Git\bin;C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set PATCHES=%CD%\Patches

CD ..

set GitHome=%CD%

set GitBranch=%GitHome%\codeblocks_wizards-git

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

git.exe checkout master --

git am %PATCHES%\cb_arduino_template19.ampatch

PAUSE
GOTO EOF

:_ABORT
echo "Operation Aborted"
PAUSE
