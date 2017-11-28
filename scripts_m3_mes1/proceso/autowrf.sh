#!/bin/bash
#Entrando a directorios de modulo central
cd /home/arw/WRFV3/run/
#Ejecutando .wrf
rm rsl.*
mpirun -np 38 ./wrf.exe

