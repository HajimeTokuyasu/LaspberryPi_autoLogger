# LaspberryPi_autoLogger
Pi,ドングル,SSHでの運用


1,
hoge$sudo apt-get install msmtp mutt

2,
hoge$vim ~/.msmtprc
-内容-
account default

host smtp.gmail.com
port 587
user omaeno
password PASSWORD

from hogehoge@gmail.com
tls on
tls_starttls on
tls_certcheck off
auth on
logfile ~/.msmtp.log
-以上-

hoge$vim .muttrc
-内容-
set sendmail="/usr/bin/msmtp
-以上-

hoge$sudo chmod 600 .msmtprc

3.スクリプト
hoge$vim ip_autosender.sh

-内容-
#! /bin/sh
sleep 10s #調整してね
ifconfig > /home/pi/ip #どこでも
mutt -s IP_Automatic_Deriver_Service omaeno@gmail.com < /home/pi/ip
-以上-

4.
hoge$cp ip_autosender.sh /etc/profile.d/ip_autosender.sh
hoge$sudo chmod +x /etc/profile.d/ip_autosender.sh

5.
hoge$sudo reboot
