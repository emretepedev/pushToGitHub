#!/bin/bash

# path of the first dir
FIRST_DIR=$PWD

# path of the repository
REPO_DIR="$HOME/pushToGitHub"

# cleanup function will be called when the script exits
trap cleanup EXIT

# switch dir to commit
cd "$REPO_DIR" || (echo "your repository path is not correct" && exit)

# disable global hooks for this commit
git config --global --unset-all core.hooksPath

# get user name and email
GIT_USER_NAME=$(git config user.name)
GIT_USER_EMAIL=$(git config user.email)

# take a commit
git commit -S --allow-empty --allow-empty-message --file /dev/null --author="$GIT_USER_NAME <$GIT_USER_EMAIL>"

# back to first dir
cd "$FIRST_DIR" || echo "your first path is not correct"

cleanup() {
  if [ -n "$original_hooks_path" ]; then
    git config --global core.hooksPath "$original_hooks_path"
  else
    git config --global --unset-all core.hooksPath
  fi
}
