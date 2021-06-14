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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate
sed -i 's/channel="36"/channel="157"/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/5180 MHz/5785 MHz/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '3a iwconfig wlan0 txpower 24' package/base-files/files/etc/rc.local
sed -i '4a iwconfig wlan1 txpower 24' package/base-files/files/etc/rc.local
