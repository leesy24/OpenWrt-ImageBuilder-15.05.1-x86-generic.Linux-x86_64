#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/DWB6000I
	NAME:=DWB6000 for Intel
	VERSION:=-G115-20151224_BR1
	PACKAGES:= \
		coreutils-stty \
		-dnsmasq \
		fdisk \
		-firewall \
		-hwclock \
		-ip6tables -iptables \
		iw iwinfo \
		kmod-3c59x kmod-8139too \
		kmod-ath5k kmod-ath9k \
		kmod-bridge \
		-kmod-button-hotplug \
		kmod-e100 kmod-e1000 \
		kmod-natsemi kmod-ne2k-pci \
		-kmod-nf-nathelper \
		-kmod-ipt-conntrack -kmod-ipt-core \
		kmod-pcnet32 kmod-r8169 kmod-sis900 \
		kmod-tg3 \
		kmod-via-rhine kmod-via-velocity \
		libiwinfo-lua \
		libncurses \
		luci-base luci-mod-admin-full luci-theme-bootstrap \
		ncat \
		-odhcpd -odhcp6c \
		-ppp -ppp-mod-pppoe \
		uhttpd uhttpd-mod-ubus \
		usbutils \
		wireless-tools \
		-wpad-mini wpad
	FILES_COPY:= \
		files/DWx6000/copy/. \
		files/DWB6000/copy/.
	FILES_REMOVE:= \
		files/DWx6000/remove.lst \
		files/DWB6000/remove.lst
	SERIAL_BAUDRATE:=115200
endef

define Profile/DWB6000I/Description
	DWB6000 LAN to multi-WiFi client bridge package set based on Generic board.
endef
$(eval $(call Profile,DWB6000I))
