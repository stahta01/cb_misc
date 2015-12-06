## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Copy of upstream Code::Blocks trunk/master |
| release-15.xx              |Copy of upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Copy of builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Copy of master and holds this README.md file about the other branches of mine. |
| pch_fixes/build_cbp/win_cbp_saveas   |Copy of master; but with a projects save as done for most Windows Projects. |
| build_cbp/lib_folder_type1 |Copy of win_cbp_saveas with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Copy of win_cbp_saveas with added folders lib and lib30. |
| build_cbp/wx_compiler      |Copy of master; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Copy of obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| msys2/codeblocks           |Highly edited Code::Blocks designed to work and be built with MSys Compiler; but, it does NOT use MSys's wxWidgets libraries. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| pch_fixes/portability/fixes|Copy of master; with changes that makes code or project more portable. |
| deceased/removals          |Copy of master; with code removed that looks like it has not worked in years. |
| remove/do_not_edit         |Copy of master; with "DO NOT EDIT" comments removed from some files. |
| pch_fixes/PCH/code_fixes   |Copy of master; with Precompiled Header (PCH) related code fixes. |
| cygwin_support             |Changes to support Cygwin Compiler. |
| bugfix/sdk                 |Patched bugs in CB SDK. |
| feature/sdk                |Copy of bugfix/sdk; with added features to CB SDK. |

?Delete obf_sf/master


Add Branch
| build/move_output          |Copy of portability/fixes; with "output" folder moved to src/update files. |
| bugfix/project_n_workspace |Copy of master; fixes to CB Projects and workspaces
| pch_fixes/PCH/cbp_fixes    |Copy of master; with Precompiled Header (PCH) related project fixes. |
| pch_fixes/wxContribItems   |Copy of master; fixes to wxContribItems WinOS Projects. |
| build_cbp/wx_multilib
| compiler/watcom

git fetch --prune
git branch --all
