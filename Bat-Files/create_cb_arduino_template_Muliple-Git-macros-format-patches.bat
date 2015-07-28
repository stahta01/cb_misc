SET PATH=C:\Program Files (x86)\Git\bin;C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set PATCHES=%CD%\Patches

CD ..

set GitHome=%CD%

set GitBranch=%GitHome%\cb_arduino_template-git

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

git format-patch HEAD~22..HEAD    --stdout > %PATCHES%\cb_arduino_template_all.ampatch

git format-patch HEAD~1..HEAD     --stdout > %PATCHES%\cb_arduino_template01.ampatch
git format-patch HEAD~2..HEAD~1   --stdout > %PATCHES%\cb_arduino_template02.ampatch
git format-patch HEAD~3..HEAD~2   --stdout > %PATCHES%\cb_arduino_template03.ampatch
git format-patch HEAD~4..HEAD~3   --stdout > %PATCHES%\cb_arduino_template04.ampatch
git format-patch HEAD~5..HEAD~4   --stdout > %PATCHES%\cb_arduino_template05.ampatch
git format-patch HEAD~6..HEAD~5   --stdout > %PATCHES%\cb_arduino_template06.ampatch
git format-patch HEAD~7..HEAD~6   --stdout > %PATCHES%\cb_arduino_template07.ampatch
git format-patch HEAD~8..HEAD~7   --stdout > %PATCHES%\cb_arduino_template08.ampatch
git format-patch HEAD~9..HEAD~8   --stdout > %PATCHES%\cb_arduino_template09.ampatch
git format-patch HEAD~10..HEAD~9   --stdout > %PATCHES%\cb_arduino_template10.ampatch
git format-patch HEAD~11..HEAD~10   --stdout > %PATCHES%\cb_arduino_template11.ampatch
git format-patch HEAD~12..HEAD~11   --stdout > %PATCHES%\cb_arduino_template12.ampatch
git format-patch HEAD~13..HEAD~12   --stdout > %PATCHES%\cb_arduino_template13.ampatch
git format-patch HEAD~14..HEAD~13   --stdout > %PATCHES%\cb_arduino_template14.ampatch
git format-patch HEAD~15..HEAD~14   --stdout > %PATCHES%\cb_arduino_template15.ampatch
git format-patch HEAD~16..HEAD~15   --stdout > %PATCHES%\cb_arduino_template16.ampatch
git format-patch HEAD~17..HEAD~16   --stdout > %PATCHES%\cb_arduino_template17.ampatch
git format-patch HEAD~18..HEAD~17   --stdout > %PATCHES%\cb_arduino_template18.ampatch
git format-patch HEAD~19..HEAD~18   --stdout > %PATCHES%\cb_arduino_template19.ampatch
git format-patch HEAD~20..HEAD~19   --stdout > %PATCHES%\cb_arduino_template20.ampatch
git format-patch HEAD~21..HEAD~20   --stdout > %PATCHES%\cb_arduino_template21.ampatch
git format-patch HEAD~22..HEAD~21   --stdout > %PATCHES%\cb_arduino_template22.ampatch

PAUSE
GOTO EOF

:_ABORT
echo "Operation Aborted"
PAUSE
