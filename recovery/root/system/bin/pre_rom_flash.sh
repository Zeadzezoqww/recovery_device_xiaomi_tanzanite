#!/system/bin/sh

SCRIPT_NAME="$(basename "$0")"

LOGMSG() {
    echo "I:$@" >> /tmp/recovery.log
}

LOGMSG "---$SCRIPT_NAME start---"

LOGMSG "Detecting active boot slot..."
slot="$(getprop ro.boot.slot_suffix)"
LOGMSG "Active boot slot: $slot"

LOGMSG "Backing up recovery.img before ROM overwrites..."
dd if="/dev/block/by-name/vendor_boot${slot}" of="/tmp/fox_backup.img" bs=1M
sync

LOGMSG "---$SCRIPT_NAME end---"
