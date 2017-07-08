cd ~/devel/open_source_code/version_control

cd EmBlocks-git && git fetch --all --prune && \
cd ../cb_misc-git && git fetch --all --prune && \
cd ../cb_projects_for_wxWidgets-git && git fetch --all --prune && \
cd ../codeblocks_PCH_fixes-git && git fetch --all --prune && \
cd ../codeblocks_custom_build-git && git fetch --all --prune && \
cd ../codeblocks_r7456-git && git fetch --all --prune && \
# cd ../codeblocks_msys2-git && git fetch --all --prune &&
# cd ../msys2_wx_config_exe-git && git fetch --all --prune &&
# cd ../wx-config-win-git && git fetch --all --prune &&
cd ../wxTortoiseGit-git && git fetch --all --prune && \
cd ../wxWidgets-git && git fetch --all --prune && \
cd ../passwordsafe_git_code-git && git fetch --prune ## --all errors out
