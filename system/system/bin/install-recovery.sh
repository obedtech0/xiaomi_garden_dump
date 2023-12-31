#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:43a81d73b8d2ecc89b81db6abf115bbb912456a5; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:72fa8b2c641357a90c8b2e100d82fd35cc92e8c3 \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:43a81d73b8d2ecc89b81db6abf115bbb912456a5 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
