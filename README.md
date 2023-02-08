My point with this project was to compile nginx/php and mysql to run on a docker container so xtream-ui could work in it.

MY POINT WAS NOT TO GIVE YOU A FREE 100% FULL WORKING XTREAM-UI READY TO BE USED. I already stated that but ppl keep using "issues" to ask question unrelated to my project so issues are now gone!

Must know*

- I'm not your personal support.
- i'm not xtream-ui support.
- i'm not xtreamcodes support.
- i don't work for anyone.

If you don't have knowledge for docker don't use this project as simple as that.

As i've already told

- This version of xtream-ui has outdated files so you must replace them with yours without changing nginx binary files which i've compile or you'll have to simply compile them from begin.

# Xtreamui On Docker (22F)

```bash
curl -s https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/master/docker-compose.yml > xui.yml

docker-compose -f xui.yml up -d
```

Then visit admin panel on http://PUBLIC_IP:25500/ (user : `admin` password : `admin`)
