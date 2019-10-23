#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:aa22f26a087a1e9cd1a0b6c1226437781831cd64; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c386234968359c0634bb86b0db38ad532c612b26 EMMC:/dev/block/bootdevice/by-name/recovery aa22f26a087a1e9cd1a0b6c1226437781831cd64 67108864 c386234968359c0634bb86b0db38ad532c612b26:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
