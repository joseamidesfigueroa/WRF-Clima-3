#!/bin/bash

#*************************************************************************************************
#*************************************************************************************************
#*************** Script director para la corrida del modelo WRF para SAMRE3  *********************
#***************        Juan Jose Amides Figueroa Urbano 15/08/2016          *********************
#*************************************************************************************************
#*************************************************************************************************

tipo=m4_mes1
tipoD=M4_Mes1
# ------------------------------------- Limpieza de corridas anteriores sin datos del CFS
cd /home/arw/scripts/SAMRE3/scripts_$tipo/limpieza/
./limpieza.sh                       
# ------------------------------------- Finalizando la limpieza de datos

# ------------------------------------- Copia los namelist adecuados para esta simulacion
cd /home/arw/scripts/SAMRE3/namelist/
cp namelist.wps.mes1 /home/arw/dominios/$tipoD/namelist.wps
cp namelist.input.mes1 /home/arw/WRFV3/run/namelist.input
cp namelist.ARWpost.mes1 /home/arw/ARWpost/namelist.ARWpost

# -------------------------------- Comenzando el Pre-Proceso
cd /home/arw/scripts/SAMRE3/scripts_$tipo/wps/
./autogeogrid.sh
./autoungrib.sh
./autometgrid.sh
# -------------------------------- Finalizando el Pre-Proceso

# ------------------------------------- Comenzando el Proceso
# Comenzando el real
cd /home/arw/scripts/SAMRE3/scripts_$tipo/proceso/
./autoreal.sh
./autowrf.sh
# ------------------------------------ Finalizando el Proceso

# ------------------------------------- Comenzando el Post-Proceso
cd /home/arw/scripts/SAMRE3/scripts_$tipo/post_proceso/
./autoarwpost.sh
# ------------------------------------ Finalizando el Post-Proceso

# ------------------------------------- Comenzando el Post-Proceso GrADS
cd /home/arw/scripts/SAMRE3/scripts_$tipo/grads/
./run_grads_$tipo.sh
./run_grads_geotiff_$tipo.sh
./run_grads_shape_$tipo.sh
# ------------------------------------ Finalizando el Post-Proceso

# ------------------------------------- Comenzando la sincronizacion
cd /home/arw/scripts/SAMRE3/gestion/
./ssh2centroclima.sh
# ------------------------------------ Finalizando sincronizacion

