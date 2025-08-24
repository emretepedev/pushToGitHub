#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$SCRIPT_DIR/config.sh"

# path of the first dir
FIRST_DIR=$PWD

cleanup() {
  # restore original hooks path if it exists
  if [ -n "$ORIGINAL_HOOKS_PATH" ]; then
    git config --global core.hooksPath "$ORIGINAL_HOOKS_PATH"
  fi
}

# cleanup function will be called when the script exits
trap cleanup EXIT

# switch dir to commit
cd "$SCRIPT_DIR" || (echo "your repository path is not correct" && exit)

# disable global hooks for this commit
ORIGINAL_HOOKS_PATH=$(git config --global --get core.hooksPath)
git config --global --unset-all core.hooksPath

# get user name and email
GIT_USER_NAME=$(git config --get user.name)
GIT_USER_EMAIL=$(git config --get user.email)

if [ "$SHOW_INFO_MESSAGES" = true ]; then
  echo "Commiting to sync repository"
fi

# take a commit
git commit -S --allow-empty --allow-empty-message --file /dev/null --author="$GIT_USER_NAME <$GIT_USER_EMAIL>"

# back to first dir
cd "$FIRST_DIR" || echo "your first path is not correct"
