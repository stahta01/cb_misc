if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git checkout master && git pull && \
cd ../cb_projects_for_wxWidgets && git checkout master && git pull && \
cd ../codeblocks_PCH_fixes && git checkout master && git pull && \
cd ../codeblocks_custom_build && git checkout master && git pull && \
cd ../codeblocks_r7456 && git checkout master && git pull && \
cd ../wxTortoiseGit && git checkout master && git pull && \
cd ../wxWidgets && git checkout master && git pull
