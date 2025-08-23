#!/bin/sh

HOOK=$(basename "$0")
PROJECT_HOOKS_DIR_RAW=$(git config --get core.hooksPath)
GLOBAL_HOOKS_DIR=$(git config --global --get core.hooksPath)
GLOBAL_HOOK="${GLOBAL_HOOKS_DIR%/}/${HOOK}"
SHOW_HOOK_MESSAGE=true

PROJECT_HOOKS_DIR="${PROJECT_HOOKS_DIR_RAW%/_}"
PROJECT_HOOK="${PROJECT_HOOKS_DIR%/}/${HOOK}"

run_project_hook_if_exists() {
  if [ -f "$PROJECT_HOOK" ]; then
    if [ "$SHOW_HOOK_MESSAGE" = true ]; then
      echo "Project hook found for $HOOK"
    fi

    sh "$PROJECT_HOOK"

    EXIT_CODE=$?
    if [ $EXIT_CODE -ne 0 ]; then
      exit $EXIT_CODE
    fi
  fi
}

run_global_hook_if_exists() {
  if [ -n "$GLOBAL_HOOKS_DIR" ] && [ -f "$GLOBAL_HOOK" ]; then
    if [ "$SHOW_HOOK_MESSAGE" = true ]; then
      echo "Global hook found for $HOOK"
    fi

    sh "$GLOBAL_HOOK"

    EXIT_CODE=$?
    if [ $EXIT_CODE -ne 0 ]; then
      exit $EXIT_CODE
    fi
  fi
}

run_project_hook_if_exists

run_global_hook_if_exists

exit 0
