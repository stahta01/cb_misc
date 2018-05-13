# codeAdapt IDE

The plan is to fork Code::Blocks at some point after SVN 11397.

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

##  2. Add Documentation
###    a. Add README.md
###    b. Add Branches.txt

##  3. Fix Portablity Issues
###    a. Replace wx/wxscintilla.h with cbstyledtextctrl.h
###    b. Fix code errors using wxGTK/Win

##  4. Fix PCH Issues

##  5. Change MSys2 Projects to NOT use update batch or script files

##  6. Change scripting language to Lua

##  7. Create command line only build tool

##  8. Change simple source code issues related to branding
###    a. Add SDK header "branding.h"
###    b. Add use of STANDARD_DATA_PATH like used in Em::Blocks
###    c. Add use of APP_NAME partly like used in Em::Blocks
