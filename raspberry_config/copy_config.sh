echo "this script needs sudo"
mount -o remount,rw /boot
cp cmdline.txt /boot
cp config.txt /boot
mount -o remount,ro /boot
echo "Done"

rm -rf /var/lib/dhcp /var/lib/dhcpcd5 /var/spool /etc/resolv.conf
ln -s /tmp /var/lib/dhcp
ln -s /tmp /var/lib/dhcpcd5
ln -s /tmp /var/spool
touch /tmp/dchpcd.resolv.conf
ln -s /tmp/dhcpcd.resolv.conf /etc/resolv.conf

rm /var/lib/systemd/random-seed
ln -s /tmp/random-seed /var/lib/systemd/random-seed


cat /etc/fstab
echo "Edita il file fstab copiando i PARTUUID cus sopr, poi sostituisci lo file"

