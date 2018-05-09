# codeAdapt IDE

The plan is to fork Code::Blocks at some point after SVN 11397.

Planned or taken steps below.

##  1. Change modules
### a. Remove Modules
#### i.   templates
#### ii.  exchndl
#### iii. scintilla
#### iv.  Code-completion
#### v.   rndgen
#### vi.  wxSmith
#### vii. wxSmithAui
#### viii.wxSmithContribItems
### b. Git Operations
#### i.   Create src/.gitattributes file
#### ii.  Normalize line-feeds on Windows
#### iii. Add src/.gitattributes file
#### iv.  Add src/.gitignore file
### c. Add Modules

##  2. Add Documentation
### a. Add README.md
### b. Add Branches.md

##  3. Fix Portablity Issues

##  4. Fix PCH Issues

##  5. Change MSys2 Projects to NOT use update batch or script files

##  6. Change simple source code issues related to branding
### a. Add SDK header "branding.h"
### b. Add use of STANDARD_DATA_PATH like used in Em::Blocks
### c. Add use of APP_NAME partly like used in Em::Blocks
