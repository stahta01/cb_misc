SET PATH=C:\Program Files\Git\bin;C:\GreenApps\GnuWin32\bin;%SystemRoot%\system32

setlocal
CD ..\..\codeblocks_sf_tims_scriptedwizard

REM PAUSE

REM git remote add upstream https://github.com/obfuscated/codeblocks_sf.git
REM git remote set-url upstream https://github.com/obfuscated/codeblocks_sf.git
git remote --verbose
    PAUSE

git pull --rebase upstream master

PAUSE
