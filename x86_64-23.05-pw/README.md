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
>       - [ ] Include Brook
>       - [x] Include Haproxy
>       - [ ] Include Hysteria
>       - [ ] Include NaiveProxy
>       - [x] Include Shadowsocks Libev Client
>       - [ ] Include Shadowsocks Libev Server
>       - [ ] Include Shadowsocks Rust Client
>       - [ ] Include Shadowsocks Rust Server
>       - [x] Include ShadowsocksR Libev Client
>       - [ ] Include ShadowsocksR Libev Server
>       - [x] Include Simple-Obfs (Shadowsocks Plugin)
>       - [ ] Include Trojan-GO
>       - [x] Include Trojan-Plus
>       - [x] Include V2ray
>       - [ ] Include Include V2ray_Geodata
>       - [x] Include V2ray-Plugin (Shadowsocks Plugin)
>       - [x] Include Xray
>       - [ ] Include Xray-Plugin (Shadowsocks Plugin)
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
>   - [x] open-vm-tools
