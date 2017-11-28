#!/bin/bash

#*************************************************************************************************
#*************************************************************************************************
#*************** Script director para la corrida del modelo WRF para SAMRE3  *********************
#***************        Juan Jose Amides Figueroa Urbano 29/07/2016          *********************
#*************************************************************************************************
#*************************************************************************************************

# ------------------------------------- Descarga de datos CFS
cd /home/arw/scripts/SAMRE3/descarga/
./descarga_1mes.sh

# ---------------------------------- Cambiando los namelists para todas las simulaciones
cd /home/arw/scripts/SAMRE3/namelist/
./gestion_namelits.sh              
# -------------------------------- Finalizando el cambio de los namelists.

#*******************************************************************************************
#*******************************************************************************************

# ------------------------------------- Ejecuta la simulacion para el Miembro 1, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m1_mes1/
./maestro_m1_mes1.sh				#Falta hacer las salidas graficas...

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m1_mes1/salida.nc
#-------------------------------------- Fin de la simulacion.


# ------------------------------------- Ejecuta la simulacion para el Miembro 1, mes 1
#cd /home/arw/scripts/SAMRE3/scripts_m1_mes2/
#./maestro_m1_mes2.sh				#Falta hacer las salidas graficas...

#cd /home/arw/ARWpost/
#mv salida.nc /home/arw/salidas_raw/m1_mes2/salida.nc
#-------------------------------------- Fin de la simulacion.

# ------------------------------------- Ejecuta la simulacion para el Miembro 1, mes 1
#cd /home/arw/scripts/SAMRE3/scripts_m1_mes3/
#./maestro_m1_mes3.sh				#Falta hacer las salidas graficas...

#cd /home/arw/ARWpost/
#mv salida.nc /home/arw/salidas_raw/m1_mes3/salida.nc
#-------------------------------------- Fin de la simulacion.

#*******************************************************************************************
#*******************************************************************************************


#*******************************************************************************************
#*******************************************************************************************

# ------------------------------------- Ejecuta la simulacion para el Miembro 2, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m2_mes1/
./maestro_m2_mes1.sh				#Falta hacer las salidas graficas...

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m2_mes1/salida.nc
#-------------------------------------- Fin de la simulacion.

# ------------------------------------- Ejecuta la simulacion para el Miembro 2, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m3_mes1/
./maestro_m3_mes1.sh				#Falta hacer las salidas graficas...

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m3_mes1/salida.nc
#-------------------------------------- Fin de la simulacion.

# ------------------------------------- Ejecuta la simulacion para el Miembro 2, mes 1
cd /home/arw/scripts/SAMRE3/scripts_m4_mes1/
./maestro_m4_mes1.sh			#Falta hacer las salidas graficas...

cd /home/arw/ARWpost/
mv salida.nc /home/arw/salidas_raw/m4_mes1/salida.nc
#-------------------------------------- Fin de la simulacion.
#*******************************************************************************************
#*******************************************************************************************
