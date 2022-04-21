#!/bin/bash
#
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
svn checkout "https://github.com/coolsnowwolf/packages/trunk/net/dns2socks" "package/helloworld/dns2socks"
svn checkout "https://github.com/coolsnowwolf/packages/trunk/net/microsocks" "package/helloworld/microsocks"
svn checkout "https://github.com/coolsnowwolf/packages/trunk/net/ipt2socks" "package/helloworld/ipt2socks"
svn checkout "https://github.com/coolsnowwolf/packages/trunk/net/pdnsd-alt" "package/helloworld/pdnsd-alt"
svn checkout "https://github.com/coolsnowwolf/packages/trunk/net/redsocks2" "package/helloworld/redsocks2"
svn checkout "https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-v2ray-server" "package/helloworld/luci-app-v2ray-server"
sed -i 's/^include\s.*luci\.mk/include $(TOPDIR)\/feeds\/luci\/luci\.mk/g' package/helloworld/luci-app-v2ray-server/Makefile
sed -i '0,/^tls:depends/s//tls:depends({ protocol = "trojan" })\n&/' package/helloworld/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/user.lua
