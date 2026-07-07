#!/bin/bash
#
# Patch files:
# before_feeds.sh, after_feeds.sh, before_compile.sh, after_compile.sh
#
set -e

echo "=== 自动配置 LLVM/Clang 工具链与 BTF 环境 ==="
sudo apt-get update
sudo apt-get install -y clang llvm pahole dwarves

REAL_CLANG=$(ls /usr/bin/clang-[0-9]* 2>/dev/null | head -n 1 || true)
VERSION_SUFFIX=$(echo "$REAL_CLANG" | grep -oE "-[0-9]+" || true)

if [ -n "$VERSION_SUFFIX" ]; then
    for tool in clang llc llvm-strip llvm-dis opt; do
        if ! command -v $tool &> /dev/null; then
            sudo ln -sf /usr/bin/${tool}${VERSION_SUFFIX} /usr/bin/${tool}
        fi
    done
fi

echo "Clang 工具路径: $(which clang || echo '未找到')"
echo "Clang 运行版本: $(clang --version 2>/dev/null | grep -oE "version [0-9]+" || echo '未知')"
echo "LLC 工具路径: $(which llc || echo '未找到')"
echo "LLVM-Strip 路径: $(which llvm-strip || echo '未找到')"
