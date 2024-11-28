apt upgrade && apt upgrade -y

sudo apt install clawav

apt install snort 


#wireshark instalation
apt install wireshark 
sudo freshclam 

sudo groupadd wireshark 

sudo chgrp wireshark /usr/bin/dumpcap 
sudo chmod 750 /usr/bin/dumbcap 

sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap 


