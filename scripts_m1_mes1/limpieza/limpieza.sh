#!/bin/sh
#Script para Limpieza de archivos despues de la corrida de WRF

cd /home/arw/dominios/M1/
rm met_em*
rm FILE*
rm PFILE*
cd /home/arw/dominios/M1_Mes1/
rm met_em*
rm FILE*
rm PFILE*
cd /home/arw/WRFV3/run/
rm met_em*
rm wrfout*
rm wrfrst*
cd /home/arw/ARWpost/
rm wrfout*
rm salida*

