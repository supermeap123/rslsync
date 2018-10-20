echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | tee /etc/apt/sources.list.d/resilio-sync.list
wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | apt-key add -
apt-get update
mkdir /home/rslsync/sync/
rslsync --webui.listen 0.0.0.0:8888
chromium-browser http://127.0.0.1:8888
