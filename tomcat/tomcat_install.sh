#!/bin/bash



user_tomcat=${USERNAME_TOMCAT}
group_tomcat=${USERNAME_TOMCAT}
passwd=${DEFAULT_PASSWD_TOMCAT}
version=${SERVER_VERSION}


`sudo groupadd ${group_tomcat}`
`sudo useradd -M -s /bin/nologin -g ${group_tomcat} -d /opt/tomcat ${user_tomcat}`          ##crear usuario con directorio home respectivo
`sudo yum install wget`
`cd ~`
`wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz`
`sudo mkdir /opt/tomcat`
`sudo tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1`
`cd /opt/tomcat`
`sudo chgrp -R tomcat /opt/tomcat`
`sudo chmod -R g+r conf`
`sudo chmod g+x conf`
`sudo chown -R tomcat webapps/ work/ temp/ logs/`
`sudo cat config_tomcat.txt >> /etc/systemd/system/tomcat.service`
`sudo systemctl daemon-reload`
`sudo systemctl start tomcat`
`sudo systemctl status tomcat`
`sudo systemctl enable tomcat`

#`sudo passwd --expire ${user_tomcat}`             ##actualizar contraseña
#`sudo usermod -aG wheel ${user_tomcat}`   ##añadir al usuario al grupo administrador 
#`yum -y install ${JAVA_VERSION}`          #instalar versión de java
