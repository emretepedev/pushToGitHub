#!/bin/bash

# show info message (default is false)
SHOW_INFO_MESSAGE=false

# path of the first dir
FIRST_DIR=$PWD

# path of the repository
REPO_DIR="$HOME/publish-activity.sh"

# switch dir to push
cd "$REPO_DIR" || (echo "your repository path is not correct" && exit)

if [ "$SHOW_INFO_MESSAGE" = true ]; then
  echo "Pushing to sync repository"
fi

# push
git push --no-verify

# back to the first dir
cd "$FIRST_DIR" || (echo "your first path is not correct" && exit)
