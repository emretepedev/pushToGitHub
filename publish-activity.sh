#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$SCRIPT_DIR/config.sh"

# path of the first dir
FIRST_DIR=$PWD

# switch dir to push
cd "$SCRIPT_DIR" || (echo "your repository path is not correct" && exit)

if [ "$SHOW_INFO_MESSAGES" = true ]; then
  echo "Pushing to sync repository"
fi

# push
git push --no-verify

# back to the first dir
cd "$FIRST_DIR" || (echo "your first path is not correct" && exit)
