#!/bin/bash
curl -s https://api.nodes.guru/logo.sh | bash
curl https://api.nodes.guru/swap4.sh | bash
sudo apt update
sudo apt --fix-broken install -y
sudo apt install ubuntu-desktop -y --fix-missing < "/dev/null"
wget -O spacemesh.deb https://storage.googleapis.com/smapp/v0.3.14/spacemesh_app_0.3.14_amd64.deb
sudo dpkg -i spacemesh.deb
crontab -l > spacemesh_cron
echo "@reboot screen -dmS gui bash -c 'startx ; exec bash'" >> spacemesh_cron
crontab spacemesh_cron
rm spacemesh_cron
screen -dmS gui bash -c 'startx ; exec bash'
echo 'All done!'
