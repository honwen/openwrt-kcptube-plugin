# kcptube-plugin for OpenWrt

## 介绍

- kcptube-plugin

  Yet another SIP003 plugin for shadowsocks, based on [kcptube][k]

## 依赖

软件包的正常使用需要依赖 [openwrt-kcptube][openwrt-precompiled-feeds],

## 编译

- 从 OpenWrt 的 [SDK][s] 编译

  ```bash
  # 以 ar71xx 平台为例
  tar xJf openwrt-sdk-18.06.1-ar71xx-tiny_gcc-7.3.0_musl.Linux-x86_64.tar.xz
  cd openwrt-sdk-*-ar71xx-*
  # 获取 kcptube-plugin Makefile
  git clone https://github.com/chenhw2/openwrt-kcptube-plugin.git package/kcptube-plugin
  # 选择要编译的包 Network -> kcptube-plugin
  make menuconfig
  # 开始编译
  make package/kcptube-plugin/compile V=99
  ```

[s]: https://openwrt.org/docs/guide-developer/using_the_sdk#obtain_the_sdk
[k]: https://github.com/cnbatch/kcptube
[openwrt-precompiled-feeds]: https://github.com/honwen/openwrt-precompiled-feeds
