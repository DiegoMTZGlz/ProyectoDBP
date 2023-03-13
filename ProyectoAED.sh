#!/bin/bash
agiles(){
	echo "\nMetodologías Ágiles"
	echo "Para continuar seleccione un tema:"
	echo "1. SCRUM"
	echo "2. X.P."
	echo "3. Kanban"
	echo "4. Crystal\n"
}

tradicionales(){
	echo "\nMetodologías Tradicionales"
	echo "Para continuar seleccione un tema:"
	echo "1. Cascada"
	echo "2. Espiral"
	echo "3. Modelo V\n"
}

msecciones(){
	echo "1. Agregar información"
	echo "2. Buscar"
	echo "3. Eliminar información"
	echo "4. Leer base de información"
}

if [ $# != 1 ]; then
	echo "Uso: $0 [ -a | -t ]"
	echo "-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	exit 1
fi

if [ "$1" = "-a" ]; then
	while true
	do
		agiles
		read opcion
		if [ $opcion = 1 ]; then
			echo "\nUsted esta en la sección SCRUM, seleccione la opción que desea utilizar.\n"
			break
			msecciones
		elif [ $opcion = 2 ]; then
			echo "\nUsted esta en la sección X.P., seleccione la opción que desea utilizar.\n"
			break
			msecciones
		elif [ $opcion = 3 ]; then
			echo "\nUsted esta en la sección Kanban, seleccione la opción que desea utilizar.\n"
			break
			msecciones
		elif [ $opcion = 4 ]; then
			echo "\nUsted esta en la sección Crystal, seleccione la opción que desea utilizar.\n"
			break
			msecciones
		else
			echo "\nOpción inválida.."
			agiles
		fi
	done	
elif [ "$1" = "-t" ]; then
	while true
	do
		tradicionales
		read opcion
		if [ $opcion = 1 ]; then
			echo "\nUsted esta en la sección Cascada, seleccione la opción que desea utilizar.\n"
			break
			msecciones
		elif [ $opcion = 2 ]; then
			echo "\nUsted esta en la sección Espiral, seleccione la opción que desea utilizar.\n"
			break
			msecciones
		elif [ $opcion = 3 ]; then
			echo "\nUsted esta en la sección Modelo, seleccione la opción que desea utilizar.\n"
			break
			msecciones
		else
			echo "\nOpción inválida.."
			tradicionales
		fi
	done
	
else
	echo "Uso: $0 [ -a | -t ]"
	echo "-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	exit 1
fi