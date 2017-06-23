#!/bin/bash - 
#===============================================================================
#
#          FILE: patch.sh
# 
#         USAGE: ./patch.sh 
# 
#   DESCRIPTION: customizing the local repo
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Yanwei Yao (yyanwei@cn.ibm.com)
#  ORGANIZATION: 
#       CREATED: 05/02/2017 22:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
cp -f install_on_debian.yml /etc/ansible/roles/ceph.ceph-common/tasks/installs/install_on_debian.yml
cp -f ceph_all.yml /etc/ansible/roles/ceph_client/tasks/ceph_all.yml
#cp -f galera_client_install_apt.yml /etc/ansible/roles/galera_client/tasks/galera_client_install_apt.yml
cp -f galera_install_apt.yml /etc/ansible/roles/galera_server/tasks/galera_install_apt.yml
cp -f pre_install_apt.yml /etc/ansible/roles/pip_install/tasks/pre_install_apt.yml
