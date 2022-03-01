#/bin/sh

echo ====================
echo Device: TP-Link WR703N
echo Software: usb2
echo Author: r3inbowari
echo Desc: hello openwrt
echo ====================

echo Stage 0: Setting environment and update opkg
cd /tmp
opkg update
export LD_LIBRARY_PATH="/tmp/usr/lib:/tmp/lib"
export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/tmp/bin:/tmp/usr/sbin

echo Stage 1: Installing packages to RAM
opkg install -d ram kmod-fs-ext4
opkg install -d ram kmod-usb-ohci
opkg install -d ram kmod-usb2
opkg install -d ram kmod-usb-storage
# luci-apps must install on rom
opkg install block-mount

echo Stage 2: Cleaning packages

echo Stage 3: installation is completed
echo Please note that the environment variables are configured correctly.