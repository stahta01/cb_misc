SET PATH=C:\Program Files\Git\bin;%SystemRoot%\system32

CD C:\SourceCode\OpenSourceCode\Apps\IDE\Codeblocks\codeblocks_obfuscated-git

patch --unified --strip=0 --ignore-whitespace --forward --input=C:/SourceCode/OpenSourceCode/Apps/IDE/Codeblocks/cb_misc-git/Patches/svn/cb_script_wxwidgets_phase1.patch
patch --unified --strip=1 --ignore-whitespace --forward --input=C:/SourceCode/OpenSourceCode/Apps/IDE/Codeblocks/cb_misc-git/Patches/Git/cb_script_wxwidgets_phase2.diff

PAUSE
