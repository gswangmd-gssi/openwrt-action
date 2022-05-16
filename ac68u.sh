#!/bin/bash
echo "compile AC68U for wangMingde......"
git pull
./scripts/feeds update -a && ./scripts/feeds install -a

echo "compile for AC68U......"
rm -rf ./files/*
cp -rf ../openwrt-action/AC68Ufiles/* ./files
cp -rf ../openwrt-action/configs/AC68U.config .config
cp -rf ../openwrt-action/zzz-default-settings-AC68U ./package/lean/default-settings/files/zzz-default-settings
make defconfig
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 

exit 0

