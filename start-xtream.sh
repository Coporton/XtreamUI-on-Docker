#!/bin/bash
echo " "
GNCOL='\e[40;38;5;82m' #GNCOL

CONTAINER_NAME="xtreamui"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo " "
    echo -e "${GNCOL} ┌─────────────────────────────────────┐ \e[0m"
    echo -e "${GNCOL} │    $CONTAINER_NAME is already running.     │ \e[0m"
    echo -e "${GNCOL} └─────────────────────────────────────┘ \e[0m"
    echo " "
else
    echo " "
    echo -e "${GNCOL} ┌─────────────────────────────────────┐ \e[0m"
    echo -e "${GNCOL} │   $CONTAINER_NAME docker is starting...    │ \e[0m"
    echo -e "${GNCOL} └─────────────────────────────────────┘ \e[0m"
    echo " "
    docker start $CONTAINER_NAME
fi