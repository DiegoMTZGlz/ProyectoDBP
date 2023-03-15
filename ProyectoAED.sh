#!/bin/bash
agiles(){
	echo "\nMetodologías Ágiles"
	echo "Para continuar seleccione un tema:"
	echo "1. SCRUM"
	echo "2. X.P."
	echo "3. Kanban"
	echo "4. Crystal"
	echo "5. Volver al menú anterior"
	echo "6. Terminar ejecución\n"
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
			5)
			break
			;;
			6)
			salir
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
	echo "3. Modelo V"
	echo "4. Volver al menú anterior"
	echo "5. Terminar ejecución\n"
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
			4)
			break
			;;
			5)
			salir
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
	echo "4. Leer base de información"
	echo "5. Volver al menú anterior"
	echo "6. Terminar ejecución\n"
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

eliminar(){
	echo "Ingresa el identificador para eliminar la definición:"
	read id
	echo "\nEliminando..." 
	sed -i "/$(echo $id | sed 's/[\/&]/\\&/g' | tr '[:upper:]' '[:lower:]')/Id" $sec.inf
}

leer(){
	echo "Contenido del archivo: "
	cat ./$1.inf
}

salir(){
	echo "\n==== Terminando ejecución ====\n"
	exit 1
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
					3)
					eliminar $sec
					;;
					4)
					leer $1
					;;
					5)
					break
					;;
					6)
					salir
					;;		
					*)
					echo "Ingresa una opción válida"
				esac
			done
}
	
while true
do
	echo "\n-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales\n"
	echo "Ingresa la opción deseada: "
	read in
	case "$in" in
		"-a")
		magiles
		;;
		"-t")
		mtradicionales
		;;
		*)
		echo "\nOpción inválida, usa:"
	esac
done