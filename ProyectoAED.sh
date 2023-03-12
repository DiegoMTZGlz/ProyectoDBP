#!/bin/bash

echo "-a | Metodologías ágiles"
echo "-t | Metodologías tradicionales"
echo ""

if [ "$1" = "-a" ]; then
  echo "Metodologías ágiles"
  echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:"
  echo "1. SCRUM"
  echo "2. X.P."
  echo "3. Kanban"
  echo "4. Crystal"
elif [ "$1" = "-t" ]; then
  echo "Metodologías tradicionales"
  echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:"
  echo "1. Cascada"
  echo "2. Espiral"
  echo "3. Modelo V"
else
  echo "Parámetro inválido. Debe usar -a para mostrar un texto o -t para mostrar otro texto"
  exit 1
fi
