#!/bin/bash
# instalación de kafka



`sudo useradd ${SO_USERNAME} -m`          ##crear usuario con directorio home respectivo
`sudo passwd --expire ${SO_USERNAME}`             ##actualizar contraseña
`sudo usermod -aG wheel ${SO_USERNAME}`   ##añadir al usuario al grupo administrador 
`yum -y install ${JAVA_VERSION}`          #instalar versión de java
`su -l ${SO_USERNAME}`                    #iniciar sesión con usuario kafka
`wget ${KAFKA_REPO_DOWNLOAD}`  
`tar -xzf ${KAFKA_VERSION}."tgz"` 
`ln -s ${KAFKA_VERSION} ${SO_USERNAME}`
`echo "export PATH=$PATH:/home/${SO_USERNAME}/${KAFKA_VERSION}/bin" >> ~/.bash_profile`
`source ~/.bash_profile`

`exit`