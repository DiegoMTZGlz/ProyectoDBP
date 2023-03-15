# Proyecto - Actividad Repositorios

Este archivo es parte de la tarea de repositorios para DBP

## Para empezar

Buscamos instalar correctamente GIT en Ubuntu

### Requisitos previos

- Sistema Ubuntu instalado.

### Instalación

Primero verificaremos que GIT no se encuentre ya instalado.
Para esto ejecutamos el siguiente comando en la terminal

```
$ git --version
```

En caso de que se encuentre instalado nos debería mostrar algo como

```
git version 2.34.1
```

Caso contrario procederemos a instalar GIT de la siguiente manera
Primero, utilice las herramientas de administración de paquetes apt para actualizar su índice local de paquetes.

```
$ sudo apt update
```
Una vez completada la actualización, puede instalar GIT con:

```
$ sudo apt install git
```
Para confirmar que la instalación se dió correctamente consultamos la versión con:

```
$ git --version
```

## Configurando GIT

Ahora configuraremos GIT para su uso con:

```
$ git config --global user.name "Tu nombre"
$ git config --global user.email "tucorreo@dominio.com"
```
Una vez hagamos esto podemos consultar los cambios con:

```
$ git config --list
```
Dejandonos ver los ajustes:

```
user.name= Tu Nombre
user.email= tucorreo@dominio.com
```

Ahora si, ya tenemos instalado y configurado GIT para su uso.

## Hecho con

* [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2) - Plantilla

## Autor

* **Diego Martínez** - [DiegoMTZGlz](https://github.com/DiegoMTZGlz)

## Reconocimientos

* **Luis Antonio Ramírez Martínez** - *Material y Asesoría*
* **Billie Thompson** - *Plantilla* - [PurpleBooth](https://github.com/PurpleBooth)
