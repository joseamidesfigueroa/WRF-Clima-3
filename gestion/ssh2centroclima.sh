#!/bin/sh
# SCRIPT PARA LA SUBIDA AUTOMATICA DE DATOS DESDE EL FTP DE CCPM PARA LA ACTUALIZACION DEL SITIO WEB ELSALVADORSAT CREADO POR JUAN JOSE AMIDES FIGUEROA PARA MARN 2013/04/13 00:13
echo '
=======================================================================
SCRIPT DE SUBIDA DE DATOS  
CREADO POR JUAN JOSE AMIDES FIGUEROA URBANO
=======================================================================
'

#FUNCIONA SOLO PARA ENTRAR -------------------------------------
#ssh -i /home/arw/scripts/SAMRE3/gestion/centro_clima_key.pem ubuntu@52.27.228.52 
#rsync
#---------------------------------------------------------------

scp -i /home/arw/scripts/SAMRE3/gestion/centro_clima_key.pem -r /home/arw/salidas/ ubuntu@52.27.228.52:apps/wordpress/htdocs/samre3/
