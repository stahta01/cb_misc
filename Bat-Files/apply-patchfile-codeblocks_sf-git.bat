SET PATH=C:\Program Files\Git\bin;%SystemRoot%\system32

setlocal
CD ..

CD ..\codeblocks_sf-git

SET PATCH_NAME=cb_script_wxwidgets_temp

patch --unified --strip=0 --ignore-whitespace --forward --input=../cb_misc-git/Patches/svn/%PATCH_NAME%.patch

PAUSE
