#!/bin/bash

pushd feeds/packages/lang
rm -rf golang && svn co https://github.com/openwrt/packages/branches/openwrt-22.03/lang/golang
popd
