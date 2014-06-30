SET PATH=C:\GreenApps\Subversion-1.7\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set CB_GIT=%CD%

REM rmdir svn-codeblocks-export
rm -rf svn-codeblocks-export
    PAUSE

CD svn-codeblocks-trunk
set CB_SVN=%CD%
REM svn upgrade
REM  
    svn revert --recursive .
    svn revert --recursive src/plugins/contrib/FortranProject
    svn update .
REM svn update --ignore-externals .

REM PAUSE

CD %CB_SVN%/src
REM replace call of autorevision sed that set svn number to zero
    %CB_GIT%\src\build_tools\autorevision\autorevision +wx +int +t . include/autorevision.h
    svn add include/autorevision.h
REM remove this delete after writing xcopy batch to skip templates
    svn delete templates
CD %CB_SVN%
REM remove this delete after writing xcopy batch to skip .gitignore
    svn delete .gitignore
REM PAUSE

CD /D %TOP%
    svn export --ignore-keywords --native-eol LF svn-codeblocks-trunk svn-codeblocks-export
REM svn export --ignore-keywords --ignore-externals --native-eol LF svn-codeblocks-trunk svn-codeblocks-export

PAUSE
