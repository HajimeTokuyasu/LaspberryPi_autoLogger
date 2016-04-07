# LaspberryPi_autoLogger
Pi,ドングル,SSHでの運用


hoge$sudo apt-get install msmtp mutt

hoge$vim ~/.msmtprc

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


hoge$vim .muttrc
set sendmail="/usr/bin/msmtp

hoge$sudo chmod 600 .msmtprc


hoge$vim ip_autosender.sh

! /bin/sh
sleep 10s #調整してね
ifconfig > /home/pi/ip #どこでも
mutt -s IP_Automatic_Deriver_Service omaeno@gmail.com < /home/pi/ip

hoge$cp ip_autosender.sh /etc/profile.d/ip_autosender.sh
hoge$sudo chmod +x /etc/profile.d/ip_autosender.sh

hoge$sudo reboot
