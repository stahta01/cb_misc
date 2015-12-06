## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Based on upstream Code::Blocks trunk/master |
| release-15.xx              |Based on upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Based on builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Based on master and holds this README.md file about the other branches of mine. |
| pch_fixes/win_cbp_saveas   |Based on master; but with a projects save as done for most Windows Projects. |
| build_cbp/lib_folder_type1 |Based on pch_fixes/win_cbp_saveas; with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Based on pch_fixes/win_cbp_saveas; with added folders lib and lib30. |
| build_cbp/wx_compiler      |Based on pch_fixes/win_cbp_saveas; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Based on obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| msys2/codeblocks           |Highly edited Code::Blocks designed to work and be built with MSys Compiler; but, it does NOT use MSys's wxWidgets libraries. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| pch_fixes/portability/fixes|Based on master; with changes that makes code or project more portable. |
| deceased/removals          |Based on master; with code removed that looks like it has not worked in years. |
| remove/do_not_edit         |Based on master; with "DO NOT EDIT" comments removed from some files. |
| pch_fixes/PCH/code_fixes   |Based on master; with Precompiled Header (PCH) related code fixes. |
| cygwin_support             |Based on pch_fixes/PCH/cbp_fixes; with changes to support Cygwin Compiler. |
| bugfix/sdk                 |Based on master; with patched bugs in CB SDK. |
| feature/sdk                |Based on bugfix/sdk; with added features to CB SDK. |

?Delete obf_sf/master

Maybe move wx_compiler to pch_fixes repo.

Add Branch
| build/move_output          |Based on portability/fixes; with "output" folder moved to src/update files. |
| bugfix/project_n_workspace |Based on master; with fixes to CB Projects and workspaces
| pch_fixes/PCH/cbp_fixes    |Based on master; with Precompiled Header (PCH) related project fixes. |
| pch_fixes/wxContribItems   |Based on master; fixes to wxContribItems WinOS Projects. |
| build_cbp/wx_multilib
| compiler/watcom

git fetch --prune
git branch --all
