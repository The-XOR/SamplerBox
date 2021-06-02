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
sudo mkdit /samples
