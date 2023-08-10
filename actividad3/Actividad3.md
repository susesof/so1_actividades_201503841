## Parte 1: Gestión de Usuarios

### Asignación de Usuarios:

**Usuario1:**
 ```
suseth@DESKTOP-RNJ50N9:~$ sudo adduser usuario1
Adding user `usuario1' ...
Adding new group `usuario1' (1001) ...
Adding new user `usuario1' (1001) with group `usuario1' ...
Creating home directory `/home/usuario1' ...
Copying files from `/etc/skel' ...
```
**Usuario2:**
 ```
suseth@DESKTOP-RNJ50N9:~$ sudo adduser usuario2
Adding user `usuario2' ...
Adding new group `usuario2' (1002) ...
Adding new user `usuario2' (1002) with group `usuario2' ...
Creating home directory `/home/usuario2' ...
Copying files from `/etc/skel' ...
```


**Usuario3:**
```
suseth@DESKTOP-RNJ50N9:~$ sudo adduser usuario3
Adding user `usuario3' ...
Adding new group `usuario3' (1003) ...
Adding new user `usuario3' (1003) with group `usuario3' ...
Creating home directory `/home/usuario3' ...
Copying files from `/etc/skel' ...
```



### Asignación de Contraseñas:
**Usuario1:**
```
suseth@DESKTOP-RNJ50N9:~$ sudo passwd usuario1
New password:
Retype new password:
passwd: password updated successfully

```

**Usuario2:**
```
New password:
Retype new password:
passwd: password updated successfully

```
**Usuario3:**
```
New password:
Retype new password:
passwd: password updated successfully
```


### Informacion de Usuarios:
```
suseth@DESKTOP-RNJ50N9:~$ id usuario1
uid=1001(usuario1) gid=1001(usuario1) groups=1001(usuario1)
```

### Eliminacion de usuario:
```
suseth@DESKTOP-RNJ50N9:~$ sudo userdel usuario3
suseth@DESKTOP-RNJ50N9:~$ idusuario3
idusuario3: command not found
suseth@DESKTOP-RNJ50N9:~$ id usuario3
id: ‘usuario3’: no such user

```

## Parte 2: Gestion de Grupos

### Creacion de Grupos:
```
suseth@DESKTOP-RNJ50N9:~$ sudo addgroup grupo1
Adding group `grupo1' (GID 1003) ...
Done.
suseth@DESKTOP-RNJ50N9:~$ sudo addgroup grupo2
Adding group `grupo2' (GID 1004) ...
Done.
```
### Agregar usuarios a grupos:
```
suseth@DESKTOP-RNJ50N9:~$ sudo usermod -aG grupo1 usuario1
suseth@DESKTOP-RNJ50N9:~$ sudo usermod -aG grupo2 usuario2
```
### Verificar Membresía:
```
suseth@DESKTOP-RNJ50N9:~$ groups usuario1
usuario1 : usuario1 grupo1
suseth@DESKTOP-RNJ50N9:~$ groups usuario2
usuario2 : usuario2 grupo2
```

### Eliminar Grupo:

```
suseth@DESKTOP-RNJ50N9:~$ sudo delgroup grupo2
Removing group `grupo2' ...
Done.
```
## Parte 3: Gestión de Permisos

### Creación de Archivos y Directorios:
```
suseth@DESKTOP-RNJ50N9:~$ su usuario1
Password:
usuario1@DESKTOP-RNJ50N9:/home/suseth$ touch ~/archivo1.txt
usuario1@DESKTOP-RNJ50N9:/home/suseth$ echo "Hola Mundo" > ~/archivo1.txt
usuario1@DESKTOP-RNJ50N9:/home/suseth$ mkdir ~/directorio1
usuario1@DESKTOP-RNJ50N9:/home/suseth$ touch ~/directorio1/archivo2.txt

```
### Verificar Permisos: 
```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ ls -l ~/archivo1.txt
-rw-rw-r-- 1 usuario1 usuario1 11 Aug  9 19:35 /home/usuario1/archivo1.txt
usuario1@DESKTOP-RNJ50N9:/home/suseth$ ls -ld ~/directorio1
drwxrwxr-x 1 usuario1 usuario1 512 Aug  9 20:01 /home/usuario1/directorio1
```
### Modificar Permisos usando `chmod` con Modo Numérico:
```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ chmod 640 ~/archivo1.txt

```
### Modificar Permisos usando `chmod` con Modo Simbólico:
```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ chmod u+x ~/directorio1/archivo2.txt
```
### Cambiar el Grupo Propietario: 
```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ ls -ld ~/directorio1/archivo2.txt
-rwxrw-r-- 1 usuario1 usuario1 0 Aug  9 20:01 /home/usuario1/directorio1/archivo2.txt
usuario1@DESKTOP-RNJ50N9:/home/suseth$ sudo chown :grupo1 ~/directorio1/archivo2.txt
[sudo] password for usuario1:
usuario1 is not in the sudoers file.  This incident will be reported.

```
### Configurar Permisos de Directorio: 
```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ chmod 750 ~/directorio1
```
### Comprobación de Acceso:
```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ cat ~/archivo1.txt
Hola Mundo
usuario1@DESKTOP-RNJ50N9:/home/suseth$ cat ~/directorio1/archivo2.txt
```
### Verificación Final: 

```
usuario1@DESKTOP-RNJ50N9:/home/suseth$ ls -l ~/archivo1.txt
-rw-r----- 1 usuario1 usuario1 11 Aug  9 19:35 /home/usuario1/archivo1.txt
usuario1@DESKTOP-RNJ50N9:/home/suseth$ ls -ld ~/directorio1
drwxr-x--- 1 usuario1 usuario1 512 Aug  9 20:01 /home/usuario1/directorio1
```
### Reflexión: 

*¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?*
La gestión adecuada de usuarios y permisos en un sistema operativo es esencial para asegurar la seguridad de los datos, proteger la privacidad, prevenir errores y mantener el control de acceso en el sistema.

*¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?*
Algunos comandos para gestionar permisos en Linux son: chmod, chown, chgrp, sudo y atributos de archivos.






