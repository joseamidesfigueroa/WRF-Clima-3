#!/bin/bash
# Entrada al directorio de corrida de pre procesamiento
cd /home/arw/dominios/M1/
mv met_em* /home/arw/WRFV3/run/
#Entrando a directorios de modulo central
cd /home/arw/WRFV3/run/
#Ejecutando .real
mpirun -np 39 ./real.exe
