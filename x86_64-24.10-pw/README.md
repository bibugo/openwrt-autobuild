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
>   - (128) Root filesystem partition size (in MiB)
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
>       - [x] Nftables Transparent Proxy
>       - [ ] Iptables Transparent Proxy
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
>       - [ ] Include Trojan-Plus
>       - [ ] Include tuic-client
>       - [x] Include V2ray_Geodata
>       - [x] Include V2ray-Plugin (Shadowsocks Plugin)
>       - [x] Include Xray
>       - [ ] Include Xray-Plugin
>   - Protocols
>     - [x] luci-proto-wireguard
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
