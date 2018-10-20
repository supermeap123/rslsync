echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | tee /etc/apt/sources.list.d/resilio-sync.list
wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | apt-key add -
apt-get update
apt-get install resilio-sync curl -y
mkdir /home/rslsync/
curl https://raw.githubusercontent.com/supermeap123/rslsync/master/config.conf > /home/rslsync/config.conf
sudo su rslsync 
rslsync --identity skeet --nodaemon
rslsync --config /home/rslsync/config.conf
