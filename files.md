文件用途：
- OpenWrt For Wangmingde 固件编译相关配置
	- wmd.config 				固件编译配置
	- wmdfiles				插件默认设置
	- zzz-default-settings-wmd		固件默认设置
- OpenWrt For WangShen 固件编译相关配置
	- wmd.config 				固件编译配置
	- wmdfiles				插件默认设置
	- zzz-default-settings-wmd		固件默认设置
	
文件的使用：

REPO_URL: https://github.com/gswangmd-gssi/lede
REPO_BRANCH: master
FEEDS_CONF: feeds.conf.default
CONFIG_FILE: ws.config
DIY_P1_SH: diy-part1.sh
DIY_P2_SH: diy-part2.sh
UPLOAD_BIN_DIR: false
UPLOAD_FIRMWARE: true
UPLOAD_COWTRANSFER: false
UPLOAD_WETRANSFER: false
UPLOAD_RELEASE: true
DEFAULT_ZZZ_SETTINGS_FILE: zzz-default-settings-ws
DEFAULT_SETTINGS_FILES: wsfiles
TZ: Asia/Shanghai
