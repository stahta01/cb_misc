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
cd ../cbInno && git status && \
cd ../codeblocks_bluehazzard && git status && \
cd ../codeblocks_console-git && git status && \
cd ../codeblocks_msys2-git && git status && \
cd ../codeblocks_obfuscated-git && git status && \
cd ../CodeBlocks_UserTemplates_for_MSys2-git && git status && \
cd ../codeblocks_wizards-git && git status && \
cd ../codeblocks_wxcode-git && git status && \
cd ../MSys2_CodeBlocks_Projects && git status && \
cd ../windows-games && git status && \
cd ../wxTortoiseGit && git status && \
cd ../wxWidgets && git status && \
cd ../wxWidgets_2_8_branch && git status && \
cd ../wxWidgets_3_0_branch && git status && \
cd ../wxwidgets_build_scripts && git status && \
cd ../wxWidgets_PR && git status && \
cd ../wxWidgets_sample_code && git status && \
cd ../wxWidgets_samples-git && git status && \
cd ../passwordsafe_git_code && git status
