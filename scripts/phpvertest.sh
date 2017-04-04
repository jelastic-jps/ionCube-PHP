#!/bin/bash
a=`php -v |head -n1 |awk '{print $2}'|cut -f 1,2 -d .`;
if [ "$a" == "5.3" ]; then sed -i '$ a\[ioncube\]\nzend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.3.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so' /etc/php.ini ;


else if [ "$a" == "5.4" ]; then sed -i '$ a\[ioncube\]\nzend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.4.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so' /etc/php.ini ;

else if [ "$a" == "5.5" ]; then sed -i '$ a\[ioncube\]\nzend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so' /etc/php.ini ;

    else if [ "$a" == "5.6" ]; then sed -i '$ a\[ioncube\]\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\nzend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so' /etc/php.ini;

        else if [ "$a" == "7.0" ]; then sed -i '$ a\[ioncube\]\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.5.so\n\;zend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_5.6.so\nzend_extension=/usr/lib64/php/modules/ioncube/ioncube_loader_lin_7.0.so' /etc/php.ini;
                fi;
            fi;
fi;
fi;
fi