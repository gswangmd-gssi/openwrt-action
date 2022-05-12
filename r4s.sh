#!/bin/bash
echo "Compile friendlyarm_nanopi-r4s for wangMingde......"
git pull
./scripts/feeds update -a && ./scripts/feeds install -a
rm -rf ./files/*
cp -rf ../openwrt-action/r4sfiles/* ./files
cp -rf ../openwrt-action/r4s.config .config

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
sed -i 's/luci-theme-bootstrap/luci-theme-argon1806/g' ./feeds/luci/collections/luci/Makefile
# Add autocore support for armvirt
sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' ./package/lean/autocore/Makefile
# Set etc/openwrt_release
sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION='R$(date +%Y.%m.%d)'|g" ./package/lean/default-settings/files/zzz-default-settings
echo "DISTRIB_SOURCECODE='lede'" >> ./package/base-files/files/etc/openwrt_release
# Modify default IP（FROM 192.168.1.1 CHANGE TO 10.10.10.252）
sed -i 's/192.168.1.1/10.10.10.252/g' ./package/base-files/files/bin/config_generate
make defconfig
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
# PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 

exit 0

