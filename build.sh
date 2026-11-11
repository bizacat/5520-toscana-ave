#!/bin/bash
# Builds index.html for web hosting from 5520-toscana-shell.html.
# The shell file is the source to edit; run this script after each change.
set -euo pipefail
cd "$(dirname "$0")"
{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="description" content="5520 Toscana Ave, a bright, single-story Mediterranean home with a native Texas shade garden in the Agave neighborhood of East Austin.">
<style>
:root { padding-top: env(safe-area-inset-top, 0px); padding-bottom: env(safe-area-inset-bottom, 0px); }
*, *::before, *::after { box-sizing: border-box; }
body { margin: 0; }
img { max-width: 100%; }
[hidden] { display: none !important; }
</style>
</head>
<body>
HEAD
  cat 5520-toscana-shell.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "Wrote index.html"
