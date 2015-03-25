SET PATH=C:\Program Files\Subversion\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set CB_GIT=%CD%

CD ..\codeblocks-svn
set CB_SVN=%CD%

    svn diff > %CB_GIT%\Patches\svn\codeblocks-svn-trunk.patch

PAUSE
