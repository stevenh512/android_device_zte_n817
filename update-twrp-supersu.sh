#!/usr/bin/env bash
SUPERSU_FILENAME=SR3-SuperSU-v2.79-SR3-20170114223742.zip
SUPERSU_URL=https://download.chainfire.eu/1021/SuperSU/$SUPERSU_FILENAME.zip?retrieve_file=1

if [ ! -d ../../../supersu ]; then
  mkdir -p ../../../supersu
fi

if [ ! -f ../../../supersu/$SUPERSU_FILENAME ]; then
  wget $SUPERSU_URL -O /dev/null
  wget $SUPERSU_URL -O ../../../supersu/$SUPERSU_FILENAME
fi

mkdir -p tmp/supersu
unzip ../../../supersu/$SUPERSU_FILENAME -d tmp/supersu

# Install SuperSU into recovery overlay
if [ -d recovery/root/supersu ]; then
  rm -rf recovery/root/supersu
fi

mkdir -p recovery/root/supersu
cp tmp/supersu/META-INF/com/google/android/update-binary recovery/root/supersu/install-supersu.sh
cp tmp/supersu/armv7/chattr.pie recovery/root/supersu/chattr.pie
cp tmp/supersu/armv7/libsupol.so recovery/root/supersu/libsupol.so
cp tmp/supersu/armv7/su recovery/root/supersu/su
cp tmp/supersu/armv7/supolicy recovery/root/supersu/supolicy
cp tmp/supersu/common/install-recovery.sh recovery/root/supersu/install-recovery.sh
cp tmp/supersu/common/launch_daemonsu.sh recovery/root/supersu/99SuperSUDaemon
cp tmp/supersu/common/Superuser.apk recovery/root/supersu/Superuser.apk

# Clean up
rm -rf tmp


