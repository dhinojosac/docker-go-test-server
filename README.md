# Golang Docker Proyecto
Este proyecto tiene como finalidad poder generar un container con el servidor programado en Golang.
En mi caso se usó la Docker en Windows 10.

### Instrucciones
Para construir la imagen de Docker que deseamos, usamos el comando ` docker build -t testserver . ` por defecto lee el archivo Dockerfile. 

Luego para correr la imagen antes creada, corremos el comando ` docker run --rm -d -p 8090:8090 testserver `. La parámetro `-p` es para definir la redirección de los puertos desde la imagen al host. El parámetro `-d` es para que corra en modo background. 

Para probar que nuestro servicio está corriendo, simplemente hacemos un ` curl http://localhost:8090/you -v `, que en este caso nos debería devolver un mensaje `Hi there, I love you!`.

### Problemas
* Al inicio, la dirección del servidor la había dejado `:8090`, al hacerle el `curl` para probarlo me retornaba un error `curl: (52) Empty reply from server`, pero se soluciona escribiendo de forma explícita `0.0.0.0:8090`. 

### Autor 
Diego Hinojosa Córdova
