#!/bin/bash
#AQUI SE PRODUCE LA MAGIA DEL SISTEMA!!!

year=`date -u +%Y`
#let year=2015
let yearp=$year+1
month=`date -u +%-m`
#let month=7
day=`date -u +%d`
#let day=01
tipo_simu=M1_Mes1

echo "El anio actual es: "$year
echo "El siguiente anio es: "$yearp
echo "El mes es: "$month
echo "El dia de hoy es: "$day
echo "La simulacion es: "$tipo_simu



# Verifica que si el bisiesto ---------------------------------->

if [  $[ $year % 4 ] -eq 0 ] ; then
  if [ $[$year % 100 ] -ne 0 -o $[ $year % 400 ] -eq 0 ] ; then
  echo "Año Bisiesto"
#<----- A continuacion todas los meses para anios anormales ---->

#<------------------------------------------------- ENERO

#echo $(expr $a - $b )
     if [ $[ $month ] -eq 12 ] ; then
		echo "Uso namelist para el mes enero"
		echo "Uso /home/arw/scripts/SAMRE3/scripts_"$tipo_simu"/namelist/autonamelist_01_enero.sh"   
		./autonamelist_01_enero.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_02_febrero_bisiesto.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_03_marzo.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- FEBRERO
     
     if [ $[ $month ] -eq 01 ] ; then
		echo "Uso namelist para el mes febrero"
		echo "Uso /home/arw/scripts/SAMRE3/scripts_"$tipo_simu"/namelist/autonamelist_02_febrero_bisiesto.sh"
		./autonamelist_02_febrero_bisiesto.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_03_marzo.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_04_abril.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3

     fi 

#<------------------------------------------------- MARZO

     if [ $[ $month ] -eq 02 ] ; then
		echo "Uso namelist para el mes marzo"
		./autonamelist_03_marzo.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_04_abril.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_05_mayo.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- ABRIL

     if [ $[ $month ] -eq 03 ] ; then
		echo "Uso namelist para el mes abril"
		./autonamelist_04_abril.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_05_mayo.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_06_junio.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- MAYO

     if [ $[ $month ] -eq 04 ] ; then
		echo "Uso namelist para el mes mayo"
		./autonamelist_05_mayo.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_06_junio.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_07_julio.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- JUNIO

     if [ $[ $month ] -eq 05 ] ; then
		echo "Uso namelist para el mes junio"
		./autonamelist_06_junio.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_07_julio.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_08_agosto.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- JULIO

     if [ $[ $month ] -eq 06 ] ; then
		echo "Uso namelist para el mes julio"
		./autonamelist_07_julio.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_08_agosto.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_09_septiembre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- AGOSTO

     if [ $[ $month ] -eq 07 ] ; then
		echo "Uso namelist para el mes agosto"
		./autonamelist_08_agosto.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_09_septiembre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_10_octubre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- SEPTIEMBRE

     if [ $[ $month ] -eq 08 ] ; then
		echo "Uso namelist para el mes septiembre"
		./autonamelist_09_septiembre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_10_octubre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_11_noviembre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- OCTUBRE

     if [ $[ $month ] -eq 09 ] ; then
		echo "Uso namelist para el mes octubre"

		./autonamelist_10_octubre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_11_noviembre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_12_diciembre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- NOVIEMBRE

     if [ $[ $month ] -eq 10 ] ; then
		echo "Uso namelist para el mes noviembre"

		./autonamelist_11_noviembre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_12_diciembre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_01_enero_netxY.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- DICIEMBRE

     if [ $[ $month ] -eq 11 ] ; then
		echo "Uso namelist para el mes diciembre"
		./autonamelist_12_diciembre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_01_enero_nextY.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_02_febrero_nextY.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

  fi

#<-----------------------------------------------------

else echo "Año No Bisiesto"
#<----- A continuacion todas los meses normales ---->

#<------------------------------------------------- ENERO
     if [ $[ $month ] -eq 12 ] ; then
		echo "Uso namelist para el mes enero" 
		./autonamelist_01_enero.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_02_febrero_bisiesto.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_03_marzo.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 
#<------------------------------------------------- FEBRERO
     if [ $[ $month ] -eq 01 ] ; then
		echo "Uso namelist para el mes febrero"
		echo "Uso /home/arw/scripts/SAMRE3/scripts_"$tipo_simu"/namelist/autonamelist_02_febrero_bisiesto.sh"
		./autonamelist_02_febrero.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_03_marzo.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_04_abril.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3	
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- MARZO

     if [ $[ $month ] -eq 02 ] ; then
		echo "Uso namelist para el mes marzo"
                ./autonamelist_03_marzo.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_04_abril.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_05_mayo.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- ABRIL

     if [ $[ $month ] -eq 03 ] ; then
		echo "Uso namelist para el mes abril"
		./autonamelist_04_abril.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_05_mayo.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_06_junio.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 
#<------------------------------------------------- MAYO

     if [ $[ $month ] -eq 04 ] ; then
		echo "Uso namelist para el mes mayo"
		./autonamelist_05_mayo.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_06_junio.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_07_julio.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 
#<------------------------------------------------- JUNIO

     if [ $[ $month ] -eq 05 ] ; then
		echo "Uso namelist para el mes junio"
		./autonamelist_06_junio.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_07_julio.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_08_agosto.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- JULIO

     if [ $[ $month ] -eq 06 ] ; then
		echo "Uso namelist para el mes julio"
		./autonamelist_07_julio.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_08_agosto.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_09_septiembre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- AGOSTO

     if [ $[ $month ] -eq 07 ] ; then
		echo "Uso namelist para el mes agosto"

		./autonamelist_08_agosto.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_09_septiembre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_10_octubre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- SEPTIEMBRE

     if [ $[ $month ] -eq 08 ] ; then
		echo "Uso namelist para el mes septiembre"
		./autonamelist_09_septiembre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_10_octubre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_11_noviembre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- OCTUBRE

     if [ $[ $month ] -eq 09 ] ; then
		echo "Uso namelist para el mes octubre"
		./autonamelist_10_octubre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_11_noviembre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_12_diciembre.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- NOVIEMBRE

     if [ $[ $month ] -eq 10 ] ; then
		echo "Uso namelist para el mes noviembre"
		./autonamelist_11_noviembre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		./autonamelist_12_diciembre.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		./autonamelist_01_enero_nextY.sh
                cp namelist.wps.final namelist.wps.mes3
		cp namelist.input.final namelist.input.mes3
		cp namelist.ARWpost.final namelist.ARWpost.mes3
     fi 

#<------------------------------------------------- DICIEMBRE

     if [ $[ $month ] -eq 11 ] ; then
		echo "Uso namelist para el mes diciembre"
		./autonamelist_12_diciembre.sh
                cp namelist.wps.final namelist.wps.mes1
		cp namelist.input.final namelist.input.mes1
		cp namelist.ARWpost.final namelist.ARWpost.mes1

		echo "Uso namelist para el mes enero del siguiente"
		./autonamelist_01_enero_netxY.sh
                cp namelist.wps.final namelist.wps.mes2
		cp namelist.input.final namelist.input.mes2
		cp namelist.ARWpost.final namelist.ARWpost.mes2

		if [ $[ $yearp % 4 ] -eq 0 ] ; then
		  if [ $[ $yearp % 100 ] -ne 0 -o $[ $yearp % 400 ] -eq 0 ] ; then
		  
			echo "Uso namelist para el mes febrero bisiesto del siguiente"			
			./autonamelist_02_febrero_bisiesto_nextY.sh
		        cp namelist.wps.final namelist.wps.mes3
			cp namelist.input.final namelist.input.mes3
			cp namelist.ARWpost.final namelist.ARWpost.mes3

		   else 
			echo "Uso namelist para el mes febrero normal del siguiente"			
			./autonamelist_02_febrero_nextY.sh
		        cp namelist.wps.final namelist.wps.mes3
			cp namelist.input.final namelist.input.mes3
			cp namelist.ARWpost.final namelist.ARWpost.mes3
		   fi
 		fi
     fi 

fi

#----------------------------------------------------------------------
