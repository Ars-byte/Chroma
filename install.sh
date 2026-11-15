#!/usr/bin/env bash
set -e

# Chroma Installer

PREFIX="${PREFIX:-$HOME/.local}"
BIN_DIR="${PREFIX}/bin"
SHARE_DIR="${PREFIX}/share/shell-color-scripts/colorscripts"
SCRIPT_DIR="$(dirname "$(readlink -f "$0" 2>/dev/null || echo "$0")")"

echo "Installing Chroma to ${BIN_DIR}..."
mkdir -p "${BIN_DIR}"
cp "${SCRIPT_DIR}/chroma" "${BIN_DIR}/chroma"
chmod +x "${BIN_DIR}/chroma"

# Create convenience symlinks
ln -sf "${BIN_DIR}/chroma" "${BIN_DIR}/palette"
ln -sf "${BIN_DIR}/chroma" "${BIN_DIR}/pallete"

echo "Installing colorscripts to ${SHARE_DIR}..."
mkdir -p "${SHARE_DIR}"
if [[ -d "${SCRIPT_DIR}/colorscripts" ]]; then
    cp -r "${SCRIPT_DIR}/colorscripts/"* "${SHARE_DIR}/"
    chmod +x "${SHARE_DIR}"/*
fi

echo ""
echo "Done! You can run Chroma using any of the following commands:"
echo "  chroma"
echo "  palette"
echo "  pallete"
echo ""
echo "Make sure ${BIN_DIR} is in your PATH."
