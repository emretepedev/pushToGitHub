#!/bin/bash

# path of the first dir
FIRST_DIR=$PWD

# path of the repository
REPO_DIR="$HOME/pushToGitHub"

cleanup() {
  # restore original hooks path if it exists
  if [ -n "$ORIGINAL_HOOKS_PATH" ]; then
    git config --global core.hooksPath "$ORIGINAL_HOOKS_PATH"
  fi
}

# cleanup function will be called when the script exits
trap cleanup EXIT

# switch dir to commit
cd "$REPO_DIR" || (echo "your repository path is not correct" && exit)

# disable global hooks for this commit
ORIGINAL_HOOKS_PATH=$(git config --global --get core.hooksPath)
git config --global --unset-all core.hooksPath

# get user name and email
GIT_USER_NAME=$(git config --get user.name)
GIT_USER_EMAIL=$(git config --get user.email)

# take a commit
git commit -S --allow-empty --allow-empty-message --file /dev/null --author="$GIT_USER_NAME <$GIT_USER_EMAIL>"

# back to first dir
cd "$FIRST_DIR" || echo "your first path is not correct"
