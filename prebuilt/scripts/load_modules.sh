#!/system/bin/sh
insmod /lib/modules/isp-mod.ko
insmod /lib/modules/ov7675.ko
insmod /lib/modules/omap_ov7675_isp.ko
insmod /lib/modules/mt9d113.ko
insmod /lib/modules/omap_mt9d113_isp.ko
insmod /lib/modules/omap34xxcam.ko
insmod /lib/modules/omap_previewer.ko
insmod /lib/modules/omap_resizer.ko
insmod /lib/modules/omap_voutlib.ko
insmod /lib/modules/omap_vout.ko vid1_static_vrfb_alloc=1
insmod /lib/modules/mailbox.ko
insmod /lib/modules/mailbox_mach.ko
insmod /lib/modules/dspbridge.ko
insmod /lib/modules/bridgedriver.ko base_img=/system/lib/dsp/baseimage.dof
insmod /lib/modules/hdmitx.ko
insmod /lib/modules/nwolc.ko
insmod /lib/modules/snd-soc-omap-mcbsp.ko
insmod /lib/modules/snd-soc-wl1271.ko
insmod /lib/modules/snd-soc-wm8988.ko
insmod /lib/modules/snd-soc-tda19989.ko
insmod /lib/modules/snd-soc-archos.ko
insmod /lib/modules/fuse.ko
insmod /lib/modules/tun.ko
