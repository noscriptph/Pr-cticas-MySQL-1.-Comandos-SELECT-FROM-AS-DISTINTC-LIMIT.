# Desarrollo

## APLICACIONES

Empezamos descargando e instalando MySQL y MySQL Workbench

![todos los programas > MySQL](image-2.png)

> [!NOTE]
> En este caso usare **Docker desktop** para realizar todos los comandos, mientras se ejecuta una imagen de MySQL en debian

Workbench sera utilizado para acceder a nuestra base de datos alojada en docker o en MySQL

![Docker desktop](image-3.png) ![MySQL Workbench 8.0 ce](image-4.png)

> [!IMPORTANT]
> Es importante indicar que en caso que utilices MySQL y docker ejecutando una imagen de MySQL sucedera un conflicto en el uso de puertos, se recomienda configurar uno de estos dos con otro puerto, en vez de usar 3306 podrias usar 3307

## CREAR LA BASE DE DATOS Y LAS TABLAS

Una vez instaladas, configuradas y ejecutadas las aplicaciones, lo que usaremos seria la insterfaz grafica de MySQL Workbench:

![GUI WORKBENCH](image-5.png)

En la interfaz veremos la base de datos local al instalar MySQL8.3 client "local instance" y la base de datos ubicada en Docker "WALLET", para este ejercicio usare la base de datos WALLET

> [!TIP]
> Antes de carga Wallet que esta en el docker, se debe iniciar Docker desktop y dentro de el iniciar el contenedor con el simbolo encerrado en el cuadrado verde
> ![VISTA DE CONTENEDORES DENTRO DE DOCKER DESKTOP](image-6.png)


### WORKBENCH CONECTADO A LA BASE DE DATOS
![VISTA DE BASE DE DATOS CONECTADA EN WORKBENCH](image-7.png)

Como podemos ver, solo existe la base de datos `sys` y el primer paso seria crear la base de datos Wallet2(el primer proyecto wallet fue creado en java e INTELLIJ IDEA)

### CREANDO BASE DE DATOS Wallet2
Wallet2.sql

```
CREATE DATABASE IF NOT EXISTS Alke_wallet;
USE Alke_wallet;
```
![crear base de datos](image-8.png)
