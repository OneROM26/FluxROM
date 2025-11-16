#!/bin/sh

# === CONFIG ===
PREBUILT_DIR="prebuilts/samsung/r11sxxx/system/lib"
FS_CONFIG="fs_config-system.txt"
FC_CONFIG="file_context-system.txt"
FS_PATCH="fs_config-system.auto.txt"
FC_PATCH="file_context-system.auto.txt"

# === INIT ===
> "$FS_PATCH"
> "$FC_PATCH"

# === LOAD EXISTING ENTRIES ===
existing_fs=$(mktemp)
existing_fc=$(mktemp)

grep -oE '^/system/lib/[^ ]+' "$FS_CONFIG" | sort -u > "$existing_fs"
grep -oE '^/system/lib/[^ ]+' "$FC_CONFIG" | sort -u > "$existing_fc"

# === SCAN BLOBS AND DIRS ===
find "$PREBUILT_DIR" \( -type f -o -type d \) | while read -r path; do
  rel="${path#*$PREBUILT_DIR/}"
  full="/system/lib/$rel"
  escaped=$(printf '%s\n' "$full" | sed 's/\./\\./g')

  # FS_CONFIG
  if ! grep -qxF "$full" "$existing_fs"; then
    mode=644
    [ -d "$path" ] && mode=755
    echo "$full 0 0 $mode capabilities=0x0 # [AUTO]" >> "$FS_PATCH"
  fi

  # FILE_CONTEXTS
  if ! grep -qxF "$full" "$existing_fc"; then
    label="u:object_r:system_lib_file:s0"
    echo "$escaped $label # [AUTO]" >> "$FC_PATCH"
  fi
done

# === CLEANUP ===
rm -f "$existing_fs" "$existing_fc"

echo "✅ Patch files generated:"
echo "  → $FS_PATCH"
echo "  → $FC_PATCH"
echo "📌 Review and merge into:"
echo "  → $FS_CONFIG"
echo "  → $FC_CONFIG"