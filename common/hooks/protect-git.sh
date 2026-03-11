#!/usr/bin/env bash
# Claude Code Hook: Protect git workflow
# PreToolUse on Bash — blocks destructive commands and direct commits to main

set -euo pipefail

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | grep -o '"command"\s*:\s*"[^"]*"' | head -1 | sed 's/"command"\s*:\s*"//;s/"$//')

# Skip if no command found
[[ -z "$COMMAND" ]] && exit 0

# --- Rule 1: Block destructive git commands ---
if echo "$COMMAND" | grep -qE 'git\s+push\s+.*--force|git\s+push\s+.*-f(\s|$)|git\s+reset\s+--hard'; then
  echo "BLOCKED: Destructive git command detected."
  echo "  '$COMMAND'"
  echo ""
  echo "Force push and hard reset are prohibited."
  echo "Use safer alternatives (e.g., git push --force-with-lease, git revert)."
  exit 2
fi

# --- Rule 2: Block git commit/push on main branch ---
if echo "$COMMAND" | grep -qE 'git\s+(commit|push)'; then
  CURRENT_BRANCH=$(git branch --show-current 2>/dev/null || echo "")
  if [[ "$CURRENT_BRANCH" == "main" || "$CURRENT_BRANCH" == "master" ]]; then
    echo "BLOCKED: Cannot $( echo "$COMMAND" | grep -oE 'git\s+(commit|push)' | head -1 ) on '$CURRENT_BRANCH' branch."
    echo ""
    echo "Create a feature branch first:"
    echo "  git checkout -b feat/your-feature"
    echo "  git checkout -b fix/your-fix"
    echo "  git checkout -b refactor/your-refactor"
    exit 2
  fi
fi

exit 0
