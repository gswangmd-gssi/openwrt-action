#!/bin/bash
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-theme-argon1806
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-smartdns
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-argon-config
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-jd-dailybonus
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-adblock-plus
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-godproxy
svn co https://github.com/kenzok8/jell/trunk/luci-app-adguardhome
svn co https://github.com/kenzok8/jell/trunk/adguardhome
svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-theme-rosy1806

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0

