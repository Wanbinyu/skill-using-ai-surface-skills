#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="$(basename "$ROOT")"
SRC="$ROOT/skills/$NAME"
[ -d "$SRC" ] || { echo "Missing $SRC"; exit 1; }
install_to() {
  local parent="$1"
  local dest="$parent/$NAME"
  mkdir -p "$parent"
  rm -rf "$dest"
  cp -R "$SRC" "$dest"
  echo "Installed -> $dest"
}
CLAUDE=0; PROJECT=0; ALL=0
for a in "$@"; do
  case "$a" in --claude|-c) CLAUDE=1 ;; --project|-p) PROJECT=1 ;; --all|-a) ALL=1 ;; esac
done
if [ "$CLAUDE" -eq 0 ] && [ "$PROJECT" -eq 0 ] && [ "$ALL" -eq 0 ]; then CLAUDE=1; fi
if [ "$CLAUDE" -eq 1 ] || [ "$ALL" -eq 1 ]; then install_to "$HOME/.claude/skills"; fi
if [ "$ALL" -eq 1 ]; then install_to "$HOME/.agents/skills"; install_to "$HOME/.cursor/skills"; fi
if [ "$PROJECT" -eq 1 ]; then
  for rel in .claude/skills .agents/skills .cursor/skills .github/skills; do
    install_to "$PWD/$rel"
  done
fi
echo "Done. Restart Claude Code."
