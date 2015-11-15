## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Copy of upstream Code::Blocks trunk/master |
| release-15.xx              |Copy of upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Copy of builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| obf_sf/master              |Copy of master from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Copy of master and holds this README.md file about the other branches of mine. |
| build/CMD_GnuWinTools      |Copy of master; with CMD_macros being unix commands by default instead of Windows commands. |
| build_cbp/cygwin           |Copy of win_cbp_saveas with some CB Windows Projects set to use the Cygwin Compiler. |
| build_cbp/win_cbp_saveas   |Copy of master; but with a projects save as done for most Windows Projects. |
| build_cbp/lib_folder_type1 |Copy of win_cbp_saveas with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Copy of win_cbp_saveas with added folders lib and lib30. |
| build_cbp/wx_compiler      |Copy of master; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Copy of obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| msys2/codeblocks           |Highly edited Code::Blocks designed to work and be built with MSys Compiler; but, it does NOT use MSys's wxWidgets libraries. |
| msys2/bootstrap            |Patched wx2.8 Source needed to build branch msys2/wx30_libs. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| bugfix/core                |Patched bugs in CB Core (not inside a plugin) |
| cygwin_compiler            |Copy of build/CMD_GnuWinTools; with changes to Cygwin Compiler code. |
| portability/fixes          |Copy of master; with changes that makes code or project more portable. |
| deceased/removals          |Copy of master; with code removed that looks like it has not worked in years. |
| remove/do_not_edit         |Copy of master; with "DO NOT EDIT" comments removed from some files. |
| wizard/code_fixes          |Copy of master; with scripted wizard code fixes. |
| PCH/code_fixes             |Copy of master; with Precompiled Header (PCH) related code fixes. |
| build/cygwin               |Copy of master; with changes for CygWin and MSys2 compiler usage. |

Update this repo
    https://github.com/stahta01/codeblocks_setup_svn2git_https_metadata.git
    
  git remote add origin https://github.com/stahta01/tims_codeblocks_installer.git
  git push -u origin master


Need to do a installer release for 
  msys2/codeblocks
  cygwin_compiler

Need to add branch release-15.xx to origin

https://github.com/Alexpux/MSYS2-packages/tree/master/coreutils

# Update branch by rebasing with master branch
git checkout master && git pull
git checkout tims_readme && git rebase master && git.exe push origin --force-with-lease
git checkout remove/do_not_edit && git rebase master && git.exe push origin --force-with-lease
git checkout deceased/removals && git rebase master && git.exe push origin --force-with-lease
git checkout bugfix/core && git rebase master && git.exe push origin --force-with-lease
git checkout PCH/code_fixes && git rebase master && git.exe push origin --force-with-lease
git checkout build_cbp/wx30x && git rebase master && git.exe push origin --force-with-lease


git checkout wizard/code_fixes
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

git checkout build/CMD_GnuWinTools
# Add command to enable GnuWinTools.
# ConfigManager *cfg = Manager::Get()->GetConfigManager(_T("app"));
# cfg->Write(_T("/environment/gnu_win_tools"), (bool) true);
# cfg->ReadBool(_T("/environment/gnu_win_tools"), false)
git rebase bugfix/core
git rebase master
git.exe push origin --force-with-lease

git checkout compiler_cygwin
# use prefix "compiler_cygwin:"
# Fix Cygwin compiler to work with Cygwin 64 bit and 32 bit under Windows 7 64 bit.
# Add test for running under MSys and Cygwin to Cygwin compiler.
# Add to Cygwin Compiler code enables GnuWinTools if MSys2 or Cygwin detected.
# if(CompilerId.Matches(_T("gcc")))
# bool IsOpenWatcom = target->GetCompilerID().IsSameAs(_T("ow"));
# const wxString& GetParentID() const { return m_ParentID; }
git rebase build/CMD_GnuWinTools
git rebase master
git.exe push origin --force-with-lease

$(CMD_MKDIR)

git checkout build/cygwin
# Use prefix "build_cygwin:"
# Change Compiler to cygwin
# Think about removing the commits the replace "del" with $(CMD_RM) or "rm -f"
git rebase build_cbp/win_cbp_saveas
git rebase compiler_cygwin
git rebase master
git.exe push origin --force-with-lease

$(CMD_RM)

* msys2_cb: DO NOT USE UPSTREAM; Changed "\*" to "/*".

And, Changed "\" to "/" in most places in a CB Project.


git checkout msys2/codeblocks
# Fix SpellChecker issues.
# Use prefix "msys2_cb: xcopy:"
# Add Option to enable GnuWinTools in GUI   environmentsettingsdlg.cpp
# Add Option to change shell in GUI         environmentsettingsdlg.cpp
git rebase build/cygwin
git rebase portability/fixes
git rebase deceased/removals
git rebase PCH/code_fixes
git rebase bugfix/core
git rebase master
git.exe push origin --force-with-lease


git remote -v
git fetch obfuscated
git checkout obf_sf/master
git pull
git.exe push origin --force-with-lease

git checkout obf_sf/builds/wx31
git rebase obfuscated/builds/wx31
git rebase obf_sf/master
git.exe push origin --force-with-lease
