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

| wxContribItems             |Based on master; fixes to wxContribItems WinOS Projects. |
| portability/fixes          |Based on master; with changes that makes code or project more portable. |
| PCH branches are in        | https://github.com/stahta01/codeblocks_PCH_fixes |
| PCH/toolsplus              |Based on master; with Precompiled Header (PCH) related fixes. |
| PCH/cbp_fixes              |Based on portability/fixes; all other PCH branches are combined in this branch. |
| PCH/wxContribItems         |Based on wxContribItems; contains PCH fixes to three CB Projects. |
| PCH/wxSmith                |Based on PCH/wxContribItems; contains PCH fixes to several wxSmith Projects. |

Maybe create repo tims_unofficial_codeblocks_builds for my unofficial CB Builds.

Move Branch
    Moved branch wxContribItems back to origin.

Add Branch
    bugfix/plugins

    pch_fixes/PCH/Valgrind
    pch_fixes/PCH/HexEditor
    pch_fixes/PCH/SpellChecker
    pch_fixes/PCH/codesnippets
    pch_fixes/PCH/contrib
    pch_fixes/PCH/core
    pch_fixes/PCH/devpak_plugin
    pch_fixes/PCH/headerfixup
    pch_fixes/PCH/help_plugin
    pch_fixes/PCH/misc
    pch_fixes/PCH/source_exporter
    pch_fixes/PCH/wxContribItems

    pch_fixes/PCH/BrowseTracker
    pch_fixes/PCH/DoxyBlocks
    pch_fixes/PCH/FileManager
    pch_fixes/PCH/NassiShneiderman
    pch_fixes/PCH/SmartIndent
    pch_fixes/PCH/wxSmith
    pch_fixes/PCH/keybinder
Delete Branch
    DELETED pch_fixes/PCH/code_fixes
    DELETED build_cbp/wx_compiler
    DELETED pch_fixes/win_cbp_saveas

######################################################

git branch --list

git fetch --prune
git branch --all
