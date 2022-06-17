#!/bin/bash
# repos en github


tipo_instalacion=${1}


if [[ $forma = "server" ]];
then


`sudo yum update`
`sudo yum -y install vsftpd`
`sudo  systemctl enable vsftpd`
`sudo systemctl start vsftpd`
`sudo systemctl status vsftpd`

else

`sudo yum -y install ftp`

fi

`sudo firewall-cmd --permanent --zone=public --add-service=ftp`
`sudo firewall-cmd --reload`

