# Xtreamui On Docker (22F)

This project is a Docker container that runs the latest version of Xtream-UI (R22F) on Ubuntu 18.04 (Bionic). It provides a 99% full working installation of Xtream-UI and is ready to be used.

**Note:** If you are not familiar with Docker, we recommend that you do not use this project. If you need assistance setting up your system, please contact us.

## Important Information
Please note the following:

- We are not affiliated with Xtream-UI or Xtreamcodes support.
- We are freelance developers and only provide services to our clients.

I TRIED TO GIVE YOU A FREE 99% FULL WORKING XTREAM-UI READY TO BE USED. FEEL FREE TO CONTACT ME FOR ANY UPDATES.

## Installation Instructions
Before you can use this project, you must install Docker on your system. If you have not already done so, please follow the instructions at https://docs.docker.com/engine/install/ to install Docker.

```bash
wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/main-installer.sh
```
```bash
chmod +x *.sh
```
Run `main-installer.sh` to install your database:
```bash
./main-installer.sh
```
The first time you run the installer, it will take less than a minute to start automatically. If it does not start automatically, you can use `./start-xtream.sh` to start Xtream-UI and `./stop-xtream.sh` to stop it.


Visit the admin panel at http://PUBLIC_IP:25500/ (user: `admin` password: `admin`)
