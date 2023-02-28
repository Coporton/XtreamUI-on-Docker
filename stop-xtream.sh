#!/bin/bash
echo " "
GNCOL='\e[40;38;5;82m' #GNCOL

CONTAINER_NAME="xtreamui"

docker stop $CONTAINER_NAME

echo " "
echo -e "${GNCOL} ┌─────────────────────────────────────┐ \e[0m"
echo -e "${GNCOL} │     xtreamui docker is stoped...    │ \e[0m"
echo -e "${GNCOL} └─────────────────────────────────────┘ \e[0m"
echo " "

exit 0