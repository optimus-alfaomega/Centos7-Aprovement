#!/bin/bash
# repos en github


export USERNAME_TOMCAT="tomcat"
export DEFAULT_PASSWD_TOMCAT="Qdmin123456789"
export SERVER_VERSION="apache-tomcat-7.0.29"
export CATALINA_HOME="/usr/local/"${SERVER_VERSION}
export CATALINA_TMPDIR=${CATALINA_HOME}"/tmp"
export CLASSPATH=${CATALINA_HOME}"/bin/bootstrap.jar:"${CATALINA_HOME}"/bin/tomcat-juli.jar"
export CURRENT_DIR=`cd`
javaVersion="java-1.x.x-openjdk"
export JAVA_HOME="/usr/lib/jvm/"${javaVersion}
export JAVA_JRE="/usr/lib/jvm/"${javaVersion}
export DEFAULT_PORT="80"
export PORT=""
export OPTION_JAVA_DOWNLOAD="--no-cookies --no-check-certificate --header \"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie\""