# Golang Docker Proyecto
Este proyecto tiene como finalidad poder generar un container con el servidor programado en Golang.
En mi caso se usó la Docker en Windows 10.

### Instrucciones
Para construir la imagen de Docker que deseamos, usamos el comando ` docker build -t testserver . ` por defecto lee el archivo Dockerfile. 

Luego para correr la imagen antes creada, corremos el comando ` docker run --rm -d -p 8090:8090 testserver `. La parámetro `-p` es para definir la redirección de los puertos desde la imagen al host. El parámetro `-d` es para que corra en modo background. 

Para probar que nuestro servicio está corriendo, simplemente hacemos un ` curl http://localhost:8090/you -v `, que en este caso nos debería devolver un mensaje `Hi there, I love you!`.

### Autor 
Diego Hinojosa Córdova
