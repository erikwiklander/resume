#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Pandoc is not installed. Install it with: brew install pandoc" >&2
  exit 1
fi

if ! command -v typst >/dev/null 2>&1; then
  echo "Typst is not installed. Install it with: brew install typst" >&2
  exit 1
fi

OUT="${1:-dist/Erik_Wiklander_Resume.pdf}"
mkdir -p "$(dirname "$OUT")"
OUT_DIR="$(cd "$(dirname "$OUT")" && pwd)"
OUT_ABS="$OUT_DIR/$(basename "$OUT")"

pandoc resume.md \
  --from markdown+yaml_metadata_block \
  --to typst \
  --pdf-engine=typst \
  --template templates/resume.typst \
  --standalone \
  --output "$OUT_ABS"

echo "Wrote $OUT_ABS"
