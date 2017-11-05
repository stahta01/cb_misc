cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos

cd EmBlocks-git && git prune && \
cd ../cb_misc-git && git prune && \
cd ../cb_projects_for_wxWidgets-git && git prune && \
cd ../codeblocks_PCH_fixes-git && git prune && \
cd ../codeblocks_custom_build-git && git prune && \
cd ../codeblocks_r7456-git && git prune && \
# cd ../codeblocks_msys2-git && git prune &&
# cd ../msys2_wx_config_exe-git && git prune &&
# cd ../wx-config-win-git && git prune &&
cd ../wxTortoiseGit-git && git prune && \
cd ../wxWidgets-git && git prune && \
cd ../passwordsafe_git_code-git && git prune
