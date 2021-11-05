2021-11-05
	1、代码升级；
	2、passwall升级；
	3、增加smartdns， 6053/5335，作为dnsmasq的上有服务器；
	4、内置adguarghome：
		端口：5553
		上游DNS服务器：127.0.0.1:6053
		默认设置为5553端口重定向到53端口, 具体设置可见自定义防火墙规则
	5、取消IPV6支持。
				
	固件版本：OpenWrt v2021.11.05 / LuCI Master (git-21.280.14233-9b796b1)
	内核版本：5.10.77

2021-11-04
	1、代码升级；
	2、passwall升级；
	3、内置adguarghome：
		端口：5553
		上游DNS服务器文件：/etc/AdGuardHome.upstream_dns
		默认设置为5553端口重定向到dnsmasq, 具体设置可见自定义防火墙规则。
		如果用adguardhome作为dnsmasq的上游服务器:
				a）注销防火墙自定义规则；
				b）设置DHCP/DNS中的DNS 转发：127.0.0.1#5553
				
	固件版本：OpenWrt v2021.11.04 / LuCI Master (git-21.280.14233-9b796b1)
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
