apt upgrade && apt upgrade -y

sudo apt install clamav
sudo apt install clamav-daemon

sudo apt install snort 




#wireshark instalation
sudo apt install wireshark 

sudo freshclam 
sudo clamconf -n

sudo groupadd wireshark 

sudo chgrp wireshark /usr/bin/dumpcap 
sudo chmod 750 /usr/bin/dumbcap 

sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap 


