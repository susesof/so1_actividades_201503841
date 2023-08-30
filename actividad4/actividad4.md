## activida 4

Primero, se crea un script de shell llamado saludo.sh

![Descripción de la imagen](https://github.com/susesof/so1_actividades_201503841/blob/master/actividad4/imagenes/Captura%20desde%202023-08-29%2018-35-01.png)


Le damos permisos de ejecución a este script con el siguiente comando:

```
chmod +x saludo.sh

```
Ahora, se crea un archivo de servicio systemd para que pueda ejecutar este script como un servicio. Para ello, se crea un archivo llamado saludo.service en el directorio /etc/systemd/system/ con el siguiente contenido: 
![Descripción de la imagen](https://github.com/susesof/so1_actividades_201503841/blob/master/actividad4/imagenes/Captura%20desde%202023-08-29%2018-32-45.png)


```
[Unit]
Description=Saludo Service

[Service]
Type=simple
ExecStart=/home/suseth/tarea4/saludo.sh

[Install]
WantedBy=multi-user.target
```
Después se crear el archivo de servicio, se habilita y luego se inicia el servicio:
```
# Habilitar el servicio (esto lo registrará para que se inicie en el arranque)
sudo systemctl enable saludo.service

# Iniciar el servicio
sudo systemctl start saludo.service

```
Ahora, el script se ejecutará como un servicio y continuará imprimiendo "Hola Mundo" junto con la fecha actual cada 10 segundos. Uilizando el siguiente comando 

```
sudo journalctl -u saludo.service -f

```


![Descripción de la imagen](https://github.com/susesof/so1_actividades_201503841/blob/master/actividad4/imagenes/Captura%20desde%202023-08-29%2018-33-27.png)
