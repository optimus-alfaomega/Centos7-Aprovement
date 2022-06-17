#!/bin/bash
# repos en github


forma=${1}

if [[ $forma = "1" ]];
then

`touch /etc/yum.repos.d/wandisco-git.repo`
`cat config_git.txt >> /etc/yum.repos.d/wandisco-git.repo`
`rpm --import http://opensource.wandisco.com/RPM-GPG-KEY-WANdisco`
`sudo yum install git`
`git --version`


else

`yum groupinstall "Development Tools"`
`yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel`
`yum install https://centos7.iuscommunity.org/ius-release.rpm`
`yum install git2u-all`

fi
