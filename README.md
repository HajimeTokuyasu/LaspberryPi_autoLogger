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

ここまででメールが出るようになる

hoge$vim ip_autosender.sh

シェルスクリプトを実行できるようにしよう

hoge$cp ip_autosender.sh /etc/profile.d/ip_autosender.sh
hoge$sudo chmod +x /etc/profile.d/ip_autosender.sh

hoge$sudo reboot
