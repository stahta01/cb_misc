cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos

cd EmBlocks && git fetch --all --prune && \
cd ../cb_misc && git fetch --all --prune && \
cd ../cb_projects_for_wxWidgets && git fetch --all --prune && \
cd ../codeblocks_PCH_fixes && git fetch --all --prune && \
cd ../codeblocks_custom_build && git fetch --all --prune && \
cd ../codeblocks_r7456 && git fetch --all --prune && \
# cd ../codeblocks_msys2 && git fetch --all --prune &&
# cd ../msys2_wx_config_exe && git fetch --all --prune &&
# cd ../wx-config-win && git fetch --all --prune &&
cd ../wxTortoiseGit && git fetch --all --prune && \
cd ../wxWidgets && git fetch --all --prune && \
cd ../passwordsafe_git_code && git fetch --prune ## --all errors out
