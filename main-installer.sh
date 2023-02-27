#!/bin/bash

cd ~
wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/database-installer.sh && wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/start-xtream.sh && wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/stop-xtream.sh
chmod +x *.sh
echo "xtreamui database is installing..."
./database-installer.sh
sleep 1
docker pull coporton/xtreamui:latest
sleep 1
docker run -d \
  --name xtreamui \
  coporton/xtreamui:latest \
  -p 25461:25461 \
  -p 25462:25462 \
  -p 25463:25463 \
  -p 25464:25464 \
  -p 25465:25465 \
  -p 25500:25500 \
  -v /opt/xtreamcodes/iptv_xtream_codes/logs:/home/xtreamcodes/iptv_xtream_codes/logs \
  -v /opt/xtreamcodes/iptv_xtream_codes/mysql:/var/lib/mysql \
  /usr/bin/supervisord
echo "The web interface is loading, it will take less than a minute. Please wait..."
# Remove the script file
rm "$0"