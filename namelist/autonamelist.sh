#!/bin/sh
#############################################
#                                           #
#      Moficación de los namelists          #
#                                           #
#############################################

# Entrando al directorio del script automatico.

cd /home/arw/scripts/SAMRE3/namelist  #PROXIMO A DEFINIR OJOJOJOJOJOJOJOJ

# Toma la fecha de inicio de corrida.
echo 'Calculando la fecha de inicio de corrida...'
set +x
echo ">>>>>>>>>>>>>>>>>>   Get-Date"
echo "LA FECHA DE HOY ES: " `date`
YYYYstart_TODAY=`date -u +%Y`
MMstart_TODAY=`date -u +%m`
DDstart_TODAY=`date -u +%d`

YYYYstart=`date --date='15 days' -u +%Y` 
MMstart=`date --date='15 days' -u +%m`
DDstart=`date --date='15 days' -u +%d`
#echo ${YYYYstart} ${MMstart} ${DDstart}
echo 'La fecha de inicio es:' $YYYYstart,$MMstart,$DDstart

# Calcula la fecha de final de corrida.
YYYYend=`date --date='90 days' -u +%Y`
MMend=`date --date='90 days' -u +%m`
DDend=`date --date='90 days' -u +%d`
#echo ${YYYYend} ${MMend} ${DDend}
echo 'La fecha de final de la corrida es' $YYYYend,$MMend,$DDend

#Calcula la fecha + hora de inicio de corrida.
YYYYMMDDstart=`date --date='15 days' -u +%Y-%m-%d`
HHMMSS="_00:00:00"
#echo ${YYYYMMDDstart}${HHMMSS}
echo 'Lafecha + hora de inicio de corrida es:' ${YYYYMMDDstart}${HHMMSS}

#Calcula la fecha + hora de finalizacion de corrida.
YYYYMMDDend=`date --date='90 days' -u +%Y-%m-%d`
#echo ${YYYYMMDDend}${HHMMSS}
echo 'La fecha + hora de finalizacion de corrida es:' ${YYYYMMDDend}${HHMMSS}

#==================================================================================================
#Lee y sustituye el dia correcto de corrida y renombra por namelist.wps
cat namelist.wps.dailyCFS | sed s/start_date/start_date=${YYYYMMDDstart}${HHMMSS},/g > namelist.wps.today1
cat namelist.wps.today1 | sed s/end_date/end_date=${YYYYMMDDend}${HHMMSS},/g > namelist.wps.today

#==================================================================================================

#==================================================================================================

#Lee el namelist.input.master y sustituye las fechas con las actuales.
cat namelist.input.master | sed s/start_year/start_year=${YYYYstart},/g > namelist.input.today1
cat namelist.input.today1 | sed s/start_month/start_month=${MMstart},/g > namelist.input.today2
rm namelist.input.today1
cat namelist.input.today2 | sed s/start_day/start_day=${DDstart},/g > namelist.input.today3
cat namelist.input.today3 | sed s/end_year/end_year=${YYYYend},/g > namelist.input.today4
cat namelist.input.today4 | sed s/end_month/end_month=${MMend},/g > namelist.input.today5
cat namelist.input.today5 | sed s/end_day/end_day=${DDend},/g > namelist.input.today

#==================================================================================================

#Lee el namelist.ARWpost.master y sustituye con las fechas actuales.
cat namelist.ARWpost.master | sed s/start_date/start_date=${YYYYMMDDstart}${HHMMSS}/g > namelist.ARWpost.today1
cat namelist.ARWpost.today1 | sed s/wrfout_d01_2010-12-06_00:00:00/wrfout_d01_${YYYYMMDDstart}${HHMMSS}/g > namelist.ARWpost.today2
cat namelist.ARWpost.today2 | sed s/end_date/end_date=${YYYYMMDDend}${HHMMSS}/g > namelist.ARWpost.today

#Copia los archivos: "namelist.wps" "namelist.input" y "namelist.ARWpost" modificados.
#cp namelist.wps.today /home/arw/dominio/esa1/namelist.wps
#cp namelist.input.today /home/arw/dominio/esa1/namelist.input
#cp namelist.input.today /home/arw/arw/WRFV3/run/namelist.input
#cp namelist.ARWpost.today /home/arw/arw/ARWpost/namelist.ARWpost
