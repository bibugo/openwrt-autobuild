#!/bin/bash
#
# Patch files:
# before_feeds.sh, after_feeds.sh, before_compile.sh, after_compile.sh
#

# --- 修复 OpenWrt 编译 eBPF 缺失 Clang/LLVM 版本的错误 ---
echo "=== Installing Clang/LLVM dependencies for eBPF ==="
sudo apt-get update
sudo apt-get install -y clang llvm pahole dwarves

# 自动检测系统实际安装的 clang 真实版本号并创建全局软链接
REAL_CLANG=$(ls /usr/bin/clang-[0-9]* 2>/dev/null | head -n 1)
REAL_STRIP=$(ls /usr/bin/llvm-strip-[0-9]* 2>/dev/null | head -n 1)

if [ -f "$REAL_CLANG" ]; then
    sudo ln -sf "$REAL_CLANG" /usr/bin/clang
    sudo ln -sf "$REAL_STRIP" /usr/bin/llvm-strip
    echo "Successfully linked $REAL_CLANG to /usr/bin/clang"
else
    echo "Warning: Real clang binary not found via pattern!"
fi

# 打印版本信息供 Actions 日志排查
echo "==== Verification ===="
which clang
clang --version | grep -oE "version [0-9]+"
