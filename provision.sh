#!/bin/bash


cp /vagrant/yum.repos.d/* /etc/yum.repos.d/
yum install nagios-plugins-all -y

# -h dereferences symLinks
tar czfh /vagrant/nagios_plugins_el6_32bit`date +%Y%m%d%H%M%S`.tar.gz /usr/lib/nagios/plugins
