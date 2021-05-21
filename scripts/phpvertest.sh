#!/bin/bash

PHP_INI='/etc/php.ini'
a=`php -v |head -n1 |awk '{print $2}'|cut -f 1,2 -d .`;
thead_safety=$(( php -i | grep 'Thread Safe' | grep -q enabled ) && echo '_ts';);

grep -q ioncube_loader_lin_ ${PHP_INI} || sed -i '$ a\[ioncube\]\n;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.3.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.3_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.4.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.4_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.1.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.1_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.2.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.2_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.3.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.3_ts.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.4.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.4_ts.so\n\;' ${PHP_INI} ;

ioncube_loader_line=$(echo $(grep $a$thead_safety'.so' ${PHP_INI}) | sed 's/^.//');
sed -i "s|;$ioncube_loader_line|$ioncube_loader_line|g" ${PHP_INI}
