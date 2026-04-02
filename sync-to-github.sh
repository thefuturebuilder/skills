#!/bin/bash
# Auto-sync skills to GitHub after Claude Code writes/edits a file in this repo.
# Called by Claude Code PostToolUse hook with JSON on stdin.

SKILLS_DIR="/Users/lukedavies/skills"

# Extract file path from hook stdin
FILE_PATH=$(jq -r '.tool_input.file_path // .tool_response.filePath // empty')

# Exit silently if no file path or file isn't in the skills directory
if [[ -z "$FILE_PATH" ]] || [[ "$FILE_PATH" != "$SKILLS_DIR"* ]]; then
  exit 0
fi

cd "$SKILLS_DIR" || exit 0

# Stage the changed file
git add "$FILE_PATH" 2>/dev/null

# Check if there's anything to commit
if git diff --cached --quiet 2>/dev/null; then
  exit 0
fi

# Get a relative path for the commit message
REL_PATH="${FILE_PATH#$SKILLS_DIR/}"

# Commit and push
git commit -m "Auto-sync: update $REL_PATH" --no-gpg-sign -q 2>/dev/null
git push origin main -q 2>/dev/null

# Output context back to Claude
echo "{\"hookSpecificOutput\":{\"hookEventName\":\"PostToolUse\",\"additionalContext\":\"Skill file synced to GitHub: $REL_PATH\"}}"
