## target: x86_64 | packages: passwall 2

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
>     - [x] luci-app-passwall2
>     - Configuration  --->
>       - [x] Transparent Proxy
>       - [ ] Include Brook
>       - [ ] Include Hysteria
>       - [ ] Include NaiveProxy
>       - [x] Include Shadowsocks Libev Client
>       - [ ] Include Shadowsocks Libev Server
>       - [ ] Include Shadowsocks Rust Client
>       - [x] Include ShadowsocksR Libev Client
>       - [ ] Include ShadowsocksR Libev Server
>       - [x] Include Simple-Obfs (Shadowsocks Plugin)
>       - [ ] Include V2ray
>       - [x] Include V2ray-Plugin (Shadowsocks Plugin)
>   - Protocols
>     - [x] luci-proto-wireguard
>   - Libraries
>     - [x] luci-lib-ipkg
> 
> - Network
>   - File Transfer
>     - [x] wget-ssl
>   - Firewall
>     - [x] ip6tables-nft
>     - [x] iptables-nft
> 
> - Utilities
>   - Virtualization
>     - [x] qemu-ga
>   - [x] open-vm-tools
