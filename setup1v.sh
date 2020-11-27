cfdisk
mkfs.ext4 /dev/sda1 ; mount /dev/sda1 /mnt
mkswap /dev/sda2 ; swapon /dev/sda2
pacstrap -S /mnt base linux linux-firmware sudo networkmanager vim grub base-devel git xorg xorg-xinit xorg-server gdm gnome-terminal gnome-control-center gnome-tweak-tool gedit nautilus
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
