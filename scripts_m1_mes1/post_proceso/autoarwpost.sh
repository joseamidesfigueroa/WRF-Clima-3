#!/bin/bash
#Entrando a directorios de modulo central
cd /home/arw/WRFV3/run/

#Copiando la salida del wrf hacia ARWpost
mv wrfout_d01* /home/arw/ARWpost/

echo '
Entrando al directorio "ARWpost"...
'
cd /home/arw/ARWpost/
mv wrfout_d01* salida.nc

echo '
Ejecutando el ARWpost
'
#Ejecutando ARWpost
./ARWpost.exe

mv salida.dat /home/arw/trabajo/grads/
mv salida.ctl /home/arw/trabajo/grads/
