#!/bin/sh

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#SCRIPT PARA GENERAR SALIDAS GRAFICAS
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (viento promedio)
tipo=m2_mes1

cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run vprom_250.gs
EOF

cd /home/arw/trabajo/grads_temp/250/
mv t.jpg /home/arw/salidas/$tipo/vprom_250_$tipo.jpg

cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run vprom_500.gs
EOF

cd /home/arw/trabajo/grads_temp/500/
mv t.jpg /home/arw/salidas/$tipo/vprom_500_$tipo.jpg

cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run vprom_850.gs
EOF

cd /home/arw/trabajo/grads_temp/850/
mv t.jpg /home/arw/salidas/$tipo/vprom_850_$tipo.jpg

cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run vprom_1000.gs
EOF

cd /home/arw/trabajo/grads_temp/1000/
mv t.jpg /home/arw/salidas/$tipo/vprom_1000_$tipo.jpg

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Precipitacion acumulada)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run lluviamensual.gs
EOF

cd /home/arw/trabajo/grads_temp/
mv *.jpg /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (TOA OUTGOING LONG WAVE (W m-2) )
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run olr_prom.gs
EOF

cd /home/arw/trabajo/grads_temp/
mv olr.jpg /home/arw/salidas/$tipo/olr_prom_$tipo.jpg
cd /home/arw/salidas/$tipo/
#composite -dissolve 100% -geometry +25+1200 /home/arw/trabajo/grads/samrelogo.png  olr_prom_$tipo.jpg  olr_prom_$tipo.jpg
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Ejecuta script para extraer lluvia para estaciones (El Salvador)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run precipitacion_por_estaciones_geonode.gs
EOF

paste -s -d , est* >lluvia
paste indice_estaciones lluvia>lluvia.txt
mv lluvia.txt /home/arw/salidas/$tipo/lluvia_El_Salvador_$tipo.txt
rm est*
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Ejecuta script para extraer lluvia para estaciones (Belice)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run precipitacion_por_estaciones_geonode_belice.gs
EOF

paste -s -d , est* >lluvia
paste indice_estaciones_belice lluvia>lluvia.txt
mv lluvia.txt /home/arw/salidas/$tipo/lluvia_Belice_$tipo.txt
rm est*
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Ejecuta script para extraer lluvia para estaciones (Panama)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run precipitacion_por_estaciones_geonode_Panama.gs
EOF

paste -s -d , est* >lluvia
paste indice_estaciones_Panama lluvia>lluvia.txt
mv lluvia.txt /home/arw/salidas/$tipo/lluvia_Panama_$tipo.txt
rm est*
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Ejecuta script para extraer lluvia para estaciones (Costa Rica)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run precipitacion_por_estaciones_geonode_imn_costa_rica.gs
EOF

paste -s -d , est* >lluvia
paste indice_estaciones_imn_costa_rica lluvia>lluvia.txt
mv lluvia.txt /home/arw/salidas/$tipo/lluvia_IMN_Costa_Rica_$tipo.txt
rm est*
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Ejecuta script para extraer lluvia para estaciones (Guatemala)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run precipitacion_por_estaciones_geonode_guatemala.gs
EOF

paste -s -d , est* >lluvia
paste indice_estaciones_guatemala lluvia>lluvia.txt
mv lluvia.txt /home/arw/salidas/$tipo/lluvia_Guatemala_$tipo.txt
rm est*
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Temperatura promedio mensual)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run tempmensual_tprom.gs
EOF

paste -s -d , estA* >tprom
paste indice_estaciones tprom>tprom.txt
mv tprom.txt /home/arw/salidas/$tipo/temp_prom_ESA_$tipo.txt
rm estA*

mv *.jpg /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Temperatura maxima absoluta)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run tempmensual_tmax.gs
EOF

paste -s -d , estA* >tmax
paste indice_estaciones tmax>tmax.txt
mv tmax.txt /home/arw/salidas/$tipo/temp_max_ESA_$tipo.txt
rm estA*

mv *.jpg /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#Ejecuta GrADS y deja productos en carpeta temporal (Temperatura minima absoluta)
cd /home/arw/trabajo/grads/
grads -blc <<EOF
open salida.ctl
run tempmensual_tmin.gs
EOF

paste -s -d , estA* >tmin
paste indice_estaciones tmin>tmin.txt
mv tmin.txt /home/arw/salidas/$tipo/temp_min_ESA_$tipo.txt
rm estA*

mv *.jpg /home/arw/salidas/$tipo/
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
