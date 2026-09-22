#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if [[ -f Gemfile ]] && command -v bundle >/dev/null 2>&1; then
  bundle exec jekyll build
elif command -v jekyll >/dev/null 2>&1; then
  jekyll build
else
  echo "Jekyll is not installed. Install it with: gem install jekyll bundler" >&2
  exit 1
fi

CHROME="${CHROME_BIN:-}"
if [[ -z "$CHROME" ]]; then
  for candidate in \
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
    "/Applications/Chromium.app/Contents/MacOS/Chromium" \
    "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"; do
    if [[ -x "$candidate" ]]; then
      CHROME="$candidate"
      break
    fi
  done
fi

if [[ -z "$CHROME" || ! -x "$CHROME" ]]; then
  echo "Chrome or Chromium was not found. Set CHROME_BIN to the browser executable." >&2
  exit 1
fi

OUT="${1:-dist/Erik_Wiklander_Resume.pdf}"
mkdir -p "$(dirname "$OUT")"
OUT_DIR="$(cd "$(dirname "$OUT")" && pwd)"
OUT_ABS="$OUT_DIR/$(basename "$OUT")"
RESUME_URL="file://$ROOT/_site/resume/index.html"

"$CHROME" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT_ABS" \
  "$RESUME_URL"

echo "Wrote $OUT_ABS"
