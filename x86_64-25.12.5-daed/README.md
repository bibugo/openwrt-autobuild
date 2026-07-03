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
>     - [ ]   Reduce debugging information
>     - [x] Compile the kernel with debug information
>     - [x]   Enable additional BTF type information
>     - [x] Compile the kernel with kprobes support
>     - [x] Compile the kernel with BPF event support
>     - [x] XDP sockets support
>
> - [x] Advanced configuration options (for developers)
>   - [x] Use ccache
>   - BPF toolchain (Build LLVM toolchain for eBPF)
>     - [x] Use host LLVM toolchain
>   - (/usr) Host LLVM toolchain path (prefix)
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
>
> - Utilities
>   - Virtualization
>     - [x] qemu-ga
