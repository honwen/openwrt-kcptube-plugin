#
# Copyright (C) 2021-2022 honwen <https://github.com/honwen>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kcptube-plugin
PKG_VERSION:=0.0.1
PKG_RELEASE:=20230611
PKG_MAINTAINER:=honwen <https://github.com/honwen>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)-$(PKG_RELEASE)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=SIP003 plugin for shadowsocks, based on kcptube
	URL:=https://github.com/honwen/kcptube-plugin
	DEPENDS:=+kcptube
endef

define Package/$(PKG_NAME)/description
	Yet another SIP003 plugin for shadowsocks, based on kcptube
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./src/kcptube-plugin $(1)/usr/bin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
