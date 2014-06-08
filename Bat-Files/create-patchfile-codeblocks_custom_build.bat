SET PATH=C:\Program Files\Git\bin;G:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%

CD ..\codeblocks_custom_build

set CB=%CD%

CD %CB%

git diff --diff-filter=M --no-prefix HEAD > %TOP%\Patches\Git\CB_custom_build-patchfile.patch
REM --ignore-space-at-eol --diff-filter= --ignore-space-change
PAUSE
