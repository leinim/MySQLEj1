SELECT * FROM PERSONAL.DEPARTAMENTOS;
SELECT * FROM PERSONAL.EMPLEADOS;
SELECT * FROM PERSONAL.DEPARTAMENTOS;
SELECT NOMBRE_DEPTO FROM PERSONAL.DEPARTAMENTOS;
SELECT NOMBRE, SAL_EMP FROM PERSONAL.EMPLEADOS;
SELECT COMISION_EMP FROM PERSONAL.EMPLEADOS;
SELECT * FROM PERSONAL.EMPLEADOS WHERE CARGO_EMP = 'Secretaria';
SELECT * FROM PERSONAL.EMPLEADOS WHERE CARGO_EMP = 'Vendedor' ORDER BY NOMBRE;
SELECT NOMBRE, CARGO_EMP FROM PERSONAL.EMPLEADOS ORDER BY SAL_EMP ASC;
/*Obtener el nombre de o de los jefes que tengan su departamento situado en la ciudad
de “Ciudad Real”*/
SELECT NOMBRE_JEFE_DEPTO FROM PERSONAL.DEPARTAMENTOS WHERE CIUDAD = 'Ciudad Real';
SELECT NOMBRE AS Nombre, cargo_emp AS Cargo FROM personal.empleados;
SELECT SAL_EMP, COMISION_EMP FROM PERSONAL.EMPLEADOS WHERE ID_DEPTO = 2000 ORDER BY COMISION_EMP ASC;
/*Obtener el valor total a pagar a cada empleado del departamento 3000, que resulta
de: sumar el salario y la comisión, más una bonificación de 500. Mostrar el nombre del
empleado y el total a pagar, en orden alfabético.*/
SELECT nombre, SAL_EMP+COMISION_EMP+500 AS total_a_pagar FROM PERSONAL.EMPLEADOS WHERE ID_DEPTO = 3000 ORDER BY NOMBRE;
SELECT * FROM PERSONAL.EMPLEADOS WHERE NOMBRE LIKE 'J%';
SELECT NOMBRE, SAL_EMP, COMISION_EMP, SAL_EMP+COMISION_EMP AS SALARIO_TOTAL FROM PERSONAL.EMPLEADOS WHERE COMISION_EMP > 1000;
SELECT NOMBRE, SAL_EMP, COMISION_EMP, SAL_EMP+COMISION_EMP AS SALARIO_TOTAL FROM PERSONAL.EMPLEADOS WHERE COMISION_EMP = 0;
SELECT * FROM PERSONAL.EMPLEADOS WHERE COMISION_EMP > SAL_EMP;
SELECT * FROM PERSONAL.EMPLEADOS WHERE COMISION_EMP <= SAL_EMP * 0.3;
SELECT * FROM PERSONAL.EMPLEADOS WHERE NOMBRE NOT LIKE '%MA%';
SELECT NOMBRE_DEPTO FROM PERSONAL.DEPARTAMENTOS WHERE NOMBRE_DEPTO IN ('Ventas', 'Investigacón', 'Mantenimiento');
SELECT NOMBRE_DEPTO FROM PERSONAL.DEPARTAMENTOS WHERE NOMBRE_DEPTO NOT IN ('Ventas', 'Investigacón', 'Mantenimiento');
SELECT MAX(SAL_EMP) FROM PERSONAL.EMPLEADOS;
SELECT * FROM PERSONAL.EMPLEADOS ORDER BY NOMBRE DESC LIMIT 1;
SELECT MAX(SAL_EMP), MIN(SAL_EMP), MAX(SAL_EMP) - MIN(SAL_EMP) AS DIFERENCIA FROM PERSONAL.EMPLEADOS;
SELECT AVG(SAL_EMP), ID_DEPTO FROM PERSONAL.EMPLEADOS group by ID_DEPTO;
SELECT COUNT(*) as num_emp, ID_DEPTO FROM PERSONAL.EMPLEADOS GROUP BY ID_DEPTO HAVING COUNT(*) > 3;
SELECT COUNT(*) as num_emp, ID_DEPTO FROM PERSONAL.EMPLEADOS GROUP BY ID_DEPTO HAVING COUNT(*) = 0;
/*Mostrar la lista de empleados, con su respectivo departamento y el jefe de cada
departamento.*/
SELECT E.*, D.NOMBRE_DEPTO, D.NOMBRE_JEFE_DEPTO FROM EMPLEADOS E INNER JOIN DEPARTAMENTOS D ON E.ID_DEPTO = D.ID_DEPTO;
/*Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la
empresa. Ordenarlo por departamento.*/
SELECT * FROM EMPLEADOS WHERE SAL_EMP >= (SELECT AVG(SAL_EMP) FROM EMPLEADOS) ORDER BY ID_DEPTO;
