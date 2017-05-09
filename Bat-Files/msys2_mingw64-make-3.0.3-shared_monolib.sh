# This file is designed to be ran from (git for Windows) bash shell


cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/no_version_control/wxWidgets-3.0.3 || exit 1
# pwd

export PATH=/C/Apps64/MSys2/mingw64/bin:$PATH

# echo $PATH

export _COMPILER_VERSION=630MSYS2_x64

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
