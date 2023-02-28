#!/bin/bash
echo " "
GNCOL='\e[40;38;5;82m' #GNCOL
os=$(exec uname -m|grep 64)
if [ "$os" = "" ]
then os="x86"
else os="x64"
fi

echo -e "${GNCOL} ┌───────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │  Welcome to Xtream-UI Docker  │ \e[0m"
echo -e "${GNCOL} │  Author Coporton WorkStation  │ \e[0m"
echo -e "${GNCOL} └───────────────────────────────┘ \e[0m"
sleep 0
echo -e "${GNCOL} ┌───────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │    Detected a $os System      │ \e[0m"
echo -e "${GNCOL} └───────────────────────────────┘ \e[0m"
sleep 1
echo -e "${GNCOL} ┌───────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │   Loading Xtream-UI Docker    │ \e[0m"
echo -e "${GNCOL} │         Environment           │ \e[0m"
echo -e "${GNCOL} └───────────────────────────────┘ \e[0m"
echo " "
echo " "
sleep 1

cd ~
wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/database-installer.sh && wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/start-xtream.sh && wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/stop-xtream.sh
chmod +x *.sh

read -p "Do you want to run the database installer script? (Y/N) " choice

if [[ $choice == "Y" || $choice == "y" ]]; then

    echo "" 
    echo -e "${GNCOL} ┌─────────────────────────────────────────┐ \e[0m"
    echo -e "${GNCOL} │   Xtream-UI database is installing...   │ \e[0m"
    echo -e "${GNCOL} └─────────────────────────────────────────┘ \e[0m"
    echo ""
    ./database-installer.sh
    sleep 1
    
elif [[ $choice == "N" || $choice == "n" ]]; then
    echo "Exiting the script."
else
    echo "Invalid input. Please try again."
    exit 1
fi

echo " " 
echo -e "${GNCOL} ┌─────────────────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │   Pulling Image From coporton/xtreamui  │ \e[0m"
echo -e "${GNCOL} └─────────────────────────────────────────┘ \e[0m"
echo " "

docker pull coporton/xtreamui:latest
sleep 1

CONTAINER_NAME="xtreamui"

# Check if the container already exists
if docker ps -a | grep -q $CONTAINER_NAME; then
    read -p "The container '$CONTAINER_NAME' already exists. Do you want to remove it and create a new one? (Y/N) " answer
    if [ "$answer" == "y" ] || [ "$answer" == "Y" ]; then
        docker stop $CONTAINER_NAME
        docker rm $CONTAINER_NAME
    else
        echo "Aborting..."
        exit 1
    fi
fi

# Create and run the container
docker run -d -p 25462:25462 -p 25461:25461 -p 25463:25463 -p 25464:25464 -p 25465:25465 -p 25500:25500 -v /opt/xtreamui/logs:/home/xtreamcodes/iptv_xtream_codes/logs -v /opt/xtreamui/mysql:/var/lib/mysql --name $CONTAINER_NAME coporton/xtreamui:latest /usr/bin/supervisord

echo " " 
echo -e "${GNCOL} ┌─────────────────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │  The web interface is loading, it will  │ \e[0m"
echo -e "${GNCOL} │ take less than a minute. Please wait... │ \e[0m"
echo -e "${GNCOL} └─────────────────────────────────────────┘ \e[0m"
echo " "

# Remove the script file
rm "$0"
