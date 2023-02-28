​This project is based on the latest Xtream-UI (R22F) & Ubuntu 18.04 (Bionic) to run on a docker container so Xtream-UI could work in it.

I TRIED TO GIVE YOU A FREE 99% FULL WORKING XTREAM-UI READY TO BE USED. FEEL FREE TO CONTACT ME FOR UPDATES.

​Must know*

- I'm a ​freelancer for your support.
- I'm not ​X​tream-​UI support.
- I'm not ​X​treamcodes support.
- I ​only do work for my client.

If you don't know about docker don't use this project as simple as that. If you need my help to set up your system please do contact me. 


# Xtreamui On Docker (22F)

*** YOU MUST HAVE ALREADY INSTALLED DOCKER ON YOUR SYSTEM. ***
Please follow the instructions https://docs.docker.com/engine/install/ to install docker first. Then move forward & setup this project.

```bash
wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/main-installer.sh && wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/start-xtream.sh && wget https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/main/stop-xtream.sh

```
```bash
chmod +x *.sh
```
Then run `main-installer.sh` to install your database
```bash 
./main-installer.sh 
```
For the first time, it will take less than a minute to start automatically. If not then `./start-xtream.sh` to start Xtream-UI & `./stop-xtream.sh` to stop Xtream-UI 

Then visit the admin panel on http://PUBLIC_IP:25500/ (user: `admin` password: `admin`)
