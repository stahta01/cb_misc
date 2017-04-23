SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set PATCHES=%CD%
set TOP=%CD%

CD ..\codeblocks_sf_tims_for_upstream

set CB=%CD%

CD %CB%

SET PATCH_NAME=cb_pch_plugin_wxSmithAui

unix2dos < %PATCHES%\Patches\svn\%PATCH_NAME%.patch > %PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --unified --strip=0 --ignore-whitespace --forward --input=%PATCHES%\Patches\temp\%PATCH_NAME%-CRLF.patch

PAUSE
