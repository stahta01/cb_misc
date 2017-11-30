if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git status && \
cd ../cb_projects_for_wxWidgets && git status && \
cd ../codeblocks_PCH_fixes && git status && \
cd ../codeblocks_custom_build && git status && \
cd ../codeblocks_r7456 && git status && \
cd ../wxTortoiseGit && git status && \
cd ../wxWidgets && git status && \
cd ../passwordsafe_git_code && git status
