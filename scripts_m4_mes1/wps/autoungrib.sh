#!/bin/bash
# Entrada al directorio de corrida de pre procesamiento
cd /home/arw/dominios/M4_Mes1/
# Ejecucion de ungrib
#----------------------correr el link de los archivos-------------------------------------
ln -f /home/arw/WPS/ungrib/Variable_Tables/Vtable.CFSR2_web Vtable
/home/arw/WPS/link_grib.csh /home/arw/cfs/04/flx* /home/arw/cfs/04/pgb*
./ungrib.exe
