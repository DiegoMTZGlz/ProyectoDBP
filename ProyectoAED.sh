#!/bin/bash
agiles(){
	echo "\nMetodologías Ágiles"
	echo "Para continuar seleccione un tema:"
	echo "1. SCRUM"
	echo "2. X.P."
	echo "3. Kanban"
	echo "4. Crystal\n"
}

magiles(){
	while true
	do
		agiles
		read opcion
		if [ $opcion = 1 ]; then
			echo "\nUsted esta en la sección SCRUM, seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "SCRUM"
				fi
			done
			break
		elif [ $opcion = 2 ]; then
			echo "\nUsted esta en la sección X.P., seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "XP"
				fi
			done
			break
		elif [ $opcion = 3 ]; then
			echo "\nUsted esta en la sección Kanban, seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "Kanban"
				fi
			done
			break
		elif [ $opcion = 4 ]; then
			echo "\nUsted esta en la sección Crystal, seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "Crystal"
				fi
			done
			break
		else
			echo "\nOpción inválida.."
			agiles
		fi
	done
}

tradicionales(){
	echo "\nMetodologías Tradicionales"
	echo "Para continuar seleccione un tema:"
	echo "1. Cascada"
	echo "2. Espiral"
	echo "3. Modelo V\n"
}

mtradicionales(){
	while true
	do
		tradicionales
		read opcion
		if [ $opcion = 1 ]; then
			echo "\nUsted esta en la sección Cascada, seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "Cascada"
				fi
			done
			break
		elif [ $opcion = 2 ]; then
			echo "\nUsted esta en la sección Espiral, seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "Espiral"
				fi
			done
			break
		elif [ $opcion = 3 ]; then
			echo "\nUsted esta en la sección Modelo, seleccione la opción que desea utilizar.\n"
			while true
			do
				msecciones
				read msec
				if [ $msec = 1 ]; then
					agregar "Modelo"
				fi
			done
			break
		else
			echo "\nOpción inválida.."
			tradicionales
		fi
	done
}

msecciones(){
	echo "\n1. Agregar información"
	echo "2. Buscar"
	echo "3. Eliminar información"
	echo "4. Leer base de información\n"
}

agregar(){
	echo "Ingrese un identificador para la definición:"
	read id
	echo "Ingrese una definición para la deficinón:"
	read def 
	echo "[$id] .- $def" >> $1.inf
	echo "Agregando: [$id] .- $def"
}

if [ $# != 1 ]; then
	echo "Uso: $0 [ -a | -t ]"
	echo "-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	exit 1
fi

if [ "$1" = "-a" ]; then
	magiles
elif [ "$1" = "-t" ]; then
	mtradicionales
else
	echo "Uso: $0 [ -a | -t ]"
	echo "-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	exit 1
fi