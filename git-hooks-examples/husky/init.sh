#!/bin/sh

HOOK=$(basename "$0")
GLOBAL_HOOKS_DIR=$(git config --global --get core.hooksPath)
GLOBAL_HOOK="${GLOBAL_HOOKS_DIR%/}/${HOOK}"
SHOW_HOOK_MESSAGE=true

if [ -n "$GLOBAL_HOOKS_DIR" ] && [ -f "$GLOBAL_HOOK" ]; then
  if [ "$SHOW_HOOK_MESSAGE" = true ]; then
    echo "Global hook found for $HOOK"
  fi

  sh "$GLOBAL_HOOK" "$@"

  exit $?
fi
