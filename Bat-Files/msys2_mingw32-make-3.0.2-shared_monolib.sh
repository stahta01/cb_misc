# This file is designed to be ran from (git for Windows) bash shell


# Change to git folder
cd ~/devel/open_source_code/version_control/wxWidgets_3_0_branch-git || exit 1
# pwd

# Change to correct wxWidgets Git branch
# git lfs install
git checkout wxwidgets3.0.2+git-lfs || exit 2
# git status -uno


export PATH=/C/Apps32/MSys2/mingw32/bin:$PATH

# echo $PATH

export _COMPILER_VERSION=630MSYS2

# echo $_COMPILER_VERSION

cd build/msw && \
mingw32-make -f makefile.gcc \
  CFG=mono \
  VENDOR=$_COMPILER_VERSION \
  COMPILER_VERSION=$_COMPILER_VERSION \
  CPPFLAGS="-Wmissing-include-dirs" \
  CXXFLAGS="-std=gnu++11 -Wno-unused-local-typedefs" \
  MONOLITHIC=1 SHARED=1 UNICODE=1 BUILD=debug

# echo "Finished"
