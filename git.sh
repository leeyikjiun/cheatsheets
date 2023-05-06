# Clone a repository and set ssh command, user name and email. 
git clone --config "core.sshcommand=ssh -i <identity_file>" --config "user.name=<user.name>" --config "user.email=<user.email>" <repository>

# Rewrite committer as author.
GIT_COMMITTER_NAME=$(git log -n 1 --format=%an) GIT_COMMITTER_EMAIL=$(git log -n 1 --format=%ae) GIT_COMMITTER_DATE=$(git log -n 1 --format=%aD) git commit --amend --no-edit
