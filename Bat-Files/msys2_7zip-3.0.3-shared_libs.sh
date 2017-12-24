# This file is designed to be ran from (git for Windows) bash shell


# Change to git folder
cd ~/devel/open_source_code/version_control/git_repos/wxWidgets_3_0_branch || exit 1
# pwd

# Change to correct wxWidgets Git branch
# git lfs install
git checkout wxwidgets3.0.3_git-lfs || exit 2
# git status -uno


mkdir -p wxMSW-3.0.3_gcc720MSYS2_dll_Dev/lib
cp --recursive --update --preserve lib/gcc720MSYS2_dll wxMSW-3.0.3_gcc720MSYS2_dll_Dev/lib/

7za u wxMSW-3.0.3_gcc720MSYS2_dll_Dev.7z wxMSW-3.0.3_gcc720MSYS2_dll_Dev/

# echo "Finished"