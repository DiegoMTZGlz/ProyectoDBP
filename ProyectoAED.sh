#!/bin/bash
agiles(){
		echo "\n ==== Metodologías Ágiles ===="
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
		read -p "Para continuar seleccione un tema: " opcion
		case $opcion in
			1)
			sec="SCRUM"
			macciones $sec
			;;
			2)
			sec="XP"
			macciones $sec
			;;
			3)
			sec="Kanban"
			macciones $sec
			;;
			4)
			sec="Crystal"
			macciones $sec
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
	echo "\n ==== Metodologías Tradicionales ===="
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
		read -p "Para continuar seleccione un tema: " opcion
		case $opcion in
			1)
			sec="Cascada"
			macciones $sec
			;;
			2)
			sec="Espiral"
			macciones $sec
			;;
			3)
			sec="Modelo"
			macciones $sec
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
	read -p "Ingrese un identificador para la definición: " id
	read -p "Ingrese una definición: " def 
	echo "[$id] .- $def" >> $1.inf
	echo "\nAgregando: [$id] .- $def"
}

buscar(){
	read -p "Ingrese un identificador para la búsqueda: " id
	grep -i -n $id ./$1.inf
}

eliminar(){
	read -p "Ingresa el identificador para eliminar la definición: " id
	echo "\nEliminando..." 
	sed -i "/$(echo $id | sed 's/[\/&]/\\&/g' | tr '[:upper:]' '[:lower:]')/Id" $sec.inf
}

leer(){
	echo "\nContenido del archivo: \n"
	cat ./$sec.inf
}

salir(){
	echo "\n ==== Terminando ejecución ====\n"
	exit 1
}

macciones(){
	while true
			do
				msecciones
				read -p "Usted está en la sección $sec, seleccione la opción que desea utilizar: " msec
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
					leer $sec
					;;
					5)
					break
					;;
					6)
					salir
					;;		
					*)
					echo "\nIngresa una opción válida"
				esac
			done
}
	
while true
do
	echo "\n-a | Metodologías ágiles"
	echo "-t | Metodologías tradicionales"
	echo "-f | Terminar ejecución\n"
	read -p "Ingresa la opción deseada: " in
	case "$in" in
		"-a")
		magiles
		;;
		"-t")
		mtradicionales
		;;
		"-f")
		exit 1
		;;
		*)
		echo "\nOpción inválida, usa:"
	esac
done