#!/bin/sh



sudo apt update

sudo apt upgrade

sudo apt-get install virtualbox

sudo apt install virtualbox-ext-pack -y

useradd -m vbox -G vboxusers



apt-get -y install apache2 libapache2-mod-php7.0 libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libapr1 php7.0-common php7.0-mysql php7.0-soap php-pear wget zip

systemctl restart apache2.service


pushd /var/www/html

wget https://github.com/phpvirtualbox/phpvirtualbox/archive/master.zip

unzip master.zip

mv phpvirtualbox-master phpvirtualbox

chown -R vbox:vboxusers

pushd phpvirtualbox

pushd /etc/init.d/
services=(vboxautostart-service vboxweb-service vboxballoonctrl-service)
base_url="https://www.virtualbox.org/svn/vbox/trunk/src/VBox/Installer/linux"
for service in "${services[@]}"
    do
      wget "${base_url}/${service}".sh -O "${service}" \
      && chmod +x "$service"  \
      && update-rc.d "$service" defaults 90 10
    done

popd



echo "/etc/default/virtualbox" >> VBOXWEB_USER=vbox

systemctl enable vboxweb-service

systemctl start vboxweb-service


systemctl enable vboxweb-service

systemctl start vboxweb-service

cp config.php-example config.php

usermod -aG sudo vbox


echo "Now change the password for vbox and set it in /var/www/html/phpvirtualbox/config.php"
