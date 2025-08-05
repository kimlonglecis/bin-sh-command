#!/bin/bash

# Function: cleanOldFiles
# Usage: cleanOldFiles "/path/to/folder" "filename-pattern" days
cleanOldFiles() {
  local TARGET_PATH="$1"
  local FILENAME_PATTERN="$2"
  local OLDER_THAN_DAYS="$3"

  # Validate input
  if [ -z "$TARGET_PATH" ] || [ -z "$FILENAME_PATTERN" ] || [ -z "$OLDER_THAN_DAYS" ]; then
    echo "Usage: cleanOldFiles \"/path\" \"pattern\" days"
    return 1
  fi

  if [ ! -d "$TARGET_PATH" ]; then
    echo "Error: Directory '$TARGET_PATH' does not exist."
    return 1
  fi

  echo "Cleaning files in: $TARGET_PATH"
  echo "Matching pattern: $FILENAME_PATTERN"
  echo "Older than: $OLDER_THAN_DAYS days"

  # Run cleanup
  find "$TARGET_PATH" -type f -name "$FILENAME_PATTERN" -mtime +$OLDER_THAN_DAYS -print -delete
}

# Example call inside the script (uncomment to use immediately)
cleanOldFiles "/www/turn14_api/inventory/old_download" "Turn14Inventory*" 14
