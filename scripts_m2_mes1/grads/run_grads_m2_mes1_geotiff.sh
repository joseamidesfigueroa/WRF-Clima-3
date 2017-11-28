#!/bin/sh

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#SCRIPT PARA GENERAR SALIDAS GRAFICAS
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tipo=m2_mes1

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Precipitacion acumulada)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run geotifflluvia.gs
EOF

mv *.tif /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Temperatura promedio mensual)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run tempmensual_tprom_geotiff.gs
EOF

mv *.tif /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Temperatura maxima absoluta)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run tempmensual_tmax_geotiff.gs
EOF

mv *.tif /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Temperatura minima absoluta)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run tempmensual_tmin_geotiff.gs
EOF

mv *.tif /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
