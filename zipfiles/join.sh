#!/bin/bash
# Join script for: BASENAME.EXT
# Usage: bash join.sh

BASENAME="webmin_2.630_all"
EXT="deb"

echo "🔗 Joining chunks..."
cat "${BASENAME}.part_"* > "${BASENAME}.${EXT}"

# Verify
if [ -f "${BASENAME}.${EXT}" ]; then
  echo "✅ File joined successfully!"
  ls -lh "${BASENAME}.${EXT}"
else
  echo "❌ Failed to join file"
  exit 1
fi
