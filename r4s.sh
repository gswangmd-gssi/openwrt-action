#!/bin/bash
echo "Compile friendlyarm_nanopi-r4s for wangMingde......"
git pull
# rm -rf ./feeds/luci/applications/luci-app-netdata/
./scripts/feeds update -a && ./scripts/feeds install -a -f
rm -rf ./files/*
cp -rf ../openwrt-action/r4sfiles/* ./files
cp -rf ../MPTCP/r4sfiles/* ./files

cp -rf ../openwrt-action/configs/r4s.config .config

# Modify default linux KERNEL
sed -i 's/KERNEL_PATCHVER=5.15/KERNEL_PATCHVER=5.4/g' ./target/linux/rockchip/Makefile

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-argonne）
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' ./feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' ./feeds/luci/collections/luci-nginx/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' ./feeds/luci/collections/luci-ssl-nginx/Makefile
# Add autocore support for armvirt
#sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' ./package/lean/autocore/Makefile

# Set etc/openwrt_release
sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION='R$(date +%Y.%m.%d)'|g" ./package/lean/default-settings/files/zzz-default-settings

make defconfig

#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 
exit 0

