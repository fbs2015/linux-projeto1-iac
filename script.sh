#!/bin/bash

mkdir /home/publico /home/adm /home/ven /home/sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp -R GRP_ADM /home/adm
chgrp -R GRP_VEN /home/ven
chgrp -R GRP_SEC /home/sec

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd senha123)
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd senha123)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha123)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd senha123)

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /homs/ven
chmod 770 /home/sec


