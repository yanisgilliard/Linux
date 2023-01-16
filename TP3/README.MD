### TP 3 : We do a little scripting

## Sommaire

TP 3 : We do a little scripting

Sommaire

0. Un premier script
I. Script carte d'identité
Rendu
II. Script youtube-dl
Rendu
III. MAKE IT A SERVICE
Rendu
IV. Bonus

I. Script carte d'identité
Rendu

Fichier : idcard.sh

🌞 Vous fournirez dans le compte-rendu, en plus du fichier, un exemple d'exécution avec une sortie, dans des balises de code.

````
yanis@yanis-Linux:~/Documents/Github/tp-b1-linux/3/srv/idcard$ sudo ./idcard.sh 
Machine name : yanis-Linux
OS "Ubuntu 22.04.1 LTS" and kernel version is 5.15.0-53-generic
IP address is 10.33.18.254/22
RAM : 3,4Gi memory avialable on 15Gi total memory
Disk : 119G space left
Top 5 processes by RAM usage :
  - /usr/share/discord/Discord
  - /opt/brave.com/brave/brave
  - /usr/share/code/code
  - /usr/bin/plasmashell
  - /opt/brave.com/brave/brave
Listening ports :
  - udp 56539 : avahi-daemon
  - udp 53 : dnsmasq
  - udp 53 : systemd-resolve
  - udp 67 : dnsmasq
  - udp 631 : cups-browsed
  - tcp 53 : dnsmasq
  - tcp 53 : systemd-resolve
  - tcp 631 : cupsd
  - tcp 6463 : Discord
Here is your random cat : ./cat.jpg
````
II. Script youtube-dl
Rendu
Fichier : yt.sh

Log : download.log

🌞 Vous fournirez dans le compte-rendu, en plus du fichier, un exemple d'exécution avec une sortie, dans des balises de code.
````
yanis@yanis-Linux:~/Documents/Github/tp-b1-linux/3/srv/yt$ ./yt.sh https://youtu.be/tPEE9ZwTmy0
Video https://youtu.be/tPEE9ZwTmy0 was downloaded.
File path: downloads/Shortest Video on Youtube-tPEE9ZwTmy0/Shortest Video on Youtube-tPEE9ZwTmy0.mp4
````
III. MAKE IT A SERVICE
````
[Unit]
Description=<Votre description>

[Service]
ExecStart=<Votre script>
User=<User>

[Install]
WantedBy=multi-user.target
````
Rendu
Fichier : yt-v2.sh

Fichier service : yt.service

🌞 Vous fournirez dans le compte-rendu, en plus des fichiers :

````
● yt.service - Youtube Auto Downloader
     Loaded: loaded (/etc/systemd/system/yt.service; disabled; vendor preset: enabled)
     Active: active (running) since Tue 2022-11-29 16:02:28 CET; 12s ago
   Main PID: 23176 (bash)
      Tasks: 1 (limit: 18764)
     Memory: 412.0K
        CPU: 74ms
     CGroup: /system.slice/yt.service
             ├─23176 /bin/bash /home/yanis/Documents/Github/tp-b1-linux/3/srv/yt-2/yt-2.sh
             └─23269 sleep 1
````
````
Nov 29 16:02:28 yanis-Linux systemd[1]: Started Youtube Auto Downloader.
Nov 29 16:02:28 yanis-Linux bash[23176]: Video https://youtu.be/tPEE9ZwTmy0 was downloaded.
Nov 29 16:02:28 yanis-Linux bash[23176]: File path: downloads/Shortest Video on Youtube-tPEE9ZwTmy0/Shortest Video on Youtube-tPEE9ZwTmy0.mp4
Nov 29 16:02:28 yanis-Linux bash[23176]: Video https://youtu.be/9bZkp7q19f0 was downloaded.
Nov 29 16:02:28 yanis-Linux bash[23176]: File path: downloads/Shortest Video on Youtube-9bZkp7q19f0/Shortest Video on Youtube-9bZkp
````