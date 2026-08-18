#!/usr/bin/env bash
# Elf Theme Installer for Omarchy

set -euo pipefail

TARGET_DIR="$HOME/.config/omarchy/themes/elf"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Installing Elf Theme for Omarchy ==="

mkdir -p "$TARGET_DIR"
mkdir -p "$TARGET_DIR/backgrounds"

cp "$SCRIPT_DIR/colors.toml" "$TARGET_DIR/"
cp "$SCRIPT_DIR/icons.theme" "$TARGET_DIR/"
cp -r "$SCRIPT_DIR/backgrounds"/* "$TARGET_DIR/backgrounds/"

if command -v omarchy-theme-set >/dev/null 2>&1; then
    omarchy-theme-set elf
    echo "Elf theme applied successfully!"
fi

echo "=== Installation Complete! ==="
