if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git fsck --no-full && \
cd ../cb_projects_for_wxWidgets && git fsck --no-full && \
cd ../codeblocks_PCH_fixes && git fsck --no-full && \
cd ../codeblocks_custom_build && git fsck --no-full && \
cd ../codeblocks_r7456 && git fsck --no-full && \
cd ../wxTortoiseGit && git fsck --no-full && \
cd ../wxWidgets && git fsck --no-full && \
cd ../passwordsafe_git_code && git fsck --no-full
