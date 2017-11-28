#!/bin/sh

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#SCRIPT PARA GENERAR SALIDAS GRAFICAS
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tipo=m1_mes3

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Precipitacion acumulada)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run shapelluvia.gs
EOF

mv acum_general.shx /home/arw/salidas/$tipo/
mv acum_general.shp /home/arw/salidas/$tipo/
mv acum_general.prj /home/arw/salidas/$tipo/
mv acum_general.dbf /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
