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

cat >> .config <<'EOF'
CONFIG_PACKAGE_kmod-l2tp=y
CONFIG_PACKAGE_kmod-pppol2tp=y
CONFIG_PACKAGE_ppp-mod-pppol2tp=y
CONFIG_PACKAGE_xl2tpd=y
CONFIG_PACKAGE_kmod-wireguard=y
CONFIG_PACKAGE_luci-app-wireguard=y
CONFIG_PACKAGE_luci-proto-wireguard=y
CONFIG_PACKAGE_wireguard-tools=y
EOF

make defconfig
echo "11111111111111111111111111111111111111111111111"
grep -E 'CONFIG_PACKAGE_(kmod-l2tp|kmod-pppol2tp|ppp-mod-pppol2tp|xl2tpd)=' .config || true
grep -E 'CONFIG_PACKAGE_(kmod-wireguard|luci-app-wireguard|luci-proto-wireguard|wireguard-tools)=' .config || true