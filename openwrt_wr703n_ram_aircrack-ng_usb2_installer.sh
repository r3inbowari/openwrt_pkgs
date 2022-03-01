#/bin/sh

echo Stage 0: Setting environment and update opkg
cd /tmp
opkg update
export LD_LIBRARY_PATH="/tmp/usr/lib:/tmp/lib"
export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/tmp/bin:/tmp/usr/sbin

echo Stage 1: Pulling packages
wget http://mirrors.tuna.tsinghua.edu.cn/openwrt/releases/17.01.7/packages/mips_24kc/packages/aircrack-ng_1.2-rc1-1_mips_24kc.ipk
wget http://mirrors.tuna.tsinghua.edu.cn/openwrt/releases/17.01.7/packages/mips_24kc/packages/airmon-ng_1.2-rc1-1_mips_24kc.ipk

echo Stage 2: Installing packages to RAM
opkg install -d ram aircrack-ng_1.2-rc1-1_mips_24kc.ipk
opkg install -d ram airmon-ng_1.2-rc1-1_mips_24kc.ipk
opkg install -d ram kmod-fs-ext4
opkg install -d ram kmod-usb-ohci
opkg install -d ram kmod-usb2
opkg install -d ram kmod-usb-storage
# luci-apps must install on rom
opkg install block-mount

echo Stage 3: Cleaning packages
rm -rf aircrack-ng_1.2-rc1-1_mips_24kc.ipk
rm -rf airmon-ng_1.2-rc1-1_mips_24kc.ipk

echo Stage 4: installation is completed
echo Please note that the environment variables are configured correctly.