#!/bin/bash
echo " "
GNCOL='\e[40;38;5;82m' #GNCOL

echo " "
echo -e "${GNCOL} ┌─────────────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │   xtreamui docker is starting...    │ \e[0m"
echo -e "${GNCOL} └─────────────────────────────────────┘ \e[0m"
echo " "

CONTAINER_NAME="xtreamui"

docker start $CONTAINER_NAME