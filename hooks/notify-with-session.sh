#!/bin/bash

INPUT=$(cat)
MESSAGE=$(echo "$INPUT" | jq -r '.message')
SESSION_ID=$(echo "$INPUT" | jq -r '.session_id')
CWD=$(echo "$INPUT" | jq -r '.cwd')

PROJECT=$(echo "$CWD" | awk -F/ '{print $(NF-1)"/"$NF}')
SHORT_ID="${SESSION_ID:0:8}"

# Desktop notification
notify-send -a 'Claude Code' "Claude [$PROJECT:$SHORT_ID]" "$MESSAGE"
paplay /usr/share/sounds/freedesktop/stereo/complete.oga 2>/dev/null || paplay /usr/share/sounds/freedesktop/stereo/message.oga 2>/dev/null

# Telegram notification
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
if [[ -f "$SCRIPT_DIR/telegram.env" ]]; then
  source "$SCRIPT_DIR/telegram.env"
  curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d chat_id="${TELEGRAM_CHAT_ID}" \
    -d text="Claude [$PROJECT:$SHORT_ID]: $MESSAGE" \
    > /dev/null 2>&1
fi

exit 0
