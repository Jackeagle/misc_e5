#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12410156:0b9274498e5c0c35754d4b47d18fbe7d56fe7bd9; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11476264:f3536264825d19f780aafead6b43c5e6ece49d63 EMMC:/dev/block/bootdevice/by-name/recovery 0b9274498e5c0c35754d4b47d18fbe7d56fe7bd9 12410156 f3536264825d19f780aafead6b43c5e6ece49d63:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
