# This file is designed to be ran from (git for Windows) bash shell


# Change to git folder
cd ~/devel/open_source_code/version_control/wxWidgets_3_0_branch || exit 1
# pwd

# Change to correct wxWidgets Git branch
# git lfs install
git checkout wxwidgets3.0.3+git-lfs || exit 2
# git status -uno


mkdir -p wxWidgets-3.0.3_headers
cp --recursive --update --preserve include wxWidgets-3.0.3_headers/
rm -f wxWidgets-3.0.3_headers/include/wx/msw/setup.h

7za u wxWidgets-3.0.3_headers.7z wxWidgets-3.0.3_headers\

# echo "Finished"
