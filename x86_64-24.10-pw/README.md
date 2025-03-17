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
>       - [ ] Iptables Transparent Proxy (NEW)
>       - [x] Nftables Transparent Proxy (NEW)
>       - [x] Include Geoview (NEW)
>       - [x] Include Haproxy (NEW)
>       - [x] Include Hysteria
>       - [x] Include NaiveProxy
>       - [x] Include Shadowsocks Libev Client (NEW)
>       - [ ] Include Shadowsocks Libev Server
>       - [ ] Include Shadowsocks Rust Client (NEW)
>       - [ ] Include Shadowsocks Rust Server (NEW)
>       - [x] Include ShadowsocksR Libev Client (NEW)
>       - [ ] Include ShadowsocksR Libev Server (NEW)
>       - [x] Include Simple-Obfs (Shadowsocks Plugin) (NEW)
>       - [x] Include Sing-Box (NEW)
>       - [x] Include Trojan-Plus (NEW)
>       - [ ] Include tuic-client (NEW)
>       - [ ] Include V2ray_Geodata (NEW)
>       - [x] Include V2ray-Plugin (Shadowsocks Plugin) (NEW)
>       - [x] Include Xray (NEW)
>       [ ] Include Xray-Plugin (Shadowsocks Plugin) (NEW)
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
