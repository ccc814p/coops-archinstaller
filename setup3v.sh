useradd --create-home coop
passwd coop
passwd root
usermod -aG wheel coop
vim /etc/sudoers
systemctl enable gdm NetworkManager
exit
reboot
