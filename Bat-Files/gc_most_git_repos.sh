cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos

cd EmBlocks-git && git gc && \
cd ../cb_misc-git && git gc && \
cd ../cb_projects_for_wxWidgets-git && git gc && \
cd ../codeblocks_PCH_fixes-git && git gc && \
cd ../codeblocks_custom_build-git && git gc && \
cd ../codeblocks_r7456-git && git gc && \
# cd ../codeblocks_msys2-git && git gc &&
# cd ../msys2_wx_config_exe-git && git gc &&
# cd ../wx-config-win-git && git gc &&
cd ../wxTortoiseGit-git && git gc && \
cd ../wxWidgets-git && git gc && \
cd ../passwordsafe_git_code-git && git gc --auto
