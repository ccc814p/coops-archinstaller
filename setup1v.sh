cfdisk
mkfs.ext4 /dev/vda1 ; mount /dev/vda1 /mnt
mkswap /dev/vda2 ; swapon /dev/vda2
pacstrap -S /mnt base linux linux-firmware sudo networkmanager vim grub base-devel git xorg xorg-xinit xorg-server gdm gnome-terminal gnome-control-center gnome-tweak-tool gedit nautilus
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
