#!/bin/bash

# path of the first dir
firstPath=$PWD

# path of the repository
repoPath="$HOME/pushToGitHub/"

# switch dir to commit
cd "$repoPath" || (echo "your repository path is not correct" && exit)

GIT_USER_NAME=$(git config user.name)
GIT_USER_EMAIL=$(git config user.email)

# take a commit
git commit -S --allow-empty --allow-empty-message --file /dev/null --author="$GIT_USER_NAME <$GIT_USER_EMAIL>"

# back to first dir
cd "$firstPath" || echo "your first path is not correct"

