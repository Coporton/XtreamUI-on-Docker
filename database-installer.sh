#!/bin/bash

# Check if wget is installed, if not install it
if ! command -v wget &> /dev/null
then
    echo "wget not found, installing..."
    sudo apt-get update
    sudo apt-get install wget
fi

# Check if unzip is installed, if not install it
if ! command -v unzip &> /dev/null
then
    echo "unzip not found, installing..."
    sudo apt-get update
    sudo apt-get install unzip
fi

# URL of the zip file to download
SQL_URL="https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/mysql-database.zip"

# Target directory to extract the zip file to
TARGET_DIR="/opt/xtreamcodes/iptv_xtream_codes"
SQL_DIR="/opt/xtreamcodes/iptv_xtream_codes/mysql"

# Create the target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    echo "Creating target directory $TARGET_DIR..."
    sudo mkdir -p "$TARGET_DIR"
fi

# Check if target directory exists
if [ -d "$SQL_DIR" ]; then
    read -p "The target directory $SQL_DIR already exists. Do you want to replace it? [y/N] " choice
    case "$choice" in
        y|Y ) echo "Replacing $SQL_DIR..."; rm -rf "$SQL_DIR";;
        * ) echo "Aborting operation..."; exit 1;;
    esac
fi

# Download the zip file using wget
wget "$SQL_URL" -O /tmp/mysql-database.zip

# Extract the zip file to /opt/
unzip /tmp/mysql-database.zip -d "$TARGET_DIR"

# Set file and folder permissions to 108:112 recursively
chown -R 102:103 "$TARGET_DIR/mysql"

# Remove the script file
rm "$0"