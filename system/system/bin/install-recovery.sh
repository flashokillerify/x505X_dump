#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ed79a80a3a2e6c0cea9e739234f4db98a15e5159; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f375bb0903de31dcb2c47af07749c1d6b97aa896 EMMC:/dev/block/bootdevice/by-name/recovery ed79a80a3a2e6c0cea9e739234f4db98a15e5159 67108864 f375bb0903de31dcb2c47af07749c1d6b97aa896:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
