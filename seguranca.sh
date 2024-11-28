apt upgrade && apt upgrade -y

sudo apt install clawav

sudo freshclam

apt install snort 

apt install wireshark 

sudo groupadd wireshark 

sudo chgrp wireshark /usr/bin/dumpcap 
sudo chmod 750 /usr/bin/dumbcap 

sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap 

gnome-session-quit --no-prompt
