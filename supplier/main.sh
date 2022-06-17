#!/bin/bash

############# Registro de directorios estandar ###################
source ./variables_directories.sh
##################################################################
############# Creación de directorios estandar ###################
source ./directories.sh
##################################################################


tipo=kafka


if [[ $tipo = kafka ]];
then
         source ./kafka_vars.sh     ####  Cargue de variables kafka ######
         source ./kafka_install.sh  #### instale kafka
         `rm -f /tmp/*`             ####  limpie temporales
                  
#elif [[ $tipo = python ]];
#then
 # echo generar directorios para python 
#elif [[ $tipo = java ]];
#then
 #  echo ingresa
#elif [[ $tipo = c ]];
#then
 #  echo ingresa
#elif [[ $tipo = c++ ]];
#then
 #  echo ingresa
#elif [[ $tipo = docker ]];
#then
 #  echo ingresa
#elif [[ $tipo = nodejs ]];
#then
#   echo ingresa
#elif [[ $tipo = php ]];
#then
#   echo ingresa
#elif [[ $tipo = ruby ]];
#then
#   echo ingresa
#else
#   echo repo no ingresado o no existente
fi


#num1=$1  # la variable toma el primer valor que le pasamos al script
#num2=$2  # la variable toma el segundo valor que le pasamos al script
#if [[ $num1 -gt $num2 ]];
#then
#  echo $num1 es mayor que $num2
#else
 # echo $num2 es mayor que $num1
#fi