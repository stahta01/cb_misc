cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos

cd EmBlocks && git remote get-url origin && \
cd ../cb_misc && git remote get-url origin && \
cd ../cb_projects_for_wxWidgets && git remote get-url origin && \
cd ../codeblocks_PCH_fixes && git remote get-url origin && \
cd ../codeblocks_custom_build && git remote get-url origin && \
# cd ../codeblocks_r7456 && git remote get-url origin && \
# cd ../codeblocks_msys2 && git remote get-url cb_msys2 &&
# cd ../msys2_wx_config_exe && git remote get-url origin &&
# cd ../wx-config-win && git remote get-url origin &&
cd ../wxTortoiseGit && git remote get-url origin && \
cd ../wxWidgets && git remote get-url origin && \
cd ../passwordsafe_git_code && git remote get-url origin
