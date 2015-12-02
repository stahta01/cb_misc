## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Copy of upstream Code::Blocks trunk/master |
| release-15.xx              |Copy of upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Copy of builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Copy of master and holds this README.md file about the other branches of mine. |
| build_cbp/win_cbp_saveas   |Copy of master; but with a projects save as done for most Windows Projects. |
| build_cbp/lib_folder_type1 |Copy of win_cbp_saveas with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Copy of win_cbp_saveas with added folders lib and lib30. |
| build_cbp/wx_compiler      |Copy of master; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Copy of obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| msys2/codeblocks           |Highly edited Code::Blocks designed to work and be built with MSys Compiler; but, it does NOT use MSys's wxWidgets libraries. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| portability/fixes          |Copy of master; with changes that makes code or project more portable. |
| deceased/removals          |Copy of master; with code removed that looks like it has not worked in years. |
| remove/do_not_edit         |Copy of master; with "DO NOT EDIT" comments removed from some files. |
| PCH/code_fixes             |Copy of master; with Precompiled Header (PCH) related code fixes. |
| cygwin_support             |Changes to support Cygwin Compiler. |
| bugfix/sdk                 |Patched bugs in CB SDK. |
| feature/sdk                |Copy of bugfix/sdk; with added features to CB SDK. |


git clone git://git.code.sf.net/p/codeblocks/git codeblocks-git

?Delete obf_sf/master


Add Branch
| build/move_output          |Copy of portability/fixes; with "output" folder moved to src/update files. |
| bugfix/project_n_workspace |Copy of master; fixes to CB Projects and workspaces
| PCH/cbp_fixes              |Copy of master; with Precompiled Header (PCH) related project fixes. |

cd ../codeblocks_https_metadata-git && git fetch origin
git checkout master && git pull
git svn fetch && git svn info
git checkout -b PCH/cbp_fixes


Branches that need updated/rebased


# Save patches; rebase master and re-apply patches.
git checkout
git log
git format-patch
git reset --hard 
git rebase master 
git am
git rebase master && git push origin --force-with-lease

Update this repo
    https://github.com/stahta01/codeblocks_setup_svn2git_https_metadata.git
    
  git remote add origin https://github.com/stahta01/tims_codeblocks_installer.git
  git push -u origin master


# Info about cygwin debugger fix.
# http://alpha0010.github.io/cb-history/bugs/17626.html
# http://forums.codeblocks.org/index.php?topic=12212.msg90788;topicseen
# https://cygwin.com/cygwin-ug-net/cygpath.html
# http://wiki.codeblocks.org/index.php/Debugging_with_Code::Blocks

https://github.com/stahta01/codeblocks_unofficial_installers.git
Need to do a installer release for
  build_cbp/wx_multilib
  cygwin_support
  msys2/codeblocks

https://github.com/Alexpux/MSYS2-packages/tree/master/coreutils

# git remote add origin  https://stahta01@github.com/stahta01/codeblocks_https_metadata.git

# Change the project define "WXMAKINGDLL" into target defines of "WXUSINGDLL"
# Fix the resulting errors
git checkout master
git checkout -b wxContribItems

cd ../codeblocks_PCH_fixes-git && git status -uno
git fetch origin && git fetch pch_fixes && git status -uno
git remote -v
git branch --list
git checkout master && git pull origin master && git push && git status -uno
git svn fetch && git svn info
git checkout PCH/code_fixes && git rebase master && git.exe push pch_fixes --force-with-lease
git checkout build_cbp/win_cbp_saveas && git rebase master && git.exe push pch_fixes --force-with-lease

# Checkout out rndgen_wx30.cbp seems to have formating issues. 
git checkout portability/fixes
git fetch pch_fixes && git rebase master && git status -uno
git rebase master && git push pch_fixes 
## git push pch_fixes --force-with-lease

cd ../codeblocks_PCH_fixes-git && git status -uno
git checkout PCH/cbp_fixes && git status -uno
# PCH_build_fix:
git rebase PCH/code_fixes
git rebase wxContribItems
git rebase portability/fixes
git rebase build_cbp/win_cbp_saveas
git rebase master && git status -uno
git push pch_fixes 
##  git push pch_fixes --force-with-lease

git log --oneline

- PCH_build_fix: Changed "USE_PCH" to "NOPCH". (Thanks stahta01)

- PCH_build_fix: Added object include search folder. (Thanks stahta01)

- PCH_build_fix: Removed define of "WX_PRECOMP". (Thanks stahta01)

- PCH_build_fix: Added option "-Winvalid-pch". (Thanks stahta01)

Also, added object include search folder.

../../../.objs/include

../../.objs/include

../../../.objs30/include

- PCH_build_fix: Added define of "CB_PRECOMP". (Thanks stahta01)

And, removed defines of NOPCH and WX_PRECOMP.


USE_PCH
NOPCH
WX_PRECOMP
CB_PRECOMP

######################################################

#
cd ../codeblocks_https_metadata-git && git fetch origin && git status -uno
git checkout master && git pull && git status -uno
git svn fetch && git svn info
# git pull --rebase
git checkout tims_readme && git pull --rebase && git rebase master && git status -uno
git checkout remove/do_not_edit && git pull --rebase && git rebase master && git status -uno
git checkout deceased/removals && git pull --rebase && git rebase master && git status -uno
git checkout bugfix/sdk && git pull --rebase && git rebase master && git status -uno
git checkout build_cbp/wx30x && git pull --rebase && git rebase master && git status -uno
# Update branch by rebasing with master branch
git checkout tims_readme && git rebase master && git.exe push origin --force-with-lease
git checkout remove/do_not_edit && git rebase master && git.exe push origin --force-with-lease
git checkout deceased/removals && git rebase master && git.exe push origin --force-with-lease
git checkout bugfix/sdk && git rebase master && git.exe push origin --force-with-lease
git checkout build_cbp/wx30x && git rebase master && git.exe push origin --force-with-lease


cd ../codeblocks_https_metadata-git 
git fetch origin && git fetch pch_fixes && git status -uno
git checkout build_cbp/wx_compiler && git status -uno
##  git pull --rebase && git rebase master && git status -uno
git rebase pch_fixes/build_cbp/win_cbp_saveas
git rebase master && git status -uno
git push origin 
## git push origin --force-with-lease

cd ../codeblocks_https_metadata-git && git fetch origin && git status -uno
git checkout feature/sdk && git status -uno
git rebase bugfix/sdk
git rebase master && git status -uno
git push origin 
## git push origin --force-with-lease

cd ../codeblocks_https_metadata-git && git fetch origin && git status -uno
git checkout bugfix/project_n_workspace && git status -uno
git rebase master && git status -uno
git push origin 
## git push origin --force-with-lease

git log --oneline

a4326b8 - Core app & plugins: Added target Abbreviations to virtual target. (Thanks stahta01)
b7b1e89 - Workspace: NEEDS TESTED: Replaced "lib_finder" project dependency with "wxContribItems". (Thanks stahta01)
419e8cc - Workspace: Replaced "lib_finder" project dependency with "wxContribItems". (Thanks stahta01)
a1c076a - wxContribItems: Removed unneeded search directories and libs. (Thanks stahta01)
cccd77c - Workspace: Replaced "lib_finder" project dependency with "wxContribItems". (Thanks stahta01)

git log -5

git remote -v
# git remote add obfuscated https://github.com/obfuscated/codeblocks_sf

git fetch obfuscated
git checkout obf_sf/builds/wx31
git rebase obfuscated/builds/wx31
git status -uno
# git rebase origin/obf_sf/builds/wx31
git status -uno
git rebase obfuscated/master && git status -uno
git.exe push origin
# git.exe push origin --force-with-lease


cd ../codeblocks_layout-git && git status -uno
# git remote add pch_fixes https://github.com/stahta01/codeblocks_PCH_fixes.git
git fetch origin && git fetch pch_fixes && git status -uno
git checkout build/move_output && git status -uno
git rebase pch_fixes/portability/fixes
git rebase origin/master && git status -uno
git push origin 
## git push origin --force-with-lease
git svn fetch && git svn info

cd ../codeblocks_layout-git && git fetch origin && git status -uno
git checkout build_cbp/lib_folder_type1
git rebase origin/master && git status -uno
git.exe push origin 
## git push origin --force-with-lease

cd ../codeblocks_layout-git && git fetch origin && git status -uno
git checkout build_cbp/lib_folder_type2
git rebase origin/master && git status -uno 
git.exe push origin 
## git push origin --force-with-lease




# Added redefine of CMD_CP when CygWin Compiler
# Fix Cygwin compiler to work with Cygwin 64 bit and 32 bit under Windows 7 64 bit.
#
cd ../codeblocks_cygwin_support-git git status -uno
# git remote add pch_fixes https://github.com/stahta01/codeblocks_PCH_fixes.git
git fetch origin && git fetch pch_fixes && git status -uno
# git checkout cygwin_support
## git pull --rebase
# use prefix "cygwin_support:"
##  git branch --list
git rebase pch_fixes/PCH/cbp_fixes && git status -uno
git rebase origin/bugfix/project_n_workspace && git status -uno
git rebase origin/feature/sdk && git status -uno
git rebase origin/deceased/removals && git status -uno
git rebase origin/master && git status -uno
git push origin
##  git push origin --force-with-lease
git svn fetch && git svn info

git --no-pager log --oneline --author=Tim



# Add Option to change shell in GUI         environmentsettingsdlg.cpp
# Use prefix "msys2_cb:"
cd ../codeblocks_msys2_wxMonoLib-git && git fetch origin && git status -uno
#  git checkout msys2/codeblocks
#  git branch --list
git rebase origin/cygwin_support && git status -uno
# git rebase origin/msys2/codeblocks && git status -uno
git rebase origin/master && git status -uno
git push origin
##  git push origin --force-with-lease
git svn fetch && git svn info

git log --oneline

cd ../codeblocks_msys2_wxMultiLibs-git && git fetch origin && git status -uno
#  git checkout msys2/wx30_libs
# Prefix msys2_wx_multilibs:
#
#  git branch --list
#  git rebase origin/master
git rebase origin/msys2/codeblocks && git status -uno
#  git rebase --abort
git rebase origin/master && git status -uno
git push origin
##  git push origin --force-with-lease
git svn fetch && git svn info
##  git log --oneline

#  git format-patch --unified=1 939482398bc7488eaf18e1d8a1273c54883a0bc7

## git apply --reject ##
##  git am --abort

* msys2_wx_multilibs: Removed wx lib and CB Global vars.
* msys2_wx_multilibs: Edited WX variables.

* msys2_wx_multilibs: Added configure built wx multilibs.

Added header search paths.
Added wx multilibs.


* msys2_wx_multilibs: Added header search paths.
$(TARGET_COMPILER_DIR)lib\wx\include\$(WX_TOOLKIT)-unicode-$(WX_VERSION)
$(TARGET_COMPILER_DIR)include\wx-$(WX_VERSION)

* msys2_wx_multilibs: Added wx multilibs.
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_richtext-$(WX_VERSION).dll
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_propgrid-$(WX_VERSION).dll
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_html-$(WX_VERSION).dll
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_aui-$(WX_VERSION).dll
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_xrc-$(WX_VERSION).dll
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_adv-$(WX_VERSION).dll
wx_$(WX_TOOLKIT)$(WX_SUFFIX)_core-$(WX_VERSION).dll
wx_base$(WX_SUFFIX)_xml-$(WX_VERSION).dll
wx_base$(WX_SUFFIX)_net-$(WX_VERSION).dll
wx_base$(WX_SUFFIX)-$(WX_VERSION).dll


ExpandTicks


cd ../codeblocks_wx_multilib_gcc471TDM-git && git status -uno
# git remote add pch_fixes https://github.com/stahta01/codeblocks_PCH_fixes.git
git fetch origin && git fetch pch_fixes && git status -uno
#  git checkout build_cbp/wx_multilib && git status -uno
#  git branch --list
git rebase pch_fixes/PCH/cbp_fixes
git rebase origin/build_cbp/wx_compiler
git rebase origin/bugfix/sdk
git rebase origin/deceased/removals
git rebase origin/master && git status -uno
git push origin
## git push origin --force-with-lease
git svn fetch && git svn info

* wx_multilibs_gcc471TDM: Changed to make built wx multilibs.
fixup! * wx_multilibs_gcc471TDM: Changed to make built wx multilibs.
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_richtext
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_propgrid
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_html
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_aui
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_xrc
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_adv
wx$(WX_TOOLKIT)$(WX_VERSION)$(WX_SUFFIX)_core
wxbase$(WX_VERSION)$(WX_SUFFIX)_xml
wxbase$(WX_VERSION)$(WX_SUFFIX)_net
wxbase$(WX_VERSION)$(WX_SUFFIX)

sed '/pattern to match/d' ./infile

