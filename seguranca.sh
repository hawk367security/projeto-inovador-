apt upgrade && apt upgrade -y

#clamav instalation
sudo apt install clamav
clamav-daemon-y
apt install clamtk -y
chmod 777 /var/log/clamav/freshclam.log

#wireshark instalation
sudo apt install wireshark 

sudo freshclam 
sudo clamconf -n

sudo groupadd wireshark 

sudo chgrp wireshark /usr/bin/dumpcap 
sudo chmod 750 /usr/bin/dumbcap 

sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap 
#snort instalation
sudo apt install snort 

