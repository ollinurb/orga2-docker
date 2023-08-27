 # orga2-docker

Imagen de docker para el ambiente de desarrolo para Organización del computador 2.

- Ubuntu
- GCC (Compilador de C)
- NASM (Ensamblador de assembler)
- Valgrind (Tester de memory leaks)
- Varios paquetes: Curl, Vim, Git, Pass, Wget

**Para crear la imagen:**

```
docker build -t <nombre_imagen>:<tag> .
```
> - -t es para agregar un tag
> - <nombre_imagen> va a ser el nombre de la imagen
> - . es para indicarle que el dockerfile esta en el directorio.

Correr `docker images` para comprobar que la imagen **<nombre_imagen>** está presente.

**Para crear el contenedor:**

``` 
docker run --name <nombre_contenedor> -it -v <global_path_volumen>:<remote_path> <nombre_imagen>:<tag>
```
> - -it es para correrlo interactivo con terminal.
> - -v indica que asignaremos el volumen donde estarán los archivos en local.

ejemplo: `docker run --name orga2 -it -v ~/Desktop/orga2:/usr/src/orga2 alpine:1.0` 

Para detenerlo, `docker stop`.

Para comprobar que esta detenido, `docker ps -a`.

Para volver a correrlo, `docker start -i <nombre_contenedor>`.

> - importante el -i para poder tener terminal.
