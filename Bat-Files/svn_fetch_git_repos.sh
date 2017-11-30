if [ -z "$HOMEDRIVE" ]
then
  cd ~/devel/open_source_code/version_control/git_repos
else
  cd $HOMEDRIVE/Users/$USERNAME/devel/open_source_code/version_control/git_repos
fi

cd codeblocks_PCH_fixes && git svn fetch  && \
cd ../codeblocks_custom_build && git svn fetch
# cd ../codeblocks_console && git svn fetch  && \
# cd ../codeblocks_msys2 && git svn fetch  && \
# cd ../codeblocks_wx_multilib_gcc471TDM && git svn fetch
