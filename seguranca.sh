apt upgrade && apt upgrade -y

#grafana instalation
sudo apt-get install -y apt-transport-https software-properties-common wget
sudo mkdir -p /etc/apt/keyrings/ wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
lipboard

echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com beta main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

sudo apt-get update
sudo apt-get install grafana
sudo apt-get install grafana-enterprise

#clamav instalation
sudo apt install clamav
clamav-daemon-y
apt install clamtk -y
chmod 777 /var/log/clamav/freshclam.log
sudo freshclam 
sudo clamconf -n

#wireshark instalation
sudo apt install wireshark 

sudo groupadd wireshark 

sudo chgrp wireshark /usr/bin/dumpcap 
sudo chmod 750 /usr/bin/dumbcap 

sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap 

#snort instalation
sudo apt install snort 

