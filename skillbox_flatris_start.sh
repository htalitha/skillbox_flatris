#!/bin/bash

sudo apt update
sudo apt -y install git vim docker.io docker-compose
sudo gpasswd -a $USER docker
git clone https://github.com/htalitha/skillbox.git ~/skillbox
cd ~/skillbox
git clone https://github.com/htalitha/flatris.git
crontab -l > file 2>/dev/null; echo "@reboot /home/$USER/skillbox/skillbox_flatris_init.sh" >> file; crontab file; rm file
sudo /etc/init.d/cron restart
sudo reboot
