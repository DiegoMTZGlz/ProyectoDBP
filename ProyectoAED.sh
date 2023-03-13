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

if [ $# != 1 ]; then
	echo "Uso: $0 [ -a | -t ]"
	echo "-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	exit 1
fi

if [ "$1" = "-a" ]; then
	agiles
	
elif [ "$1" = "-t" ]; then
	tradicionales
	
else
	echo "Uso: $0 [ -a | -t ]"
	echo "-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	exit 1
fi
