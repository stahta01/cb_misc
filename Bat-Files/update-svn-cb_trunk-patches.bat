SET PATH=C:\GreenApps\Subversion-1.7\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set CB_GIT=%CD%

CD svn-codeblocks-trunk
set CB_SVN=%CD%

if not exist %PATCHES%\Patches\temp mkdir %PATCHES%\Patches\temp

cd %CB_SVN%
svn revert --recursive .
    
CD %CB_SVN%\src\plugins\contrib\FortranProject
svn revert --recursive .

cd %CB_SVN%

REM PAUSE
REM Start of section
SET PATCH_NAME=cb_script_wxWidget_wizard
unix2dos < %CB_GIT%\Patches\Git\%PATCH_NAME%.patch > %CB_GIT%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --backup-if-mismatch --unified --strip=0 --ignore-whitespace --forward --input=%CB_GIT%\Patches\temp\%PATCH_NAME%-CRLF.patch
svn.exe diff --extensions --unified --extensions --ignore-space-change --extensions --ignore-eol-style > %CB_GIT%\Patches\temp\%PATCH_NAME%-svn.patch
dos2unix < %CB_GIT%\Patches\temp\%PATCH_NAME%-svn.patch > %CB_GIT%\Patches\svn\%PATCH_NAME%.patch
svn revert --recursive .
REM End of section
REM PAUSE

REM PAUSE
REM Start of section
SET PATCH_NAME=cb_src_plugin_scriptedwizard_resources_wxwidgets_2
unix2dos < %CB_GIT%\Patches\Git\%PATCH_NAME%.patch > %CB_GIT%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --backup-if-mismatch --unified --strip=0 --ignore-whitespace --forward --input=%CB_GIT%\Patches\temp\%PATCH_NAME%-CRLF.patch
svn.exe diff --extensions --unified --extensions --ignore-space-change --extensions --ignore-eol-style > %CB_GIT%\Patches\temp\%PATCH_NAME%-svn.patch
dos2unix < %CB_GIT%\Patches\temp\%PATCH_NAME%-svn.patch > %CB_GIT%\Patches\svn\%PATCH_NAME%.patch
svn revert --recursive .
REM End of section
REM PAUSE

REM PAUSE
REM Start of section
SET PATCH_NAME=cb_bat_update_remove_templates
unix2dos < %CB_GIT%\Patches\Git\%PATCH_NAME%.patch > %CB_GIT%\Patches\temp\%PATCH_NAME%-CRLF.patch
patch --backup-if-mismatch --unified --strip=0 --ignore-whitespace --forward --input=%CB_GIT%\Patches\temp\%PATCH_NAME%-CRLF.patch
svn.exe diff --extensions --unified --extensions --ignore-space-change --extensions --ignore-eol-style > %CB_GIT%\Patches\temp\%PATCH_NAME%-svn.patch
dos2unix < %CB_GIT%\Patches\temp\%PATCH_NAME%-svn.patch > %CB_GIT%\Patches\svn\%PATCH_NAME%.patch
svn revert --recursive .
REM End of section
REM PAUSE

PAUSE
