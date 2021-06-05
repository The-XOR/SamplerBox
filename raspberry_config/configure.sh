sudo usermod -a -G audio pi
sudo cp audio.conf /etc/security/limits.d/
sudo cp rc.local /etc/
sudo /sbin/sysctl -w vm.swappiness=10
sudo apt-get -y remove --purge triggerhappy logrotate dphys-swapfile 
sudo apt-get -y autoremove --purge
sudo apt-get -y install busybox-syslogd
sudo apt-get -y remove --purge rsyslog
sudo cp systemd-random-seed.service /lib/systemd/system/systemd-random-seed.service
cp remount.sh /home/pi
cp sb.sh /home/pi
sudo mkdir /samples

sudo mount -o remount,rw /boot
sudo cp cmdline.txt /boot
sudo cp config.txt /boot

sudo rm -rf /var/lib/dhcp /var/lib/dhcpcd5 /var/spool /etc/resolv.conf
sudo ln -s /tmp /var/lib/dhcp
sudo ln -s /tmp /var/lib/dhcpcd5
sudo ln -s /tmp /var/spool
sudo touch /tmp/dchpcd.resolv.conf
sudo ln -s /tmp/dhcpcd.resolv.conf /etc/resolv.conf

sudo rm /var/lib/systemd/random-seed
sudo ln -s /tmp/random-seed /var/lib/systemd/random-seed
sudo systemctl daemon-reload

cp .bashrc /home/pi/

cat /etc/fstab
echo "Edita il file fstab copiando i PARTUUID cus sopr, poi sostituisci lo file"

