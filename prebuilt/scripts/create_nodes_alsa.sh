#!/system/xbin/sh
mknod /dev/snd/controlC0 c 116 0
mknod /dev/snd/controlC1 c 116 32
mknod /dev/snd/controlC2 c 116 64
mknod /dev/snd/seq c 116 1
mknod /dev/snd/timer c 116 33
mknod /dev/snd/pcmC0D0p c 116 16
mknod /dev/snd/pcmC0D0c c 116 24
mknod /dev/snd/pcmC1D0p c 116 48
mknod /dev/snd/pcmC1D0c c 116 56
mknod /dev/snd/pcmC2D0p c 116 80
mknod /dev/snd/pcmC2D0c c 116 88
