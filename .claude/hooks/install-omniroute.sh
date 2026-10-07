#!/bin/bash
# Install omniroute globally in Claude Code cloud sessions.
set -euo pipefail

# Only run in remote (cloud) sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if command -v omniroute >/dev/null 2>&1; then
  exit 0
fi

npm i -g omniroute >/dev/null 2>&1
