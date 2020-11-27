cfdisk
mkfs.ext4 /dev/sda1 ; mount /dev/sda1 /mnt
mkswap /dev/sda2 ; swapon /dev/sda2
pacstrap -S /mnt base linux linux-firmware sudo networkmanager vim grub base-devel git xorg xorg-xinit xorg-server gdm gnome-terminal gnome-control-center gnome-tweak-tool gedit nautilus
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/US/Eastern
hwclock --systohc
date
vim /etc/locale.gen ; locale-gen
vim /etc/locale.conf ; vim /etc/hostname ; vim /etc/hosts
grub-install --target=i386-pc /dev/sda ; grub-mkconfig -o /boot/grub/grub.cfg
useradd --create-home coop
passwd coop
passwd root
usermod -aG wheel coop
vim /etc/sudoers
systemctl enable gdm NetworkManager
exit
reboot
