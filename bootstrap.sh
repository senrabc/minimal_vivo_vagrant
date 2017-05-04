#bootstrap.sh

#purpose: install vivo into a minimal box, from scratch so script can be adpated into 
# scripted intall


# install instructions
# ref: https://wiki.duraspace.org/rest/scroll-pdf/1.0/sync-export?exportSchemeId=VIVO-7F0000010143B67C67562AA42EE4DE24&rootPageId=68070869

# install prerequisites

#TODO: script java 1.8x install

#TODO: script Tomcat 8x install

#TODO: script Apache Ant install

# Mysql Install

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password rootpass'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password rootpass'
sudo apt-get update
sudo apt-get -y install mysql-server-5.5

# get vivo

#version 1.7.1

# get version 1.7 from sourceforge. This goes into vagrant user home dir
wget https://sourceforge.net/projects/vivo/files/VIVO%20Application%20Source/vivo-rel-1.7.tar.gz/download -O vivo-rel-1.7.tar.gz

# unpack the tar.gz
tar -zxvf vivo-rel-1.7.tar.gz


# TODO: Change to setup instructions for VIVO
#if [ ! -f /var/log/databasesetup ];
#then
#    echo "CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'wordpresspass'" | mysql -uroot -prootpass
#    echo "CREATE DATABASE wordpress" | mysql -uroot -prootpass
#    echo "GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost'" | mysql -uroot -prootpass
#    echo "flush privileges" | mysql -uroot -prootpass
#
#    touch /var/log/databasesetup
#
# this can be used to load data 
#    if [ -f /vagrant/data/initial.sql ];
#    then
#        mysql -uroot -prootpass wordpress < /vagrant/data/initial.sql
#    fi
#fi

# TODO: config for VIVO
#if [ ! -h /var/www ]; 
#then 
#
#    rm -rf /var/www sudo 
#    ln -s /vagrant/public /var/www
#
#    a2enmod rewrite
#
#    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default
#
#    service apache2 restart
#fi
