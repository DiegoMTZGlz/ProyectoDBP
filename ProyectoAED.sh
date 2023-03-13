#!/bin/bash
if [ $# != 1 ]; then
	echo "Uso: $0 [ -a | -t ]"
  echo "-a | Metodologías ágiles"
  echo "-t | Metodologías tradicionales"
	exit 1
fi

if [ "$1" = "-a" ]; then
	echo "\nMetodologías ágiles"
	echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:"
	echo "1. SCRUM"
	echo "2. X.P."
	echo "3. Kanban"
	echo "4. Crystal\n"

elif [ "$1" = "-t" ]; then
	echo "\nMetodologías tradicionales"
	echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:"
	echo "1. Cascada"
	echo "2. Espiral"
	echo "3. Modelo V\n"
	
else
	echo "Parámetro inválido. Debe usar -a para mostrar un texto o -t para mostrar otro texto"
	exit 1
fi