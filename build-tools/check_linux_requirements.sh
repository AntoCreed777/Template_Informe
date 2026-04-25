#!/usr/bin/env bash
set -euo pipefail

if [[ "$(uname -s)" != "Linux" ]]; then
  echo "Error: este script solo funciona en Linux."
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
missing=0

check_cmd() {
  local cmd="$1"
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "Falta comando: $cmd"
    missing=1
  fi
}

check_sty() {
  local sty="$1"
  if ! kpsewhich "$sty" >/dev/null 2>&1; then
    echo "Falta paquete TeX: $sty"
    missing=1
  fi
}

check_cmd latexmk
check_cmd pdflatex
check_cmd biber
check_cmd kpsewhich
check_cmd xdg-open

if [[ ! -f "$ROOT_DIR/src/main.tex" ]]; then
  echo "No se encontro main.tex en: $ROOT_DIR/src"
  missing=1
fi

check_sty booktabs.sty
check_sty algorithm2e.sty
check_sty biblatex.sty
check_sty tcolorbox.sty
check_sty listings.sty

if [[ $missing -ne 0 ]]; then
  echo "\nDependencias incompletas."
  echo "En Ubuntu, prueba:"
  echo "  sudo apt install texlive-latex-extra texlive-science texlive-lang-spanish biber"
  exit 1
fi
