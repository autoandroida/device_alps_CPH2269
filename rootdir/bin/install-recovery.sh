#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):102760448:fca06bd10002f2bdb87f0db50e8d37ac1cfc2e42; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):33554432:73ee6a50fe85979e58bb9a7b2e7fa243716ba3cb \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):102760448:fca06bd10002f2bdb87f0db50e8d37ac1cfc2e42 && \
      log -t recovery "Installing new recovery image: succeeded" && \
      setprop ro.boot.recovery.updated true || \
      log -t recovery "Installing new recovery image: failed" && \
      setprop ro.boot.recovery.updated false
else
  log -t recovery "Recovery image already installed"
  setprop ro.boot.recovery.updated true
fi
