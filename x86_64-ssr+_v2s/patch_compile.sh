#!/bin/bash

# Add ucl upx for v2ray
#svn checkout https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
#svn checkout https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
#sed -i 'N;28a\tools-y += ucl upx' tools/Makefile
#sed -i 'N;78a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
##sed -i 'x;/./{x;b};x;/^\$(curdir)\/.*\/compile\s:=/h;//i$(curdir)/upx/compile := $(curdir)/ucl/compile\ntools-y += ucl upx' tools/Makefile

# Fix tls depends for protocol trojan
#sed -i '0,/^tls:depends/s//tls:depends({ protocol = "trojan" })\n&/' package/feeds/lean/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/user.lua
#cat package/feeds/lean/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/user.lua
