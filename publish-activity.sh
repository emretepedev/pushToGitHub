#!/bin/bash

ACTIVITY_REPO_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$ACTIVITY_REPO_DIR/config.sh"

if [ "$SHOW_INFO_MESSAGES" = true ]; then
  echo "Pushing to sync repository"
fi

git -C "$ACTIVITY_REPO_DIR" push --no-verify
