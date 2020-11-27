ln -sf /usr/share/zoneinfo/US/Eastern
hwclock --systohc
date
vim /etc/locale.gen ; locale-gen
vim /etc/locale.conf ; vim /etc/hostname ; vim /etc/hosts
grub-install --target=i386-pc /dev/vda ; grub-mkconfig -o /boot/grub/grub.cfg
