#!/bin/bash
# creación estandar de directorios


download=${REPO_DOWNLOAD_POSTGRES}
version_download=${VERSION_POSTGRES}


`sudo useradd ${SO_USERNAME_POSTGRES} -m`          ##crear usuario con directorio home respectivo
`sudo passwd --expire ${SO_USERNAME_POSTGRES}`             ##actualizar contraseña
`sudo usermod -aG wheel ${SO_USERNAME_POSTGRES}`   ##añadir al usuario al grupo administrador 
`su -l ${SO_USERNAME_POSTGRES}`                    #iniciar sesión con usuario kafka
`sudo yum -y install ${download}`
`sudo yum update -y`
`sudo /usr/pgsql-14/bin/postgresql-14-setup initdb`
`sudo systemctl enable postgresql-14`
`sudo systemctl start postgresql-14`
`systemctl status postgresql-14`
`exit`
