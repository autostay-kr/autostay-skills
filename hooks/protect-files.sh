#!/usr/bin/env bash
# Claude Code Hook: Protect sensitive files
# PreToolUse on Write|Edit — blocks writes to env, credentials, keys

set -euo pipefail

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | grep -o '"file_path"\s*:\s*"[^"]*"' | head -1 | sed 's/"file_path"\s*:\s*"//;s/"$//')

# Skip if no file_path found
[[ -z "$FILE_PATH" ]] && exit 0

BASENAME=$(basename "$FILE_PATH")

# Check against sensitive file patterns
if echo "$BASENAME" | grep -qE '^\.env($|\.)' ||
   echo "$BASENAME" | grep -qiE '^credentials' ||
   echo "$BASENAME" | grep -qE '\.(pem|key)$'; then
  echo "BLOCKED: Cannot write to sensitive file '$BASENAME'."
  echo ""
  echo "Protected patterns: .env*, credentials*, *.pem, *.key"
  echo "Edit these files manually outside of Claude Code."
  exit 2
fi

exit 0
