# codeAdapt IDE

The plan is to fork Code::Blocks at some point after SVN 11400.

Planned or taken steps below.

##  1. Module Level Changes
###    a. Remove Modules
####      i.   templates
####      ii.  exchndl
####      iii. scintilla
####      iv.  Code-completion
####      v.   wxpropgrid
####      vi.  wxSmith
####      vii. wxSmithAui
####      viii.wxSmithContribItems
####      ix.  wxSmithSTC
####      x.   rndgen
####      xi.  squirrel and sqplus
####      xii. devpak
###    b. Remove files that are not needed
####      i.   Remove Makefile.am
###    c. Git Operations
####      i.   Create src/.gitattributes file
####      ii.  Normalize line-feeds on Windows
####      iii. Add src/.gitattributes file
####      iv.  Add src/.gitignore file
###    d. Add Modules
####      i.   Default User Project Templates
###    e. Move Modules
####      i.   Move src/include to src/include/ca
####      ii.  Move src/plugins/compilergcc to src/plugins/compiler
####      iii. Move src/plugins/debuggergdb to src/plugins/debugger

##  2. Add Documentation
###    a. Add README.md
###    b. Add Branches.txt

##  3. Fix Portablity Issues
###    a. Replace wx/wxscintilla.h with cbstyledtextctrl.h
###    b. Fix code errors using wxGTK/Win

##  4. Fix PCH Issues

##  5. Change MSys2 Projects to NOT use update batch files
###    a. codesnippets
###    b. DoxyBlocks
###    c. IncrementalSearch
###    d. lib_finder
###    e. ThreadSearch
###    f. ToolPlus

##  6. Feature Changes
###    a. Modify features
####      i.   Add disable option on Auto-Detect Compiler on startup
#####          compilerfactory.cpp needAutoDetection
###    b. Remove features
####      i.   Remove scripting language
####      ii.  Remove Auto adding of path to PCH file
#####          compilerMINGWgenerator.cpp pch_prepend
###    c. Add new features
####      i.   Add Lua scripting language
####      ii.  Add either wxCrafter or wxFormBuilder support
####      iii. Add Code-completion using Clang plugin
####      iv.  Improve C language support
####      v.   Improve assembly language support
####      vi.  Improve makefile support
####      vii. Add GUI to manually set file compile dependency 

##  7. Create command line only build tool

##  8. Change simple source code issues related to branding
###    a. Add SDK header "branding.h"
###    b. Add use of STANDARD_DATA_PATH like used in Em::Blocks
###    c. Add use of APP_NAME partly like used in Em::Blocks

##  9. Create installer
