if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd cb_misc && git fsck --connectivity-only && \
cd ../cb_projects_for_wxWidgets && git fsck --connectivity-only && \
cd ../codeblocks_PCH_fixes && git fsck --connectivity-only && \
cd ../codeblocks_custom_build && git fsck --connectivity-only && \
cd ../codeblocks_r7456 && git fsck --connectivity-only && \
cd ../wxTortoiseGit && git fsck --connectivity-only && \
cd ../wxWidgets && git fsck --connectivity-only && \
cd ../passwordsafe_git_code && git fsck --connectivity-only
