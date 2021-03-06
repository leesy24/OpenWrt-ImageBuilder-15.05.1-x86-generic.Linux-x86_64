#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/DWSBI
	NAME:=DWSB for Intel
	VERSION:=v1.10
	PACKAGES:= \
		avahi-daemon-service-http avahi-daemon-service-ssh avahi-nodbus-daemon \
		-dnsmasq \
		-dosfsck -dosfslabel \
		e2fsprogs \
		ethtool \
		fdisk \
		-firewall \
		ip \
		-ip6tables -iptables \
		iw iwinfo \
		kmod-3c59x kmod-8139too \
		kmod-ath5k kmod-ath9k \
		-kmod-button-hotplug \
		kmod-e100 kmod-e1000 \
		-kmod-fs-msdos kmod-fs-vfat \
		kmod-hwmon-lm90 \
		kmod-natsemi kmod-ne2k-pci \
		-kmod-nf-nathelper \
		kmod-nls-cp1250 kmod-nls-cp1251 kmod-nls-cp437 kmod-nls-cp775 \
		kmod-nls-cp850 kmod-nls-cp852 kmod-nls-cp862 kmod-nls-cp864 \
		kmod-nls-cp866 kmod-nls-cp932 kmod-nls-iso8859-1 kmod-nls-iso8859-13 \
		kmod-nls-iso8859-15 kmod-nls-iso8859-2 kmod-nls-iso8859-6 \
		kmod-nls-iso8859-8 kmod-nls-koi8r kmod-nls-utf8 \
		-kmod-ipt-conntrack -kmod-ipt-core \
		kmod-pcnet32 kmod-r8169 kmod-sis900 \
		kmod-stp \
		kmod-tg3 \
		kmod-usb-core kmod-usb-hid \
		kmod-usb-ohci-pci \
		kmod-usb-serial-ark3116 kmod-usb-serial-belkin kmod-usb-serial-ch341 \
		kmod-usb-serial-cp210x kmod-usb-serial-cypress-m8 kmod-usb-serial-ftdi \
		kmod-usb-serial-garmin kmod-usb-serial-keyspan kmod-usb-serial-mct \
		kmod-usb-serial-mos7720 kmod-usb-serial-option kmod-usb-serial-oti6858 \
		kmod-usb-serial-pl2303 kmod-usb-serial-qualcomm \
		kmod-usb-serial-sierrawireless kmod-usb-serial-simple \
		kmod-usb-serial-ti-usb -kmod-usb-serial-wwan \
		kmod-usb-storage-extras \
		kmod-usb-uhci \
		kmod-usb2 \
		kmod-via-rhine kmod-via-velocity \
		lftp \
		libiwinfo-lua \
		libncurses \
		luci-base luci-mod-admin-full luci-theme-bootstrap \
		-mkdosfs \
		-odhcp6c -odhcpd \
		openssh-sftp-server \
		-ppp -ppp-mod-pppoe \
		swconfig \
		uhttpd uhttpd-mod-ubus \
		usbreset usbutils \
		-wpad-mini wpad
	FILES_COPY:=files/DWSB/copy/.
	FILES_REMOVE:=files/DWSB/remove.lst
	SERIAL_BAUDRATE:=38400
endef

define Profile/DWSBI/Description
	DWSB WiFi server bridge package set based on Generic board.
endef
$(eval $(call Profile,DWSBI))
