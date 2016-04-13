# LaspberryPi_autoLogger
Pi,ドングル,SSHでの運用


hoge$sudo apt-get install msmtp mutt

hoge$vim ~/.msmtprc




hoge$vim .muttrc


hoge$sudo chmod 600 .msmtprc

ここまででメールが出るようになる

hoge$vim ip_autosender.sh

シェルスクリプトを実行できるようにしよう

hoge$cp ip_autosender.sh /etc/profile.d/ip_autosender.sh

hoge$sudo chmod +x /etc/profile.d/ip_autosender.sh

hoge$sudo reboot
