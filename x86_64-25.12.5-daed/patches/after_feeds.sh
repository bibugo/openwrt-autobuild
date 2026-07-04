#!/bin/bash

echo "====== [CUSTOM] 正在强行开启内核 NETKIT 支持 ======"

GENERIC_CONFIG=$(ls target/linux/generic/config-6.* 2>/dev/null | head -n 1)
X86_CONFIG=$(ls target/linux/x86/config-6.* 2>/dev/null | head -n 1)

if [ -f "$GENERIC_CONFIG" ]; then
    if grep -q "# CONFIG_NETKIT is not set" "$GENERIC_CONFIG"; then
        sed -i 's/# CONFIG_NETKIT is not set/CONFIG_NETKIT=y/' "$GENERIC_CONFIG"
    else
        grep -q "CONFIG_NETKIT=y" "$GENERIC_CONFIG" || sed -i '$a CONFIG_NETKIT=y' "$GENERIC_CONFIG"
    fi
    echo "已修改通用配置: $GENERIC_CONFIG"
fi

if [ -f "$X86_CONFIG" ]; then
    grep -q "CONFIG_NETKIT=y" "$X86_CONFIG" || sed -i '$a CONFIG_NETKIT=y' "$X86_CONFIG"
    echo "已修改 X86 配置: $X86_CONFIG"
fi

echo "====== [CUSTOM] NETKIT 内核参数注入完成 ======"
