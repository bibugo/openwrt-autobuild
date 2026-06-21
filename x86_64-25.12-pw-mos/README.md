## target: x86_64 | packages: passwall

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
>   - [ ] ext4
>   - [ ] Build GRUB EFI images
>   - (256) Root filesystem partition size (in MiB)
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
>     - [x] luci-app-passwall
>     - Configuration  --->
>       - [ ] Iptables Transparent Proxy
>       - [x] Nftables Transparent Proxy
>       - [x] Include Geoview
>       - [x] Include Haproxy
>       - [x] Include Hysteria
>       - [x] Include NaiveProxy
>       - [x] Include Shadowsocks Libev Client
>       - [ ] Include Shadowsocks Libev Server
>       - [ ] Include Shadowsocks Rust Client
>       - [ ] Include Shadowsocks Rust Server
>       - [x] Include ShadowsocksR Libev Client
>       - [ ] Include ShadowsocksR Libev Server
>       - [x] Include Simple-Obfs (Shadowsocks Plugin)
>       - [x] Include Sing-Box
>       - [x] Include Trojan-Plus
>       - [ ] Include tuic-client
>       - [ ] Include V2ray_Geodata
>       - [x] Include V2ray-Plugin (Shadowsocks Plugin)
>       - [x] Include Xray
>       - [ ] Include Xray-Plugin (Shadowsocks Plugin)
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
