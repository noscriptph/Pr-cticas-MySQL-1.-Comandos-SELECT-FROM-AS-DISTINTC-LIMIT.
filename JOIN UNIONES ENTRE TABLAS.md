# JOIN – Uniones entre tablas

❖ Accedemos con mysql, mysql workbench o cualquier otra de las herramientas
con la que estés trabajando.
❖ Ejecuta el archivo “academia.sql”. Esto permite crear una base de datos
Academia con la siguiente estructura.

![imagen](https://github.com/noscriptph/PracticasMySQLComandosYWallet/assets/103396791/0f2b0a00-153d-4bdd-bb74-2f2276a9c966)


** PRÁCTICAS MYSQLS **

JOIN – Uniones entre tablas
❖ Accedemos con mysql, mysql workbench o cualquier otra de las herramientas
con la que estés trabajando.
❖ Ejecuta el archivo “academia.sql”. Esto permite crear una base de datos
Academia con la siguiente estructura.
CURSOS: Datos de los cursos
  • Clave primaria: cod_curso
 
ALUMNOS : Datos de los alumnos
  • Clave primaria: cod_alumno
  • Clave foránea: cod_curso que apunta a la tabla Cursos
ASIGNATURAS : Datos de las asignaturas de cada curso
  • Clave primaria: cod_asignatura
  • Clave foránea: cod_curso que apunta a la tabla Cursos
  • Clave foránea: cod_profesor que apunta a la tabla Profesores
PROFESORES : Datos de los profesores con los cursos que imparte
  • Clave primaria: cod_profesor
NOTAS_ALUMNOS : Datos de los profesores con los cursos que imparte
  • Clave primaria: cod_alumno + cod_curso + cod_asignatura
  • Tiene los datos del alumno con la asignatura y el curso
