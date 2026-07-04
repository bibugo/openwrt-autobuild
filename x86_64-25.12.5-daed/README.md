## target: x86_64 | packages: daed

> - Target System
>   - [x] x86
>
> - Subtarget
>   - [x] x86_64
>
> - Target Profile
>   - [x] Generic x86/64
>
> - Target Images
>   - (256) Root filesystem partition size (in MiB)
>
> - Global build settings
>   - Kernel build options
>     - [x] Compile the kernel with symbol table information  [CONFIG_KERNEL_KALLSYMS=y]
>     - [ ]   Reduce debugging information  [CONFIG_KERNEL_DEBUG_INFO_REDUCED is not set]
>     - [x] Compile the kernel with debug information  [CONFIG_KERNEL_DEBUG_INFO=y]
>     - [x]   Enable additional BTF type information  [CONFIG_KERNEL_DEBUG_INFO_BTF=y]
>     - [x]     Allow loading modules with non-matching BTF type info  [CONFIG_KERNEL_MODULE_ALLOW_BTF_MISMATCH=y]
>     - [x] Compile the kernel with kprobes support  [CONFIG_KERNEL_KPROBES=y]
>     - [x] Compile the kernel with BPF event support  [CONFIG_KERNEL_BPF_EVENTS=y]
>     - [x] Support BTF function arguments for probe events  [CONFIG_KERNEL_PROBE_EVENTS_BTF_ARGS=y]
>     - [x] XDP sockets support  [CONFIG_KERNEL_XDP_SOCKETS=y]
>
> - [x] Advanced configuration options (for developers)  [CONFIG_DEVEL=y]
>   - [x] Use ccache
>   - BPF toolchain (Build LLVM toolchain for eBPF)  [CONFIG_TOOLCHAINOPTS=y]
>     - [x] Use host LLVM toolchain  [CONFIG_BPF_TOOLCHAIN_HOST=y CONFIG_USE_LLVM_HOST=y]
>   - (/usr) Host LLVM toolchain path (prefix)  [CONFIG_BPF_TOOLCHAIN_HOST_PATH="/usr"]
>
> - Base system
>   - [ ] dnsmasq
>   - [x] dnsmasq-full
>
> - Kernel modules
>   - Netfilter Extensions
>     - [x] kmod-nft-tproxy
>   - Network Support
>     - [x] kmod-sched-bpf
>     - [x] kmod-sched-core
>     - [x] kmod-veth
>     - [x] kmod-xdp-sockets-diag
>
> - LuCI
>   - Collections
>     - [x] luci
>   - Modules
>     - Translations
>       - [x] Chinese Simplified (zh_Hans)
>     - [x] luci-compat
>   - Applications
>     - [x] luci-app-daede
>
> - Network
>   - File Transfer
>     - [x] wget-ssl
>   - Web Servers/Proxies
>     - [x] dae
>     - [x] daed
>
> - Utilities
>   - Virtualization
>     - [x] qemu-ga
