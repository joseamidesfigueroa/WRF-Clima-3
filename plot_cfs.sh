#!/bin/bash
#PROGRAMA PARA PLOT CFS DEL MIEMBRO  PARA 3 MESES DE PROOSTICO

# Obtiene las fechas del sistema y calcula los meses de pronostico
#-------------------------------------------------------------------------
year1=`date --date='27 days' -u +%Y`
year2=`date --date='54 days' -u +%Y`
year3=`date --date='81 days' -u +%Y`
mes1=`date --date='27 days' -u +%m`
mes2=`date --date='54 days' -u +%m`
mes3=`date --date='81 days' -u +%m`
#-------------------------------------------------------------------------

miembro=1
mes=1
	while [ $miembro -le 4 ];
		do
		while [ $mes -le 3 ];
			do
			#Borra posibles archivos viejos
			#-------------------------------------------------------------------------
			cd /home/arw/cfs/0"$miembro"/
			rm *.ctl
			rm *.idx
			rm *.grib2
			#-------------------------------------------------------------------------
			#*****************************************************************************
			# PARA EL MES 1
			#-------------------------------------------------------------------------
			if [ $mes -eq 1 ]; then
			# Transforma a GrADS
			#-------------------------------------------------------------------------
			cd /home/arw/cfs/0"$miembro"/
			cat pgbf"$year1""$mes1"* > pgbf.grib2
			./g2ctl pgbf.grib2 > cfs.ctl
			gribmap -v -i cfs.ctl
			#-------------------------------------------------------------------------
			fi
			#-------------------------------------------------------------------------
			#*****************************************************************************
			#*****************************************************************************
			# PARA EL MES 2
			#-------------------------------------------------------------------------
			if [ $mes -eq 2 ]; then
				# Transforma a GrADS
				#-------------------------------------------------------------------------
				cd /home/arw/cfs/0"$miembro"/
				cat pgbf"$year2""$mes2"* > pgbf.grib2
				./g2ctl pgbf.grib2 > cfs.ctl
				gribmap -v -i cfs.ctl
				#-------------------------------------------------------------------------
			fi
			#-------------------------------------------------------------------------
			#*****************************************************************************
			#*****************************************************************************
			# PARA EL MES 3
			#-------------------------------------------------------------------------
			if [ $mes -eq 3 ]; then
				# Transforma a GrADS
				#-------------------------------------------------------------------------
				cd /home/arw/cfs/0"$miembro"/
				cat pgbf"$year3""$mes3"* > pgbf.grib2
				./g2ctl pgbf.grib2 > cfs.ctl
				gribmap -v -i cfs.ctl
				#-------------------------------------------------------------------------
			fi
			#-------------------------------------------------------------------------
			#*****************************************************************************
			# Realiza el movimiento de datos para ser generados a /home/arw/trabajo/grads/
			#-------------------------------------------------------------------------
			cd /home/arw/trabajo/grads/
			rm *.ctl
			rm *.idx
			rm *.grib2
			cd /home/arw/cfs/0"$miembro"/
			mv *.ctl /home/arw/trabajo/grads/
			mv *.idx /home/arw/trabajo/grads/
			mv *.grib2 /home/arw/trabajo/grads/
			#-------------------------------------------------------------------------
			#SE GENERAN LOS PRODUCTOS
			#-------------------------------------------------------------------------
			cd /home/arw/trabajo/grads/
			grads -blc "run vprom_cfs_general.gs"

			#SE GENERAN LA PRESION PROMEDIO
			#-------------------------------------------------------------------------
			cd /home/arw/trabajo/grads/
			grads -blc "run pprom_cfs_general.gs /home/arw/trabajo/grads/cfs.ctl"
			#-------------------------------------------------------------------------
			
			#-------------------------------------------------------------------------
			mv /home/arw/trabajo/grads_temp/*.png /home/arw/salidas/cfs/m"$miembro"_mes"$mes"/
			let mes=mes+1
			done
	#Borra posibles archivos viejos
	#-------------------------------------------------------------------------
	cd /home/arw/cfs/0"$miembro"/
	rm *.ctl
	rm *.idx
	rm *.grib2
	#-------------------------------------------------------------------------	
	# Transforma a GrADS
	#-------------------------------------------------------------------------
	cd /home/arw/cfs/0"$miembro"/
	cat pgbf"$year1""$mes1"* > pgbf.grib2
	./g2ctl pgbf.grib2 > cfs.ctl
	gribmap -v -i cfs.ctl
	#-------------------------------------------------------------------------
	# Realiza el movimiento de datos para ser generados a /home/arw/trabajo/grads/
	#-------------------------------------------------------------------------
	cd /home/arw/trabajo/grads/
	rm *.ctl
	rm *.idx
	rm *.grib2
	cd /home/arw/cfs/0"$miembro"/
	mv *.ctl /home/arw/trabajo/grads/
	mv *.idx /home/arw/trabajo/grads/
	mv *.grib2 /home/arw/trabajo/grads/
	#-------------------------------------------------------------------------
	#SE GENERAN LOS VIENTOS PROMEDIO
	#-------------------------------------------------------------------------
	cd /home/arw/trabajo/grads/
	grads -blc "run vprom_cfs_general.gs /home/arw/trabajo/grads/cfs.ctl"
	#-------------------------------------------------------------------------
	#SE GENERAN LA PRESION PROMEDIO
	#-------------------------------------------------------------------------
	cd /home/arw/trabajo/grads/
	grads -blc "run pprom_cfs_general.gs /home/arw/trabajo/grads/cfs.ctl"
	#-------------------------------------------------------------------------
	mv /home/arw/trabajo/grads_temp/*.png /home/arw/salidas/cfs/m"$miembro"_mes1/
	let miembro=miembro+1
	done

