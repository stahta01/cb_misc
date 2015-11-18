## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Copy of upstream Code::Blocks trunk/master |
| release-15.xx              |Copy of upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Copy of builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| obf_sf/master              |Copy of master from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Copy of master and holds this README.md file about the other branches of mine. |
| compiler_cygwin            |Copy of build/CMD_GnuWinTools; with changes to Cygwin Compiler code. |
| build/CMD_GnuWinTools      |Copy of master; with CMD_macros being unix commands by default instead of Windows commands. |
| build/cygwin               |Copy of master; with changes for CygWin and MSys2 compiler usage. |
| build_cbp/win_cbp_saveas   |Copy of master; but with a projects save as done for most Windows Projects. |
| build_cbp/lib_folder_type1 |Copy of win_cbp_saveas with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Copy of win_cbp_saveas with added folders lib and lib30. |
| build_cbp/wx_compiler      |Copy of master; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Copy of obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| msys2/codeblocks           |Highly edited Code::Blocks designed to work and be built with MSys Compiler; but, it does NOT use MSys's wxWidgets libraries. |
| msys2/bootstrap            |Patched wx2.8 Source needed to build branch msys2/wx30_libs. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| bugfix/core                |Patched bugs in CB Core (not inside a plugin) |
| portability/fixes          |Copy of master; with changes that makes code or project more portable. |
| deceased/removals          |Copy of master; with code removed that looks like it has not worked in years. |
| remove/do_not_edit         |Copy of master; with "DO NOT EDIT" comments removed from some files. |
| wizard/code_fixes          |Copy of master; with scripted wizard code fixes. |
| PCH/code_fixes             |Copy of master; with Precompiled Header (PCH) related code fixes. |

| feature/sdk                |Copy of bugfix/sdk; with added features to CB SDK. |

Deleted build/cygwin
Deleted wizard/code_fixes
Deleted build/CMD_GnuWinTools
Renamed compiler_cygwin to cygwin_support
Renamed bugfix/core to bugfix/sdk


Branches that need updated/rebased
   msys2/wx30_libs            Maybe delete this branch; create patches, first.
   msys2/bootstrap            Maybe delete this branch; create patches, first.
   build_cbp/lib_folder_type1
   build_cbp/lib_folder_type2


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

git checkout bugfix/sdk
# Use GUI to push to origin and create new branch

# Git pull from origin to local branches.
git checkout tims_readme && git pull
git checkout remove/do_not_edit && git pull
git checkout deceased/removals && git pull
git checkout bugfix/sdk  && git pull
git checkout PCH/code_fixes && git pull
git checkout build_cbp/wx30x  && git pull

# 
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

git checkout msys2/wx30_libs
git rebase master
git.exe push origin --force-with-lease

git checkout build_cbp/win_cbp_saveas
git rebase master
git.exe push origin --force-with-lease

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
git rebase master
git.exe push origin --force-with-lease

m_Macros[_T("CMD_SHELL")] = _T("cmd /c");
m_Macros[_T("CMD_SHELL")]  = _T("sh -c");

m_Macros[_T("CMD_DFLT_SHELL")] = DEFAULT_CONSOLE_SHELL;

# Remove CMD_MKDIR_IGNORERR and see if msys2 build still works.
git checkout feature/sdk
git rebase bugfix/sdk
git rebase master
git.exe push origin --force-with-lease

# Add redefine of CMD_CP

git checkout cygwin_support
# use prefix "cygwin_support:"
# Fix Cygwin compiler to work with Cygwin 64 bit and 32 bit under Windows 7 64 bit.
# bool IsOpenWatcom = target->GetCompilerID().IsSameAs(_T("ow"));
# const wxString& GetParentID() const { return m_ParentID; }
# Add Option to enable GnuWinTools in GUI   environmentsettingsdlg.cpp
# Add Option to change shell in GUI         environmentsettingsdlg.cpp
#
git rebase feature/sdk
git rebase master
git.exe push origin --force-with-lease


git checkout msys2/codeblocks
# Use prefix "msys2_cb:"
git rebase build_cbp/win_cbp_saveas
git rebase portability/fixes
git rebase cygwin_support
git rebase deceased/removals
git rebase PCH/code_fixes
git rebase feature/sdk
git rebase master
git.exe push origin --force-with-lease
