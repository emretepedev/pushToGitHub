#!/bin/bash

# path of the first dir
FIRST_DIR=$PWD

# path of the repository
REPO_DIR="$HOME/pushToGitHub"

# switch dir to push
cd "$REPO_DIR" || (echo "your repository path is not correct" && exit)

# push
git push --no-verify

# back to the first dir
cd "$FIRST_DIR" || (echo "your first path is not correct" && exit)
