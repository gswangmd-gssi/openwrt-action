2021-11-04
	1、代码升级；
	2、passwall升级。
	
	固件版本：OpenWrt v2021.11.03 / LuCI Master (git-21.280.14233-9b796b1)
	内核版本：5.10.77


2021-11-03
	1、代码升级；
	2、自定义防火墙，相当于重定向53端口到adguardhome.
	
	固件版本：OpenWrt v2021.11.03 / LuCI Master (git-21.280.14233-9b796b1)
	内核版本：5.10.77

2021-11-02
	1、代码升级；
	2、自定义dnsmasq.conf文件，直接加入127.0.0.1#5553，相当于adguardhome作为dnsmasq的上游服务器；
	3、取消网络加速相关插件；
	4、取消自定义dhcp自定义。
	
	固件版本：OpenWrt v2021.11.02 / LuCI Master (git-21.280.14233-9b796b1)
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
