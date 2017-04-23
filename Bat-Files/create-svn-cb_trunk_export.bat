SET PATH=C:\GreenApps32\Apache-Subversion-1.8.14\bin;C:\Apps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set CB_GIT=%CD%

REM rmdir svn-codeblocks-export
rm -rf svn-codeblocks-export
REM PAUSE

CD svn-codeblocks-trunk
set CB_SVN=%CD%
REM svn upgrade
REM  
    svn revert --recursive .
    svn revert --recursive src/plugins/contrib/FortranProject

REM unix2dos "src/include/ccmanager.h"
REM svn propset svn:eol-style native src/include/ccmanager.h

    svn update .
REM svn update --ignore-externals .

REM PAUSE

CD %CB_SVN%/src
REM replace call of autorevision with sed that sets svn number to zero
REM %CB_GIT%\src\build_tools\autorevision\autorevision +wx +int +t . include/autorevision.h
REM svn add include/autorevision.h
REM PAUSE

CD /D %TOP%
    svn export --ignore-keywords --native-eol LF svn-codeblocks-trunk svn-codeblocks-export
REM svn export --ignore-keywords --ignore-externals --native-eol LF svn-codeblocks-trunk svn-codeblocks-export

PAUSE
