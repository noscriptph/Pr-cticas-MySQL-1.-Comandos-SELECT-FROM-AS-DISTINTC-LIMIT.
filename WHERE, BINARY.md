Comandos WHERE, BINARY .

❖ Accedemos con mysql, mysql workbench o cualquier otra de las herramientas
con la que estás trabajando.

❖ Descarga y carga la base de datos SAKILA, que es oficial de MYSQL

• Instala primero sakila-schema.

• Instala segundo sakila-data

ver estos pasos en https://github.com/noscriptph/PracticasMySQLComandos/blob/ea0f623990970f5e1f2f7e01840d099304775654/SELECT-FROM-AS-DISTINTC-LIMIT.md

❖ Entra en la base de datos sakila”. Utiliza capturas de pantalla.



❖ Seleccionar los campos “address” y “district” de la tabla “address” donde
distrito sea Texas.
![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/e9700df2-fd55-42b0-83fe-bfdb1fec17b4)

❖ Seleccionar todas las columnas de la table “payment” cuyo campo “amount”
sea mayor que 11.

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/39dce131-39b4-4092-a91d-f37baabfcc77)


❖ Visualizar todos los actores de la tabla “actor” cuyo first_name sea “Penelope”.
Prueba con mayúscula y minúsculas para ver si devuelve el mismo resultado.

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/afcc43fc-47f4-4de1-88ca-9359bf04a67a)



❖ Hacer lo mismo, pero con la cláusula BINARY para comprobar la diferencia.

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/0aa5f302-817d-48a8-b5bd-4f83e16a66de)

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/02cd6f2c-525b-4baa-89c5-8b30d635b334)


❖ Visualizar las columnas first_name y last_name de la tabla “customer” de
aquellos clientes que esté inactivos (campo “active” igual a 0) .

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/a91c1af7-f44e-4479-9fe9-e16f4f5337b2)



❖ Prueba cambiando la igualdad del CERO por un False. ¿funciona? Si es así
¿Cuál es el motivo?

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/8eeaf592-f652-48fb-9078-70174f09f779)



❖ ¿Qué resultados daría el comando siguiente? ¿Los clientes activos o los
inactivos :
• select first_name,last_name,active from customer where active;
(antes de debe seleccionar la base de datos como por defecto)

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/6e4c2923-13ff-4503-86d1-0f3f9875a7bc)


❖ ¿Y el siguiente?¿Activos o inactivos?
• select first_name,last_name,active from customer where !active;
❖ Si ejecutamos esta query contra la tabla “rental”:
select * from rental where rental_date="2006-02-14";

![imagen](https://github.com/noscriptph/PracticasMySQLComandos/assets/103396791/3a3b266c-295c-4a75-b418-6ed24442900a)

se nego el true, por ende 

Verás que no aparece ninguna fila, a pesar de que si existen registros en esa fecha.
¿A qué es debido? ¿Cómo podríamos visualizar alguno de los registros?
❖ PISTA. Si hacemos un desc de la tabla Rental comprobamos que la columna
rental_date es de tipo DATETIME, no es de tipo DATE
