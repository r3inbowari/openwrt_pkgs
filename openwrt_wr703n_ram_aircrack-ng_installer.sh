#/bin/sh

echo ====================
echo Device: TP-Link WR703N
echo Software: aircrack-ng
echo Author: r3inbowari
echo Desc: hello openwrt
echo ====================

echo Stage 0: Setting environment and update opkg
cd /tmp
opkg update
export LD_LIBRARY_PATH="/tmp/usr/lib:/tmp/lib"
export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/tmp/bin:/tmp/usr/sbin

echo Stage 1: Installing packages to RAM
opkg install -d ram aircrack-ng
opkg install -d ram airmon-ng

echo Stage 2: Cleaning packages

echo Stage 3: installation is completed
echo Please note that the environment variables are configured correctly.