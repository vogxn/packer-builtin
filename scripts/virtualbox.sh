# Installing the virtualbox guest additions
VBOX_PATH="/home/packer/VBoxGuestAdditions*.iso"

mount -o loop $VBOX_PATH /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
