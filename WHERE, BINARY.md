Comandos WHERE, BINARY .

❖ Accedemos con mysql, mysql workbench o cualquier otra de las herramientas
con la que estás trabajando.

❖ Descarga y carga la base de datos SAKILA, que es oficial de MYSQL: AQUÍ
• Instala primero sakila-schema.
• Instala segundo sakila-data
ver estos pasos en https://github.com/noscriptph/PracticasMySQLComandos/blob/ea0f623990970f5e1f2f7e01840d099304775654/SELECT-FROM-AS-DISTINTC-LIMIT.md

❖ Entra en la base de datos sakila”. Utiliza capturas de pantalla.


❖ Seleccionar los campos “address” y “district” de la tabla “address” donde
distrito sea Texas.
❖ Seleccionar todas las columnas de la table “payment” cuyo campo “amount”
sea mayor que 11.
❖ Visualizar todos los actores de la tabla “actor” cuyo first_name sea “Penelope”.
Prueba con mayúscula y minúsculas para ver si devuelve el mismo resultado.
❖ Hacer lo mismo, pero con la cláusula BINARY para comprobar la diferencia.
❖ Visualizar las columnas first_name y last_name de la tabla “customer” de
aquellos clientes que esté inactivos (campo “active” igual a 0) .
❖ Prueba cambiando la igualdad del CERO por un False. ¿funciona? Si es así
¿Cuál es el motivo?
❖ ¿Qué resultados daría el comando siguiente? ¿Los clientes activos o los
inactivos :
• select first_name,last_name,active from customer where active;
❖ ¿Y el siguiente?¿Activos o inactivos?
• select first_name,last_name,active from customer where !active;
❖ Si ejecutamos esta query contra la tabla “rental”:
select * from rental where rental_date="2006-02-14";
Verás que no aparece ninguna fila, a pesar de que si existen registros en esa fecha.
¿A qué es debido? ¿Cómo podríamos visualizar alguno de los registros?
❖ PISTA. Si hacemos un desc de la tabla Rental comprobamos que la columna
rental_date es de tipo DATETIME, no es de tipo DATE
