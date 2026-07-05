# openwrt-autobuild

```bash
git clone --depth=1 [-b <branch-name>] https://github.com/openwrt/openwrt.git
vi feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig

./scripts/diffconfig.sh
```

**References:**
- [[OpenWrt Wiki] Build system setup](https://openwrt.org/docs/guide-developer/toolchain/install-buildsystem#debianubuntumint)
- [[OpenWrt Wiki] Build system usage](https://openwrt.org/docs/guide-developer/toolchain/use-buildsystem)
