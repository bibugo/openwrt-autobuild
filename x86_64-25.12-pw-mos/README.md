## target: x86_64 | packages: passwall mosdns

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
>   - [ ] Build GRUB EFI images
>   - (256) Root filesystem partition size (in MiB)
>
> - Advanced configuration options (for developers)
>   - [x] Use ccache
>
> - Base system
>   - [ ] dnsmasq
>   - [x] dnsmasq-full
>
> - LuCI
>   - Collections
>     - [x] luci
>   - Modules
>     - Translations
>       - [x] Chinese Simplified (zh_Hans)
>     - [x] luci-compat
>   - Applications
>     - [x] luci-app-mosdns
>     - [x] luci-app-passwall
>       - Configuration  --->
>   - Libraries
>     - [x] luci-lib-ipkg
>
> - Network
>   - File Transfer
>     - [x] wget-ssl
>
> - Utilities
>   - Virtualization
>     - [x] qemu-ga
