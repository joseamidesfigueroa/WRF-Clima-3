#!/bin/bash

#*************************************************************************************************
#*************************************************************************************************
#*************** Script director para la corrida del modelo WRF para SAMRE3  *********************
#***************        Juan Jose Amides Figueroa Urbano 29/07/2016          *********************
#*************************************************************************************************
#*************************************************************************************************

# ---------------------------------- Cambiando los namelists para todas las simulaciones
cd /home/arw/scripts/SAMRE3/namelist/
./gestion_namelits.sh
# -------------------------------- Finalizando el cambio de los namelists.

# ------------------------------------- Descarga de datos CFS
cd /home/arw/scripts/SAMRE3/descarga_00/
./descarga.sh

# ------------------------------------- Grafica condiciones iniciales del CFS
cd /home/arw/scripts/SAMRE3/
./plot_cfs.sh

# ------------------------------------- Sincroniza
cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh

#*******************************************************************************************
#*******************************************************************************************

# ------------------------------------- Ejecuta la simulacion para el Miembro 1, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m1_mes1/
./maestro_m1_mes1.sh

cp /home/arw/WRFV3/run/rsl.out.0000 /home/arw/salidas/m1_mes1/log_m1_mes1.txt

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m1_mes1/

cd /home/arw/trabajo/grads/
mv salida.ctl /home/arw/salidas_raw/m1_mes1/
mv salida.dat /home/arw/salidas_raw/m1_mes1/

cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
#-------------------------------------- Fin de la simulacion.



#*******************************************************************************************
#*******************************************************************************************


#*******************************************************************************************
#*******************************************************************************************

# ------------------------------------- Ejecuta la simulacion para el Miembro 2, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m2_mes1/
./maestro_m2_mes1.sh

cp /home/arw/WRFV3/run/rsl.out.0000 /home/arw/salidas/m2_mes1/log_m2_mes1.txt

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m2_mes1/salida.nc

cd /home/arw/trabajo/grads/
mv salida.ctl /home/arw/salidas_raw/m2_mes1/
mv salida.dat /home/arw/salidas_raw/m2_mes1/

cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
#-------------------------------------- Fin de la simulacion.

# ------------------------------------- Ejecuta la simulacion para el Miembro 3, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m3_mes1/
./maestro_m3_mes1.sh

cp /home/arw/WRFV3/run/rsl.out.0000 /home/arw/salidas/m3_mes1/log_m3_mes1.txt

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m3_mes1/salida.nc

cd /home/arw/trabajo/grads/
mv salida.ctl /home/arw/salidas_raw/m3_mes1/
mv salida.dat /home/arw/salidas_raw/m3_mes1/

cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
#-------------------------------------- Fin de la simulacion.

# ------------------------------------- Ejecuta la simulacion para el Miembro 4, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m4_mes1/
./maestro_m4_mes1.sh

cp /home/arw/WRFV3/run/rsl.out.0000 /home/arw/salidas/m4_mes1/log_m4_mes1.txt

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m4_mes1/salida.nc

cd /home/arw/trabajo/grads/
mv salida.ctl /home/arw/salidas_raw/m4_mes1/
mv salida.dat /home/arw/salidas_raw/m4_mes1/

cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
#-------------------------------------- Fin de la simulacion.

#****************************************************************************
#****************************************************************************

# ------------------------------------- Ejecuta la simulacion para el Miembro 1, mes 2
cd /home/arw/scripts/SAMRE3/scripts_m1_mes2/
./maestro_m1_mes2.sh

cp /home/arw/WRFV3/run/rsl.out.0000 /home/arw/salidas/m1_mes2/log_m1_mes2.txt

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m1_mes2/salida.nc

cd /home/arw/trabajo/grads/
mv salida.ctl /home/arw/salidas_raw/m1_mes2/
mv salida.dat /home/arw/salidas_raw/m1_mes2/

cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
#-------------------------------------- Fin de la simulacion.

# ------------------------------------- Ejecuta la simulacion para el Miembro 1, mes 2
cd /home/arw/scripts/SAMRE3/scripts_m1_mes3/
./maestro_m1_mes3.sh

cp /home/arw/WRFV3/run/rsl.out.0000 /home/arw/salidas/m1_mes3/log_m1_mes3.txt

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m1_mes3/salida.nc

cd /home/arw/trabajo/grads/
mv salida.ctl /home/arw/salidas_raw/m1_mes3/
mv salida.dat /home/arw/salidas_raw/m1_mes3/

cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
#-------------------------------------- Fin de la simulacion.


#*******************************************************************************************
#*******************************************************************************************
