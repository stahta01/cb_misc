if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git checkout master && git pull origin master && git push && \
cd ../wxTortoiseGit && git checkout master && git pull upstream master && git push 
