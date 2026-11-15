#!/usr/bin/env bash
set -e

PREFIX="${PREFIX:-$HOME/.local}"
BIN_DIR="${PREFIX}/bin"
SCRIPT_DIR="$(dirname "$(readlink -f "$0" 2>/dev/null || echo "$0")")"

echo "Installing Chroma to ${BIN_DIR}..."
mkdir -p "${BIN_DIR}"
cp "${SCRIPT_DIR}/chroma" "${BIN_DIR}/chroma"
chmod +x "${BIN_DIR}/chroma"

ln -sf "${BIN_DIR}/chroma" "${BIN_DIR}/palette"
ln -sf "${BIN_DIR}/chroma" "${BIN_DIR}/pallete"

echo "Done! You can run Chroma using: chroma (or pallete)"
