#!/bin/bash
#Entrando a directorios de modulo central
cd /home/arw/WRFV3/run/
#Ejecutando .wrf
mpirun -np 38 ./wrf.exe

