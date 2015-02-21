SET PATH=C:\Apps32\svn-win32-1.7.x\bin;C:\Apps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set CB_GIT=%CD%

CD svn-codeblocks-trunk
set CB_SVN=%CD%

    svn diff > %CB_GIT%\Patches\svn\cb_trunk.patch

PAUSE
