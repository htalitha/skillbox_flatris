#!/bin/bash

sudo apt update
sudo apt install docker.io docker-compose
sudo gpasswd -a $USER docker
git clone https://github.com/htalitha/skillbox.git
cd skillbox
git clone https://github.com/htalitha/flatris.git
echo "@reboot /home/$USER/skillbox_flatris_init.sh" >> /etc/crontab
sudo reboot
