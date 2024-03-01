#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-smartdns


# curl/8.5.0 - fix passwall `time_pretransfer` check
rm -rf feeds/packages/net/curl
git clone --depth=1 https://github.com/sbwml/feeds_packages_net_curl feeds/packages/net/curl

# nghttp3
rm -rf feeds/packages/libs/nghttp3
git clone --depth=1 https://github.com/sbwml/package_libs_nghttp3 package/libs/nghttp3

# ngtcp2
rm -rf feeds/packages/libs/ngtcp2
git clone --depth=1 https://github.com/sbwml/package_libs_ngtcp2 package/libs/ngtcp2




git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb







rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang




sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a






# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改 argon 为默认主题,不再集成luci-theme-bootstrap主题
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 添加网口
# sed -i 's/eth0/eth0 eth2 eth3/g' package/base-files/files/etc/board.d/99-default_network
# sed -i '$i uci set network.lan.ifname="eth0 eth2 eth3"' package/*/*/my-default-settings/files/uci.defaults
# sed -i '$i uci set network.wan.ifname="eth1"' package/*/*/my-default-settings/files/uci.defaults
# sed -i '$i uci set network.wan.proto=dhcp' package/*/*/my-default-settings/files/uci.defaults
# sed -i '$i uci commit network' package/*/*/my-default-settings/files/uci.defaults

# 添加默认密码
# sed -i 's/root::0:0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

