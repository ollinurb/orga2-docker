# orga2-docker

Imagen de docker para el ambiente de desarrolo para Organización del computador 2.

- Ubuntu
- GCC (Compilador de C)
- NASM (Ensamblador de assembler)
- Valgrind (Tester de memory leaks)
- Varios paquetes: Curl, Vim, Git, Pass, Wget

**Para crear la imagen:**

```
docker build -t orga2:1.0 .
```
> - -t es para agregar el tag 1.0
> - orga2 va a ser el nombre de la imagen
> - . es para indicarle que el dockerfile esta en el directorio.

Correr `docker images` para comprobar que la imagen **orga2** está presente.

**Para crear el contenedor:**

``` 
docker run -it --name enviroment-orga orga2:1.0
```

Para detenerlo, `docker stop`.

Para comprobar que esta detenido, `docker ps -a`.

Para volver a correrlo, `docker start enviroment-orga`.
