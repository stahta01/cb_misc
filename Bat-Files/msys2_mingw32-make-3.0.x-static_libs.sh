# This file is designed to be ran from (git for Windows) bash shell


# Change to git folder
cd ~/devel/open_source_code/version_control/wxWidgets_3_0_branch || exit 1
# pwd

# Change to correct wxWidgets Git branch
# git lfs install
git checkout WX_3_0_BRANCH || exit 2
# git status -uno


export PATH=/C/Apps32/MSys2/mingw32/bin:$PATH

# echo $PATH

export _COMPILER_VERSION=630MSYS2

# echo $_COMPILER_VERSION

cd build/msw || exit 3

mingw32-make -f makefile.gcc \
  COMPILER_VERSION=$_COMPILER_VERSION \
  CXXFLAGS=-std=gnu++11 \
  MONOLITHIC=0 SHARED=0 UNICODE=1 BUILD=debug

mingw32-make -f makefile.gcc \
  COMPILER_VERSION=$_COMPILER_VERSION \
  CXXFLAGS=-std=gnu++11 \
  MONOLITHIC=0 SHARED=0 UNICODE=1 BUILD=release

# echo "Finished"
