! /bin/sh
sleep 10s #調整してね
ifconfig > /home/pi/ip #どこでも
mutt -s IP_Automatic_Deriver_Service omaeno@gmail.com < /home/pi/ip
