echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install resilio-sync
curl https://raw.githubusercontent.com/supermeap123/rslsync/master/config.conf > config.conf
rslsync --config config.conf
