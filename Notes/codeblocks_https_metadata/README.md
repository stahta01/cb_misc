## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Copy of upstream Code::Blocks SVN trunk |
| release-15.xx              |Copy of upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Copy of builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| obf_sf/master              |Copy of master from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Copy of master and holds this README.md file about the other branches of mine. |
| build_cbp/cygwin           |Copy of win_cbp_saveas with some CB Windows Projects set to use the Cygwin Compiler. |
| build_cbp/win_cbp_saveas   |Copy of master; but with a projects save as done for most Windows Projects. |
| build_cbp/lib_folder_type1 |Copy of win_cbp_saveas with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Copy of win_cbp_saveas with added folders lib and lib30. |
| msys2/bootstrap            |Patched wx2.8 Source needed to build branch msys2/wx30_libs. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| bugfix/core                |Patched bugs in CB Core (not inside a plugin) |
| build_code/CMD_macros      |Copy of master; edited file macrosmanager.cpp CMD Macros. |
| build_cbp/forwardSlash     |Copy of build_cbp/win_cbp_saveas with many backslashes changed to forwardslashes. |
| build/CMD_GnuWin32         |Copy of master; with CMD_macros being unix instead of Windows commands.
| build_cbp/wx_compiler      |Copy of master; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Copy of obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |

git checkout build_cbp/win_cbp_saveas
git rebase master
git.exe push origin --force-with-lease

git checkout build_cbp/cygwin
git rebase -i 89a894be77411d43caee32ca39b7a812268e9619
git rebase build/CMD_GnuWin32
git rebase build_cbp/win_cbp_saveas
git rebase master
git.exe push origin --force-with-lease 
