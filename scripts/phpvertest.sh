#!/bin/bash
a=`php -v |head -n1 |awk '{print $2}'|cut -f 1,2 -d .`;

sed -i '$ a\[ioncube\]\n;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.3.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.4.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.1.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.2.so;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.3.so' /etc/php.ini ;

ioncube_loader_line=$(echo $(grep $a'.so' /etc/php.ini) | sed 's/^.//');
sed -i "s|;$ioncube_loader_line|$ioncube_loader_line|g" /etc/php.ini
