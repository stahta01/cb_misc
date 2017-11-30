if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git gc && \
cd ../cb_projects_for_wxWidgets && git gc && \
cd ../codeblocks_PCH_fixes && git gc && \
cd ../codeblocks_custom_build && git gc && \
cd ../codeblocks_r7456 && git gc && \
# cd ../codeblocks_msys2 && git gc &&
# cd ../msys2_wx_config_exe && git gc &&
# cd ../wx-config-win && git gc &&
cd ../wxTortoiseGit && git gc && \
cd ../wxWidgets && git gc && \
cd ../passwordsafe_git_code && git gc --auto
