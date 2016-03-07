### This README is to Documents my Code::Blocks related Git Repos.

| Branch Name   | Branch URL                                                    | Purpose               |
|:--------------|:--------------------------------------------------------------|:---------------------:|
| origin        | https://github.com/stahta01/codeblocks_https_metadata.git     | Changes I hope upstream will accept. |
| pch_fixes     | https://github.com/stahta01/codeblocks_PCH_fixes.git          | My PCH related changes. |

| Branch Name                           | Purpose |
|:--------------------------------------|:-------:|
| origin/bugfix/plugins                 | ??? |
| origin/bugfix/sdk                     |Based on master; with patched bugs in CB SDK. |
| origin/bugfix/wxNewId                 | ??? |
| origin/build/move_output              |Based on portability/fixes; with "output" folder moved to src/update files. |
| origin/build/msys2_codeblocks         | ??? |
| origin/build/nonGUI                   | ??? |
| origin/build/wx_multilibs_gcc471TDM   | ??? |
| origin/build_cbp/lib_folder_type1     |Based on pch_fixes/win_cbp_saveas; with added folders lib, lib28, and lib30. |
| origin/build_cbp/lib_folder_type2     |Based on pch_fixes/win_cbp_saveas; with added folders lib and lib30. |
| origin/build_cbp/wx30x                |Based on obf_sf/builds/wx31; with fixes needed for windows building with wx3.0.x. |
| origin/build_cfg/msys2_and_cygwin     | ??? |
| origin/cbstyledtextctrl               | ??? |
| origin/deceased/removals              |Based on master; with code removed that looks like it has not worked in years. |
| origin/feature/cb_projects            | ??? |
| origin/feature/compiler               | ??? |
| origin/feature/sdk                    |Based on bugfix/sdk; with added features to CB SDK. |
| origin/feature/wizards                | ??? |
| origin/master                         |Based on upstream Code::Blocks trunk/master |
| origin/port/sqrat                     | ??? |
| origin/portability/fixes              |Based on master; with changes that makes code or project more portable. |
| origin/reducedGUI                     | ??? |
| origin/win_cbp_save_as                | ??? |


| PCH branches are in        | https://github.com/stahta01/codeblocks_PCH_fixes |
| PCH/toolsplus              |Based on master; with Precompiled Header (PCH) related fixes. |
| PCH/cbp_fixes              |Based on portability/fixes; all other PCH branches are combined in this branch. |
| PCH/wxContribItems         |Based on wxContribItems; contains PCH fixes to three CB Projects. |
| PCH/wxSmith                |Based on PCH/wxContribItems; contains PCH fixes to several wxSmith Projects. |

Maybe create repo tims_unofficial_codeblocks_builds for my unofficial CB Builds.

Move Branch
    Moved branch wxContribItems back to origin.

Add Branch
    reducedGUI
    feature/cb_projects         Add Virtural Target "SDK & Third Party Libs"
    bugfix/plugins

    pch_fixes/PCH/wxFormBuilder 
      that combines PCH/toolsplus, PCH/BrowseTracker, and PCH/codesnippets.
    pch_fixes/PCH/Valgrind
    pch_fixes/PCH/HexEditor
    pch_fixes/PCH/SpellChecker
    pch_fixes/PCH/contrib
    pch_fixes/PCH/core
    pch_fixes/PCH/devpak_plugin
    pch_fixes/PCH/headerfixup
    pch_fixes/PCH/help_plugin
    pch_fixes/PCH/misc
    pch_fixes/PCH/source_exporter
    pch_fixes/PCH/wxContribItems

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
    DELETED wxFormBuilder
    bugfix/project_n_workspace

######################################################

git branch --list

git fetch --prune
git branch --all
