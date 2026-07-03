#!/bin/bash
#
# Patch files:
# before_feeds.sh, after_feeds.sh, before_compile.sh, after_compile.sh
#

echo "=== 安装宿主机工具链依赖 ==="
sudo apt-get update
sudo apt-get install -y clang llvm pahole dwarves

# 1. 自动寻找系统里安装的、带有版本号的真实 LLVM 编译器组件
REAL_CLANG=$(ls /usr/bin/clang-[0-9]* 2>/dev/null | head -n 1)
VERSION_SUFFIX=$(echo "$REAL_CLANG" | grep -oE "-[0-9]+")

if [ -n "$VERSION_SUFFIX" ]; then
    echo "检测到宿主机 LLVM 版本后缀为: $VERSION_SUFFIX"
    
    # 2. 智能按需创建软链接（如果无后缀命令不存在，则创建）
    for tool in clang llc llvm-strip llvm-dis opt; do
        if ! command -v $tool &> /dev/null; then
            echo "系统缺失无后缀命令 $tool，正在建立软链接..."
            sudo ln -sf /usr/bin/${tool}${VERSION_SUFFIX} /usr/bin/${tool}
        else
            echo "系统已存在命令 $tool (${src_path})，跳过软链接创建。"
        fi
    done
else
    echo "Warning: 未找到带版本号的 Clang 组件，跳过按需链接流程。"
fi

# 3. 打印最终验证结果（在 GitHub Actions 日志中一眼可见）
echo "==== 最终环境验证 ===="
echo "Clang 路径: $(which clang || echo '未找到')"
echo "Clang 版本: $(clang --version | grep -oE "version [0-9]+" || echo '未知')"
echo "LLC 路径: $(which llc || echo '未找到')"
echo "LLVM-Strip 路径: $(which llvm-strip || echo '未找到')"
