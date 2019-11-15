#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f4a5d1ac0e3c01f3a28c5de771831fb710ee7b97; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c01dc91112390d811b722af12fdd30c2f00cee84 EMMC:/dev/block/bootdevice/by-name/recovery f4a5d1ac0e3c01f3a28c5de771831fb710ee7b97 67108864 c01dc91112390d811b722af12fdd30c2f00cee84:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
