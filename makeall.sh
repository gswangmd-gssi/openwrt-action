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
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 
echo "compile for wangShen......"
rm -rf ./files/*
cp -rf ../openwrt-action/wsfiles/* ./files
cp -rf ../openwrt-action/ws.config .config
cp -rf ../openwrt-action/zzz-default-settings-ws ./package/lean/default-settings/files/zzz-default-settings
make defconfig
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 

echo "compile for AC68U......"
rm -rf ./files/*
cp -rf ../openwrt-action/AC68Ufiles/* ./files
cp -rf ../openwrt-action/AC68U.config .config
cp -rf ../openwrt-action/zzz-default-settings-ws ./package/lean/default-settings/files/zzz-default-settings
make defconfig
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j$(($(nproc) + 1)) V=s
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin make -j1 V=s 

echo "Restore to WangMingde‘s Settings..."
rm -rf ./files/*
cp -rf ../openwrt-action/wmdfiles/* ./files
cp -rf ../openwrt-action/wmd.config .config
cp -rf ../openwrt-action/zzz-default-settings-wmd ./package/lean/default-settings/files/zzz-default-settings
exit 0

