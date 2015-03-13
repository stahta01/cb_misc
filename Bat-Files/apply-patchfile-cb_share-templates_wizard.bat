SET PATH=C:\Program Files\Git\bin;%SystemRoot%\system32

setlocal

CD C:\Users\stahta01\AppData\Roaming\codeblocks\share\codeblocks\templates\wizard

REM patch --unified --strip=4 --ignore-whitespace --forward --input=C:/SourceCode/OpenSourceCode/Apps/IDE/Codeblocks/cb_misc-git/Patches/svn/cb_script_wxwidgets_phase1.patch
patch --unified --strip=5 --ignore-whitespace --forward --input=C:/SourceCode/OpenSourceCode/Apps/IDE/Codeblocks/cb_misc-git/Patches/Git/cb_script_wxwidgets_phase2.diff

PAUSE
