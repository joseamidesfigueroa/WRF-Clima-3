#!/bin/bash

#Extrae luego el año de la maquna.
#YY=2016
MM=(01 02 03 04 05 06 07 08 09 10 11 12)
DD=(01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
HH=(12 18 00 06)

#Extrae la fecha actual del sistema
YY=`date -u +%Y`
d=`date -u +%d --date='-2 day'`
m=`date -u +%-m`

#TOMA LA FECHA DEL MES VIGENTE
indicaMES_ORIGINAL=$((m-1))
#ES LA FECHA EN ESTE CASO DEL TERCER MES.
indicaMES=$((m))
indicaDIA=$((d-1))
indicaDIA2=30
constante=3

cd /home/arw/cfs/03/
rm *.grb2
#DE ACA HASTA ARRIBA DEBE IR EN TODOS LOS PROGRAMAS

echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================
echo *************************************************Comienzo MES 1************************************
echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================
#BLOQUE DEL MIEMBRO UNO
#ESTA FECHA ES CON EL MES A DESCARGAR, EN ESTE CASO EL 2
FECHA=$YY${MM[indicaMES]}${DD[indicaDIA]}
#ESTA FECHA ES en formato YYYYMMDD(BASE DE DATO)
FECHA2=$YY${MM[indicaMES_ORIGINAL]}${DD[indicaDIA]}${HH[0]}
#ESTA FECHA ES en formato YYYYMMDD DEL MES VIGENTE
FECHA3=$YY${MM[indicaMES_ORIGINAL]}${DD[indicaDIA]}
let "indicaMESFin=indicaMES_ORIGINAL+4"
FECHAFinal=$YY${MM[indicaMESFin]}${DD[indicaDIA]}


echo "La fecha de inicio de descarga es: " $FECHA2
echo "la fecha de final de descarga es: " $FECHAFinal

for t in `seq 29 30`
do
		for i in `seq 0 3`
		do
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/flxf$YY${MM[indicaMES_ORIGINAL]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/pgbf$YY${MM[indicaMES_ORIGINAL]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
#		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/ocnf$YY${MM[indicaMES_ORIGINAL]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		done
echo Paso un dia
done
echo Descargo los ultimos 3 días del mes vigente, ahora paso al Primer MES******************************************************************************



#Este bloque solo ocupa primer mes
#let "indicaMES=indicaMES+1"
for t in `seq 0 30`
do
		for i in `seq 0 3`
		do
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/flxf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/pgbf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
#		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/ocnf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2		
		done
echo Paso un dia
done
echo Paso al SEGUNDO mes*******************************************************************************

echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================
echo *************************************************Comienzo MES 2************************************
echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================


#Este bloque solo ocupa Segundo mes
let "indicaMES=indicaMES+1"
for t in `seq 0 30`
do
		for i in `seq 0 3`
		do
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/flxf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/pgbf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
#		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/ocnf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		done
echo Paso un dia
done
echo Paso al TERCER mes*******************************************************************************


echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================
echo *************************************************Comienzo MES 3************************************
echo ===================================================================================================
echo ===================================================================================================
echo ===================================================================================================


#Este bloque solo ocupa tercer mes
let "indicaMES=indicaMES+1"
for t in `seq 0 30`
do
		for i in `seq 0 3`
		do
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/flxf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/pgbf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
#		wget http://nomads.ncep.noaa.gov/pub/data/nccf/com/cfs/prod/cfs/cfs.$FECHA3/12/6hrly_grib_03/ocnf$YY${MM[indicaMES]}${DD[t]}${HH[i]}.03.$FECHA2.grb2
		done
echo Paso un dia
done
echo ""
echo ""
echo ""
echo Paso al Miembro 04*******************************************************************************
echo TERMINA LA DESCARGA DEL MIEMBRO 3
