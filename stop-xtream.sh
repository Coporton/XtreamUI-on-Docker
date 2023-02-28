#!/bin/bash
echo " "
GNCOL='\e[40;38;5;82m' #GNCOL

CONTAINER_NAME="xtreamui"

if [ "$(docker ps -q -f name=$CONTAINER_NAME -f status=exited)" ]; then
    echo " "
    echo -e "${GNCOL} ┌─────────────────────────────────────┐ \e[0m"
    echo -e "${GNCOL} │    $CONTAINER_NAME is already stopped.     │ \e[0m"
    echo -e "${GNCOL} └─────────────────────────────────────┘ \e[0m"
    echo " "
else
    echo " "
    echo -e "${GNCOL} ┌─────────────────────────────────────┐ \e[0m"
    echo -e "${GNCOL} │        $CONTAINER_NAME is stopped.         │ \e[0m"
    echo -e "${GNCOL} └─────────────────────────────────────┘ \e[0m"
    echo " "
    docker stop $CONTAINER_NAME
fi
exit 0