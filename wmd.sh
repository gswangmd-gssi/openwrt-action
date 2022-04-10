#!/bin/bash
echo "compile for wangMingde......"
rm -rf ./tmp
rm -rf ./files/*
cp -rf ../openwrt-action/wmdfiles/* ./files

git pull
./scripts/feeds update -a && ./scripts/feeds install -a
cp -rf ../openwrt-action/wmd.config .config
cp -rf ../openwrt-action/zzz-default-settings-wmd ./package/lean/default-settings/files/zzz-default-settings
#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.4/g' ./target/linux/x86/Makefile

make defconfig
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 
exit 0

