## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Copy of upstream Code::Blocks trunk/master |
| release-15.xx              |Copy of upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Copy of builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| obf_sf/master              |Copy of master from github.com/obfuscated/codeblocks_sf. |
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

Deleted build/cygwin
Deleted wizard/code_fixes
Deleted build/CMD_GnuWinTools
Deleted msys2/bootstrap
Renamed compiler_cygwin to cygwin_support
Renamed bugfix/core to bugfix/sdk

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

Need to do a installer release for 
  msys2/codeblocks
  cygwin_support

https://github.com/Alexpux/MSYS2-packages/tree/master/coreutils


# Git pull from origin to local branches.
cd ../codeblocks_https_metadata-git
git checkout tims_readme && git pull
git checkout remove/do_not_edit && git pull
git checkout deceased/removals && git pull
git checkout bugfix/sdk  && git pull
git checkout PCH/code_fixes && git pull
git checkout build_cbp/wx30x  && git pull

#
cd ../codeblocks_https_metadata-git
git checkout master && git pull && git svn fetch && git svn info
# Update branch by rebasing with master branch
git checkout tims_readme && git rebase master && git.exe push origin --force-with-lease
git checkout remove/do_not_edit && git rebase master && git.exe push origin --force-with-lease
git checkout deceased/removals && git rebase master && git.exe push origin --force-with-lease
git checkout bugfix/sdk && git rebase master && git.exe push origin --force-with-lease
git checkout PCH/code_fixes && git rebase master && git.exe push origin --force-with-lease
git checkout build_cbp/wx30x && git rebase master && git.exe push origin --force-with-lease

git remote -v

git fetch obfuscated
git checkout obf_sf/builds/wx31
git rebase obfuscated/builds/wx31
git rebase obfuscated/master
git.exe push origin --force-with-lease

git checkout build_cbp/lib_folder_type1
git rebase master 
git.exe push origin --force-with-lease

git checkout build_cbp/lib_folder_type2
git rebase master 
git.exe push origin --force-with-lease


git checkout build_cbp/win_cbp_saveas && git rebase master && git.exe push origin --force-with-lease

git checkout build_cbp/wx_compiler
git rebase build_cbp/win_cbp_saveas
git rebase master
git.exe push origin --force-with-lease

git checkout portability/fixes
# Add the copying that was removed from CB Help and Spellchecker Projects 
#   to update batch files.
# Remove output from batch file used by CB Projects
#   IncrementalSearch, ToolsPlus,
#     codesnippets, lib_finder, wxsmith,
#     DoxyBlocks, and ThreadSearch.
git rebase master && git push origin --force-with-lease


git checkout feature/sdk
git rebase bugfix/sdk
git rebase master && git push origin --force-with-lease


# Add redefine of CMD_CP
# Fix Cygwin compiler to work with Cygwin 64 bit and 32 bit under Windows 7 64 bit.
#
cd ../codeblocks_cygwin_support-git && git fetch origin
# git checkout cygwin_support
# use prefix "cygwin_support:"
git branch --list
git fetch  origin
git rebase origin/build_cbp/win_cbp_saveas
git rebase origin/portability/fixes
git rebase origin/deceased/removals
git rebase origin/PCH/code_fixes
git rebase origin/feature/sdk
git status -uno
# git rebase origin/cygwin_support
git rebase origin/master
git status -uno
git push origin


# Add Option to change shell in GUI         environmentsettingsdlg.cpp
# Use prefix "msys2_cb:"
cd ../codeblocks_msys2_wxMonoLib-git && git fetch origin && git status -uno
# git checkout msys2/codeblocks
git branch --list
git fetch  origin
git rebase origin/cygwin_support
git status -uno
git rebase origin/msys2/codeblocks
git status -uno
git rebase origin/master
git status -uno
git push origin


cd ../codeblocks_msys2_wxMultiLibs-git && git fetch origin
git checkout msys2/wx30_libs
# Prefix msys2_wx_multilibs:
# 
git branch --list
git fetch  origin
git rebase origin/msys2/codeblocks            # Done multiple times.
# git rebase origin/cygwin_support              # Do if above rebase fails
# git rebase origin/build_cbp/win_cbp_saveas    # Do if above rebase fails
git status -uno
git rebase origin/master
git status -uno
git push origin
# git rebase origin/master && git push origin --force-with-lease


wx_base$(WX_SUFFIX)-$(WX_VERSION).dll
wx_base$(WX_SUFFIX)_xml-$(WX_VERSION).dll
wx_base$(WX_SUFFIX)_net-$(WX_VERSION).dll
wx_msw$(WX_SUFFIX)_core-$(WX_VERSION).dll
wx_msw$(WX_SUFFIX)_aui-$(WX_VERSION).dll
wx_msw$(WX_SUFFIX)_propgrid-$(WX_VERSION).dll
wx_msw$(WX_SUFFIX)_xrc-$(WX_VERSION).dll
wx_msw$(WX_SUFFIX)_html-$(WX_VERSION).dll
wx_msw$(WX_SUFFIX)_adv-$(WX_VERSION).dll

msys2_wx_multilibs: Fixed some of the library issues.

ExpandTicks
