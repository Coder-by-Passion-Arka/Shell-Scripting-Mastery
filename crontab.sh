#!/bin/bash

# Cron schedule:
# 0 */4 * * 1 /bin/bash /mnt/e/D_Folder/Shell\ Scripting\ Mastery/crontab.sh
# Meaning: every 4 hours on Monday (1 = Monday in cron)

WORK_DIR="./"
SYS_LOGGER="$WORK_DIR/sys_logging.sh"

if [ ! -f "$SYS_LOGGER" ]; then
    echo "Logger script not found: $SYS_LOGGER" >&2
    exit 1
fi

cd "$WORK_DIR" || exit 1
bash "$SYS_LOGGER"
