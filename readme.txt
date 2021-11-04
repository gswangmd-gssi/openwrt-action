2021-11-04
	1、代码升级；
	2、passwall升级；
	3、内置adguarghome：
		端口：5553
		上游DNS服务器文件：/etc/AdGuardHome.upstream_dns
		默认设置为5553端口重定向到dnsmasq, 具体设置可见自定义防火墙规则。
		
	固件版本：OpenWrt v2021.11.03 / LuCI Master (git-21.280.14233-9b796b1)
	内核版本：5.10.77



---------------------------------------------------------------------------------------------------
2021-09-20测试通过了GitHub云编译：
	For Wang Mingde:
			配置文件：		wmd.config
			版本文件：		zzz-default-settings-wmd
			默认设置目录：		wmdfiles
			工作流文件：		build-openwrt.yml
	For Wang Shen：
			配置文件：		ws.config
			版本文件：		zzz-default-settings-ws
			默认设置目录：		wsfiles
			工作流文件：		build-openwrt-ws.yml
---------------------------------------------------------------------------------------------------
