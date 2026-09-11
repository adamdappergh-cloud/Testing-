#!/bin/bash
# SessionStart hook for Claude Code on the web.
#
# Why this exists: web sessions clone the repo into a fresh, ephemeral
# container and seed ~/.claude/skills/ anew each time. They do NOT auto-load
# this repo's plugin (.claude-plugin/plugin.json), so its skills are
# otherwise "Unknown command" in a new chat. Web sessions DO load personal
# skills from ~/.claude/skills/, so we copy this repo's skills there on
# startup to make them invocable. Keep the loop below in step with the
# skills array in .claude-plugin/plugin.json.
#
# Idempotent and non-interactive; safe to run on every session start.
set -euo pipefail

# Repo root: provided by the harness, with a fallback for direct invocation.
REPO="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)}"
DEST="${HOME}/.claude/skills"

mkdir -p "$DEST"

for skill in teach teach-intensive grilling occasion; do
  src="$REPO/skills/productivity/$skill"
  if [ -d "$src" ]; then
    rm -rf "${DEST:?}/$skill"
    cp -R "$src" "$DEST/$skill"
  fi
done

exit 0
