if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git fetch --all --prune && \
cd ../cb_projects_for_wxWidgets && git fetch --all --prune && \
cd ../codeblocks_PCH_fixes && git fetch --all --prune && \
cd ../codeblocks_custom_build && git fetch --all --prune && \
cd ../codeblocks_r7456 && git fetch --all --prune && \
cd ../wxTortoiseGit && git fetch --all --prune && \
cd ../wxWidgets && git fetch --all --prune && \
cd ../passwordsafe_git_code && git fetch --prune ## --all errors out
