Las personas que sean de Sistemas (junto a la clave de Sistemas), que sean empleados y coordinadores. Ademas mostrar el sueldo que sea mayor a 20000.

SELECT e.nombre,e.paterno,e.materno,e.sueldo
FROM cargo AS c INNER JOIN empleado AS e
	ON(c.idcargo = e.idcargo)
		INNER JOIN departamento AS d
			ON(e.iddepartamento = d.iddepartamento)
WHERE e.sueldo > 20000 AND c.nombre IN ('Empleado','Coordinador');

SELECT e.nombre,e.paterno,e.materno,e.sueldo
FROM cargo AS c FULL OUTER JOIN empleado AS e
	ON(c.idcargo = e.idcargo)
		FULL OUTER JOIN departamento AS d
			ON(e.iddepartamento = d.iddepartamento)
WHERE e.sueldo > 20000 AND c.nombre IN ('Empleado','Coordinador');
