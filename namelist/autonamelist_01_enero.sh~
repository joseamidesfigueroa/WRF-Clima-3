#!/bin/sh
#############################################
#                                           #
#      Moficación de los namelists          #
#                                           #
#############################################

# Entrando al directorio del script automatico.

#cd /home/arw/scripts/SAMRE3/scripts_M1_Mes1/namelist/  #PROXIMO A DEFINIR OJOJOJOJOJOJOJOJ

# Toma la fecha de inicio de corrida.
echo 'Calculando la fecha de inicio de corrida...'
set +x
echo ">>>>>>>>>>>>>>>>>>   Get-Date"
echo "LA FECHA DE HOY ES: " `date`
YYYYstart_TODAY=`date -u +%Y`
MMstart_TODAY=`date -u +%m`
DDstart_TODAY=`date -u +%d`

YYYYstart=`date --date='20 days' -u +%Y` 
MMstart=`date --date='20 days' -u +%m`
DDstart=`date --date='20 days' -u +%d`
#echo ${YYYYstart} ${MMstart} ${DDstart}
echo 'La fecha de inicio es:' $YYYYstart,$MMstart,$DDstart

# Calcula la fecha de final de corrida.
YYYYend=`date --date='31 days' -u +%Y`
MMend=`date --date='31 days' -u +%m`
DDend=`date --date='31 days' -u +%d`
#echo ${YYYYend} ${MMend} ${DDend}
echo 'La fecha de final de la corrida es' $YYYYend,$MMend,$DDend

#Calcula la fecha + hora de inicio de corrida.
YYYYMMDDstart=`date --date='20 days' -u +%Y-%m-%d`
HHMMSS="_00:00:00"
#echo ${YYYYMMDDstart}${HHMMSS}
echo 'Lafecha + hora de inicio de corrida es:' ${YYYYMMDDstart}${HHMMSS}

#Calcula la fecha + hora de finalizacion de corrida.
YYYYMMDDend=`date --date='31 days' -u +%Y-%m-%d`
#echo ${YYYYMMDDend}${HHMMSS}
echo 'La fecha + hora de finalizacion de corrida es:' ${YYYYMMDDend}${HHMMSS}

#==================================================================================================
#Lee y sustituye el dia correcto de corrida y renombra por namelist.wps
cat namelist.wps_01_enero | sed "s/ start_date = 2016-01-01_00:00:00,/ start_date = '${YYYYstart}-01-01_00:00:00',/"g > namelist.wps.today1
cat namelist.wps.today1 | sed "s/end_date   = 2016-01-31_18:00:00,/ end_date   = '${YYYYstart}-01-31_18:00:00',/"g > namelist.wps.final

#==================================================================================================

#==================================================================================================

#Lee el namelist.input y sustituye las fechas con las actuales.
cat namelist.input_01_enero | sed "s/start_year               = 2016/start_year               = ${YYYYstart}/"g > namelist.input.today1
cat namelist.input.today1 | sed "s/end_year                 = 2016/end_year                 = ${YYYYstart}/"g > namelist.input.final


#==================================================================================================

#Lee el namelist.ARWpost.master y sustituye con las fechas actuales.
cat namelist.ARWpost_01_enero | sed "s/ start_date = 2016-01-01_00:00:00/ start_date = ${YYYYstart}-01-01_00:00:00/"g > namelist.ARWpost.today1
cat namelist.ARWpost.today1 | sed "s/ end_date   = 2016-01-31_18:00:00/ end_date   = ${YYYYstart}-01-31_18:00:00/"g > namelist.ARWpost.final

#Copia los archivos: "namelist.wps" "namelist.input" y "namelist.ARWpost" modificados.
#cp namelist.wps.today /home/arw/dominio/esa1/namelist.wps
#cp namelist.input.today /home/arw/dominio/esa1/namelist.input
#cp namelist.input.today /home/arw/arw/WRFV3/run/namelist.input
#cp namelist.ARWpost.today /home/arw/arw/ARWpost/namelist.ARWpost
