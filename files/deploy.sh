#!/bin/bash
set -e

APP_DIR=${1:-$HOME}

sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential

git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install

sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo mv /tmp/env_db.sh /etc/profile.d/env_db.sh
source /etc/profile.d/env_db.sh
sudo systemctl start puma
sudo systemctl enable puma
cd ~/reddit
puma -d
