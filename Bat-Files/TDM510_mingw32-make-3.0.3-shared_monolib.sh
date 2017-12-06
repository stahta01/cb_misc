# This file is designed to be ran from (git for Windows) bash shell


# Change to git folder
cd ~/devel/open_source_code/version_control/git_repos/wxWidgets_3_0_branch || exit 1
# pwd

# Change to correct wxWidgets Git branch
# git lfs install
git checkout wxwidgets3.0.3_git-lfs || exit 2
# git status -uno


export PATH=/C/Apps32/MingwGCC510TDMmgw32/bin:$PATH

# echo $PATH

export _COMPILER_VERSION=510TDM

# echo $_COMPILER_VERSION

cd build/msw || exit 3

mingw32-make -f makefile.gcc \
  CFG=mono \
  VENDOR=$_COMPILER_VERSION \
  COMPILER_VERSION=$_COMPILER_VERSION \
  CXXFLAGS=-std=gnu++11 \
  MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=debug

mingw32-make -f makefile.gcc \
  CFG=mono \
  VENDOR=$_COMPILER_VERSION \
  COMPILER_VERSION=$_COMPILER_VERSION \
  CXXFLAGS=-std=gnu++11 \
  MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=release

# echo "Finished"
