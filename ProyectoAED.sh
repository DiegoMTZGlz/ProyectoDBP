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
		case $opcion in
			1)
			sec="SCRUM"
			macciones $sec

			break
			;;
			2)
			sec="XP"
			macciones $sec
			break
			;;
			3)
			sec="Kanban"
			macciones $sec
			break
			;;
			4)
			sec="Crystal"
			macciones $sec
			break
			;;
			*)
			echo "\nOpción inválida.."
			agiles
			;;
		esac
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
		case $opcion in
			1)
			sec="Cascada"
			macciones $sec
			break
			;;
			2)
			sec="Espiral"
			macciones $sec
			break
			;;
			3)
			sec="Modelo"
			macciones $sec
			break
			;;
			*)
			echo "\nOpción inválida.."
			tradicionales
			;;
		esac
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
	echo "Ingrese una definición:"
	read def 
	echo "[$id] .- $def" >> $1.inf
	echo "Agregando: [$id] .- $def"
}

buscar(){
	echo "Ingrese un identificador para la búsqueda:"
	read id
	grep -i -n $id ./$1.inf
}

macciones(){
	while true
			do
			echo "\nUsted esta en la sección $sec, seleccione la opción que desea utilizar."
				msecciones
				read msec
				case $msec in
					1)
					agregar $sec
					;;
					2)
					buscar $sec
					;;
					*)
					echo "Ingresa una opción válida"
				esac
			done
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