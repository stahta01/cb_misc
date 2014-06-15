SET PATH=C:\GreenApps\Subversion-1.7\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..
set TOP=%CD%
set CB_GIT=%CD%

rmdir svn-codeblocks-export
REM PAUSE

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
    %CB_GIT%\src\build_tools\autorevision\autorevision +wx +int +t . include/autorevision.h
    svn add include/autorevision.h
    svn delete templates
CD %CB_SVN%
    svn delete .gitignore
REM PAUSE

CD /D %TOP%
    svn export --ignore-keywords --native-eol LF svn-codeblocks-trunk svn-codeblocks-export
REM svn export --ignore-keywords --ignore-externals --native-eol LF svn-codeblocks-trunk svn-codeblocks-export

                                                                
PAUSE
