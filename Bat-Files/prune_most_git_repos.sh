if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git prune && \
cd ../cb_projects_for_wxWidgets && git prune && \
cd ../codeblocks_PCH_fixes && git prune && \
cd ../codeblocks_custom_build && git prune && \
cd ../codeblocks_r7456 && git prune && \
# cd ../codeblocks_msys2 && git prune &&
# cd ../msys2_wx_config_exe && git prune &&
# cd ../wx-config-win && git prune &&
cd ../wxTortoiseGit && git prune && \
cd ../wxWidgets && git prune && \
cd ../passwordsafe_git_code && git prune
