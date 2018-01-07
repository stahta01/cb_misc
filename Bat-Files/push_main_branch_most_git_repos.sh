if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git checkout master && git pull origin master && git push && \
cd ../wxWidgets_PR && git submodule deinit --all -f && \
cd ../wxWidgets_PR && git checkout WX_3_0_BRANCH && git pull upstream WX_3_0_BRANCH && git push && \
cd ../wxWidgets_PR && git checkout WX_3_0_3_BRANCH && git pull upstream WX_3_0_3_BRANCH && git push && \
cd ../wxWidgets_PR && git checkout master && git pull upstream master && git push && \
cd ../wxWidgets_PR && git submodule init --all && \
cd ../wxTortoiseGit && git checkout master && git pull upstream master && git push
