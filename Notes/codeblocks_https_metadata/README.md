## codeblocks_https_metadata
### This Repo is where I am going to put Code::Blocks branches with changes I hope other will want.

| Branch Name                | Purpose |
|:---------------------------|:-------:|
| master                     |Based on upstream Code::Blocks trunk/master |
| release-15.xx              |Based on upstream Code::Blocks release-15.xx |
| obf_sf/builds/wx31         |Based on builds/wx31 from github.com/obfuscated/codeblocks_sf. |
| tims_readme                |Based on master and holds this README.md file about the other branches of mine. |
| build_cbp/lib_folder_type1 |Based on pch_fixes/win_cbp_saveas; with added folders lib, lib28, and lib30. |
| build_cbp/lib_folder_type2 |Based on pch_fixes/win_cbp_saveas; with added folders lib and lib30. |
| build_cbp/wx_compiler      |Based on pch_fixes/win_cbp_saveas; with project macro WX_COMPILER added to some Windows CB Projects. |
| build_cbp/wx30x            |Based on obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| msys2/codeblocks           |Highly edited Code::Blocks designed to work and be built with MSys Compiler; but, it does NOT use MSys's wxWidgets libraries. |
| msys2/wx30_libs            |Patched CBPs and Source needed to build CB using MSys2 native wx30 libs. |
| deceased/removals          |Based on master; with code removed that looks like it has not worked in years. |
| remove/do_not_edit         |Based on master; with "DO NOT EDIT" comments removed from some files. |
| cygwin_support             |Based on pch_fixes/PCH/cbp_fixes; with changes to support Cygwin Compiler. |
| bugfix/sdk                 |Based on master; with patched bugs in CB SDK. |
| feature/sdk                |Based on bugfix/sdk; with added features to CB SDK. |
| build/move_output          |Based on portability/fixes; with "output" folder moved to src/update files. |
| bugfix/project_n_workspace |Based on master; with fixes to CB Projects and workspaces. |
| build_cbp/wx_multilib      |Based on pch_fixes/PCH/cbp_fixes. |
| compiler/watcom            |Based on master. |
| pch_fixes/win_cbp_saveas   |Based on master; but with a projects save as done for most Windows Projects. |
| pch_fixes/PCH/cbp_fixes    |Based on master; with Precompiled Header (PCH) related project fixes. |
| pch_fixes/wxContribItems   |Based on master; fixes to wxContribItems WinOS Projects. |
| pch_fixes/PCH/code_fixes   |Based on master; with Precompiled Header (PCH) related code fixes. |
| pch_fixes branches are in  | https://github.com/stahta01/codeblocks_PCH_fixes |

| portability/fixes          |Based on master; with changes that makes code or project more portable. |
| pch_fixes/PCH/toolsplus    |Based on master; with Precompiled Header (PCH) related fixes. |


Maybe create repo tims_unofficial_codeblocks_builds for my unofficial CB Builds.

Move Branch
    Maybe move branch pch_fixes/wxContribItems back to origin.

Add Branch
    bugfix/plugins

    pch_fixes/PCH/BrowseTracker
    pch_fixes/PCH/DoxyBlocks
    pch_fixes/PCH/FileManager
    pch_fixes/PCH/NassiShneiderman
    pch_fixes/PCH/SmartIndent
    pch_fixes/PCH/wxSmith
    pch_fixes/PCH/keybinder
    pch_fixes/PCH/lib_finder
Delete Branch
    DELETED pch_fixes/PCH/code_fixes
    DELETED build_cbp/wx_compiler
    Work to no longer use branch win_cbp_saveas
    pch_fixes/win_cbp_saveas

######################################################

git branch --list

git fetch --prune
git branch --all
