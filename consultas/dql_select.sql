-- Consultas SQL ------------------------------------------------------------------------------------

-- 1. Encuentra el profesor que ha impartido más asignaturas en el último año académico.
select pro.*, count(asig.id_profesor) as ultimas_asignatura from profesor pro
inner join asignatura asig on pro.id = asig.id_profesor
group by asig.id_profesor order by ultimas_asignatura desc;

-- 2. Lista los cinco departamentos con mayor cantidad de asignaturas asignadas.
select dep.id as id_departamento, dep.nombre as nom_departamento, count(pro.id_departamento) as cant_asig_asignadas, asig.nombre from asignatura asig
inner join profesor pro on asig.id_profesor = pro.id
inner join departamento dep  on pro.id_departamento = dep.id
group by asig.id order by cant_asig_asignadas desc ;

-- 3. Obtén el total de alumnos y docentes por departamento.
select pro.id_departamento as departamento,count( pro.id) as total_profes, count(as_ma.id_alumno) as total_alumnos
from alumno_se_matricula_asignatura as_ma
inner join asignatura asig on asig.id_profesor != null
inner join profesor pro
group by pro.id_departamento order by departamento desc ;

-- 4. Calcula el número total de alumnos matriculados en asignaturas de un género específico en un semestre determinado.
select  count(as_ma.id_alumno) as alumnos_matriculados from alumno_se_matricula_asignatura as_ma
where 
-- 5. Encuentra los alumnos que han cursado todas las asignaturas de un grado específico.
-- 6. Lista los tres grados con mayor número de asignaturas cursadas en el último semestre.
-- 7. Muestra los cinco profesores con menos asignaturas impartidas en el último año académico.
-- 8. Calcula el promedio de edad de los alumnos al momento de su primera matrícula.
-- 9. Encuentra los cinco profesores que han impartido más clases de un mismo grado.
-- 10. Genera un informe con los alumnos que han cursado más de 10 asignaturas en el último año.
-- 11. Calcula el promedio de créditos de las asignaturas por grado.
-- 12. Lista las cinco asignaturas más largas (en horas) impartidas en el último semestre.
-- 13. Muestra los alumnos que han cursado más asignaturas de un género específico.
-- 14. Encuentra la cantidad total de horas cursadas por cada alumno en el último semestre.
-- 15. Muestra el número de asignaturas impartidas diariamente en cada mes del último trimestre.
-- 16. Calcula el total de asignaturas impartidas por cada profesor en el último semestre.
-- 17. Encuentra al alumno con la matrícula más reciente.
-- 18. Lista los cinco grados con mayor número de alumnos matriculados durante los últimos tres meses.
-- 19. Obtén la cantidad de asignaturas cursadas por cada alumno en el último semestre.
-- 20. Lista los profesores que no han impartido clases en el último año académico.