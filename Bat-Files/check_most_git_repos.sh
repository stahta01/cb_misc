cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos

cd EmBlocks && git fsck && \
cd ../cb_misc && git fsck && \
cd ../cb_projects_for_wxWidgets && git fsck && \
cd ../codeblocks_PCH_fixes && git fsck && \
cd ../codeblocks_custom_build && git fsck && \
cd ../codeblocks_r7456 && git fsck && \
# cd ../msys2_wx_config_exe && git fsck &&
# cd ../wx-config-win && git fsck &&
cd ../wxTortoiseGit && git fsck && \
cd ../wxWidgets && git fsck && \
cd ../passwordsafe_git_code && git fsck
