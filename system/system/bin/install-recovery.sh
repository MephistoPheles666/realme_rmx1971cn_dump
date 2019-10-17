#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d62f661969c16f907afe4bd4964ad33d10778bf1; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c535a06327ab0a0ae3b1194dff9bbe91ac45decf EMMC:/dev/block/bootdevice/by-name/recovery d62f661969c16f907afe4bd4964ad33d10778bf1 67108864 c535a06327ab0a0ae3b1194dff9bbe91ac45decf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
