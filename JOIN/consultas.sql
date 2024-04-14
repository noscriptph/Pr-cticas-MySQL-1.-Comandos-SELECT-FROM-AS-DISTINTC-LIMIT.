USE ACADEMIA;

-- Seleccionar el nombre del alumno número 10 y el curso que está haciendo
SELECT A.nombre AS nombre_alumno, C.nombre AS nombre_curso
FROM ALUMNOS A
INNER JOIN CURSOS C ON A.cod_curso = C.cod_curso
WHERE A.cod_alumno = 10;

-- Visualizar las asignaturas del curso 1.
SELECT *
FROM ASIGNATURAS
WHERE cod_curso = 1;

-- Visualizar el número de asignaturas de cada curso.
SELECT C.cod_curso, C.nombre AS nombre_curso, COUNT(A.cod_asignatura) AS numero_asignaturas
FROM CURSOS C
LEFT JOIN ASIGNATURAS A ON C.cod_curso = A.cod_curso
GROUP BY C.cod_curso, C.nombre;

-- Visualizar las asignaturas del profesor con el código 2
SELECT *
FROM ASIGNATURAS
WHERE cod_profesor = 2;

-- Visualizar las notas del alumno 10
SELECT *
FROM NOTAS_ALUMNOS
WHERE cod_alumno = 10;

-- Mostrar el curso y el promedio de notas de los alumnos
SELECT C.nombre AS nombre_curso, AVG(NA.nota) AS promedio_notas
FROM CURSOS C
LEFT JOIN ALUMNOS A ON C.cod_curso = A.cod_curso
LEFT JOIN NOTAS_ALUMNOS NA ON A.cod_alumno = NA.cod_alumno
GROUP BY C.cod_curso, C.nombre;

-- Sacar el promedio, pero en este caso por asignatura. Probando LEFT Y RIGHT JOIN
SELECT A.cod_asignatura, AVG(NA.nota) AS promedio_notas
FROM ASIGNATURAS A
LEFT JOIN NOTAS_ALUMNOS NA ON A.cod_asignatura = NA.cod_asignatura
GROUP BY A.cod_asignatura;

-- rigth join
SELECT A.cod_asignatura, AVG(NA.nota) AS promedio_notas
FROM NOTAS_ALUMNOS NA
RIGHT JOIN ASIGNATURAS A ON NA.cod_asignatura = A.cod_asignatura
GROUP BY A.cod_asignatura;

insert into CURSOS values(11,'curso11',100);  
insert into CURSOS values(12,'curso12',200);

-- Averiguar ahora el número de alumnos por curso. Debes usar la cláusula USING para hacer la join ( Investiga sobre la clausaula USING y aplícala)
SELECT C.nombre AS nombre_curso, COUNT(A.cod_alumno) AS numero_alumnos
FROM CURSOS C
JOIN ALUMNOS A USING (cod_curso)
GROUP BY C.nombre;

-- Comprueba si aparecen los nuevos cursos. Hazlo con Left Join y deben aparecer 0 alumnos
SELECT C.cod_curso, C.nombre AS nombre_curso, COUNT(A.cod_alumno) AS numero_alumnos
FROM CURSOS C LEFT JOIN ALUMNOS A ON C.cod_curso = A.cod_curso GROUP BY C.cod_curso, C.nombre
HAVING COUNT(A.cod_alumno) = 0;

-- Obtén cada asignatura con sus profesores. Hay algunos profesores que no aparecen 
-- ya que no tienen asignaturas todavía. Los debes incluir con un RIGHT JOIN.
SELECT A.nombre AS nombre_asignatura, P.nombre AS nombre_profesor
FROM ASIGNATURAS A RIGHT JOIN PROFESORES P ON A.cod_profesor = P.cod_profesor;