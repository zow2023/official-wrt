#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

#rm -rf feeds/packages/net/{alist,adguardhome,xray*,v2ray*,v2ray*,sing*,smartdns}

#rm -rf feeds/luci/applications/luci-app-smartdns
#rm -rf feeds/packages/net/smartdns

#git clone https://github.com/pymumu/openwrt-smartdns feeds/packages/net/smartdns
#feeds/luci/applications/luci-app-smartdns/
#git clone https://github.com/pymumu/luci-app-smartdns.git -b lede feeds/luci/applications/luci-app-smartdns/
git clone https://github.com/CrazyPegasus/luci-app-accesscontrol-plus package/luci-app-accesscontrol-plus
git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol
git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus

#rm -rf feeds/packages/net/xray-core
#rm -rf feeds/packages/net/chinadns-ng
#rm -rf feeds/luci/applications/luci-app-passwall

#git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci
#git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall/packages
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b  luci-smartdns-dev package/passwall/luci
#rm -rf feeds/package/helloworld
#git clone https://github.com/fw876/helloworld.git -b master package/helloworld

#rm -rf feeds/luci/applications/luci-app-mosdns
#rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
#rm -rf feeds/packages/utils/v2dat
#rm -rf feeds/packages/net/adguardhome

rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

#find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
#find ./ | grep Makefile | grep mosdns | xargs rm -f

#git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/JAYLINK/g' package/base-files/files/bin/config_generate
