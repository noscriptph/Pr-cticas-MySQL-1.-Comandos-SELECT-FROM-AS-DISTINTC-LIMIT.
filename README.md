# Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT.
Actividad de clase donde se usan usan los comando de sql  SELECT, FROM,AS,DISTINTC,LIMIT.
TIP, PARA LIMPIAR LA CONSOLA DE MYSQL DEBES USAR EL SIGUIENTE COMANDO

![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/4bc5dc52-bfef-46e4-a695-86e902dbd8aa)


## Comandos SELECT, FROM,AS,DISTINTC,LIMIT.
❖ Accedemos con mysql, mysql workbench o cualquier otra de las herramientas
con la que estás trabajando.


❖ Descarga y carga la base de datos World, que es oficial de MYSQL: AQUÍ

![imagen](https://github.com/noscriptph/Pr-cticas-MySQL-1.-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/6d831bdf-8b44-42bf-8487-d9566aee54f5)

![imagen](https://github.com/noscriptph/Pr-cticas-MySQL-1.-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/063136e8-1f56-4267-a210-2104bece9bb7)


❖ Entramos en la base de datos world. Utiliza capturas de pantalla.

• Comprueba la estructura de la tabla country.
![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/0d9e91a7-9a7a-41bb-8cd5-4e9a1f9543b1)
![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/e60f6bf2-37ee-4952-a091-e719a426440f)

se lecciona la base de datos world y se pide que se muestren sus tablas

![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/c9eef60c-4260-4358-9559-b9dd8144fef4)


• Realiza una query para recuperar todas las columnas y filas de la de
la tabla.

![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/4e395594-a54a-49be-a5ea-6d23f7af1574)



seleccion de tabla para poder trabajar en ella

![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/a6904fee-cbc6-44d6-997d-ef61e26652ab)


• Visualiza los nombres de los países.

SELECT name FROM country;//para ver los datos en la columna name en la tabla country

![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/da4357b1-64ef-4549-8f75-f28cc0a33b48)


• Visualizar el nombre el continente y la población de cada país.

![imagen](https://github.com/noscriptph/Practicas-MySQL-Comandos-SELECT-FROM-AS-DISTINTC-LIMIT./assets/103396791/d22ee61e-3540-4106-8699-183898196548)


❖ Cambia la cabecera de cada columna de la consulta anterior traduciéndola al
español.
comando utilizado: 
ALTER TABLE table_name RENAME COLUMN old_name TO new_name;
debes reemplazar con los datos que necesitas en tu caso como en la foto





❖ Usando la columna “IndepYear” (Año de independencia), Averigua el número
de años que un país lleva independiente suponiendo que estamos ahora
mismo en el 2024. Debes visualizar el nombre del país el año de
independencia y el número de años transcurridos.
• Visualiza el nombre del país el año de independencia el número de
años transcurridos.
• Debes poner como nombre de columna “Añós Transcurridos”
Nota: si el año de independencia es nulo la expresión también
devolverá nulo.
❖ Visualiza los continentes sin que aparezcan repetidos.
❖ Visualizar los 5 primeros países.
❖ Visualizar los países desde la posición 10 a la 15.
