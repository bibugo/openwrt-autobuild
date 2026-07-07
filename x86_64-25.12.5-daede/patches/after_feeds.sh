#!/bin/bash

set -e

echo "=== 自动注入内核 NETKIT 功能配置 ==="

GENERIC_CONFIG=$(ls target/linux/generic/config-6.* 2>/dev/null | head -n 1 || true)
X86_CONFIG=$(ls target/linux/x86/config-6.* 2>/dev/null | head -n 1 || true)

if [ -f "$GENERIC_CONFIG" ]; then
    if grep -q "# CONFIG_NETKIT is not set" "$GENERIC_CONFIG" 2>/dev/null; then
        sed -i 's/# CONFIG_NETKIT is not set/CONFIG_NETKIT=y/' "$GENERIC_CONFIG"
    else
        grep -q "CONFIG_NETKIT=y" "$GENERIC_CONFIG" 2>/dev/null || sed -i '$a CONFIG_NETKIT=y' "$GENERIC_CONFIG"
    fi
    echo "通用配置运行状态: $(grep "CONFIG_NETKIT=" "$GENERIC_CONFIG" || echo '配置失败')"
else
    echo "通用配置运行状态: 配置文件不存在，跳过"
fi

if [ -f "$X86_CONFIG" ]; then
    grep -q "CONFIG_NETKIT=y" "$X86_CONFIG" 2>/dev/null || sed -i '$a CONFIG_NETKIT=y' "$X86_CONFIG"
    echo "X86 配置运行状态:  $(grep "CONFIG_NETKIT=" "$X86_CONFIG" || echo '配置失败')"
else
    echo "X86 配置运行状态:  配置文件不存在，跳过"
fi
