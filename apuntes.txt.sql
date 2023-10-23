A continuación, te presento un temario que podría utilizarse para un curso básico-avanzado de SQL, que abarca desde los conceptos fundamentales hasta técnicas más avanzadas de manipulación y optimización de bases de datos. SQL es un lenguaje de consulta estructurado ampliamente utilizado para administrar y consultar bases de datos relacionales.
https://miro.medium.com/v2/resize:fit:1400/1*Tg-zlEI1c9OfcBmyQ46PCw.png
Nivel Básico:
1. Introducción a las bases de datos y SQL:
	* ¿Qué es una base de datos?
	* Introducción a SQL y su importancia.
		DBMS (Todos e incluyendo al Relacional, no necesariamente es un relacional).
		RDBMS (Los relacionales)
			Cliente (Software el más común/Hardware) - Servidor (Maquina, fierros)
				CLI/Comando: psql
				GUI: pgAdmin
				TOA: SuperSoftware de una empresa.
			Una varias BD de sistema (tablas de sistema/diccionarios de datos db):
				PostgreSQL: postgresql
				SqlServer: model, master, mdb, temp
				Pueden ser metadatos, usuarios, permisos, etc.
		OOBMS (Los orientados a objetos)
		...
		Saturacion es el numero de repeticion de Valores en un dominio.

		Tipos de datos: Primitivos (Codd), Estandar (ISO) y Propio del manejador.
		Primitivos: Caracter, Tiempo, Numero

		SQL2 (1992)
		Caracter: CHAR, VARCHAR, TEXT (limitado, mas de 255 caracteres, no se puede usar funciones de texto [como UPPER, LOWER, buscar])
			CodigoPostal (5 bytes): 09180
				VARCHAR: 5 bytes + 2 bytes --Variable + 2
				CHAR: 5 bytes --Fijo
					Para longitudes fijas: RFC, PLACAS, NUMEROS DE TELEFONOS, CP
					CP que sea un CHAR con un Constraint de Check que sea digito
		Tiempos: DATE, TIME, TIMESTAMP (para tablas historicas, por ejemplo los Diccionarios de Datos del Manejador), DATETIME (ISO [cualquier manejador lo maneja], no usar porque no tiene su RFC [no es estandar])
		Numericos: NUMERIC (usable), DECIMAL (flotante)
			NO USAR: INT, INTERGER, SMALLINT, BIGINT, TINYINT/Bool/Boolean... (Son propios de los Manejadores)

			Enteros: NUMERIC(<enteros>,<decimales>)
				NUMERIC(6,0): -999,999 a +999,999
					edad: NUMERIC(3,0) CONSTRAINT ckAlumnoEdad CHECK (edad BETWEEN 18 AND 40)
			Decimales: NUMERIC(<enteros>,<decimales>)
				NUMERIC(4,2): -99.99 a +99.99
					FLOAT, DECIMAL, MONEY, CURRENCY... (Propios de los Manejadores)
		Todos los datos no Numeros, llevan ''.
	* Tipos de bases de datos relacionales.
		Tabla comparativa entre las versiones de PostgreSQL: https://www.postgresql.org/about/featurematrix/
		Tablas comparativas entre las versiones de SQL Server:
			https://www.microsoft.com/es-mx/sql-server/sql-server-2022-comparison
			https://www.microsoft.com/es-mx/sql-server/sql-server-2019-comparison

2. DQL: Consultas de datos, restricciones (filtrados) y operadores de busqueda, lógicos y relacionales:
	* SELECT, FROM y WHERE.
		Como se escribe:
		SELECT
		FROM
			[WHERE]
				<>!=
				() AND OR
				BETWEEN
				IN
				IS NULL
				LIKE
			[GROUP BY]
				[HAVING]
					[AND|OR]
			[ORDER BY];
			  VS
		Como se ejecuta:
		5.SELECT
		1.FROM
			2.[WHERE]
				2.1.[AND|OR]
			3.[GROUP BY]
				3.1.[HAVING]
					3.1.1.[AND|OR]
			4.[ORDER BY];
	Algebra Relacional es la forma de manipular los datos (conjunto de operaciones), hacia las Relaciones (tablas) y el SELECT.
		SELECT * FROM <tabla>; -- Es la unica que no utiliza el algebra relacional. Porque muestra absolutamente todo.
	* Operadores de Conjuntos; SQL-92:
		* UNIÓN (UNION, ∪) SQL-92: Combina las tuplas (VALORES) en común de ambos dominios.
			UNIÓN	(∪)
				1. El encabezado del resultado siempre es el encabezado de la primer tabla a operar.
					SELECT * FROM cargo
					UNION
					SELECT * FROM departamento;
					idcargo, nombre, iddepartamento, nombre. => idcargo, nombre
				2. Grado y cardinalidad: El numero de atributos/columnas deben ser del mismo grado, de las dos tablas a operar.
					-- Sintaxis
					SELECT [*|atributo,...]
					FROM <tabla>
					UNION
					SELECT [*|atributo,...]
					FROM <tabla>;
					-- Unión simple
					SELECT * FROM cargo
					UNION
					SELECT * FROM departamento;
					Cargo (2): idcargo, nombre.
					Departamento (2): iddepartamento, nombre.
					-- Una unión compuesta
					SELECT * FROM cargo
					UNION
					SELECT idEmpleado, nombre FROM empleado;
					-- Ejemplo
					A = {1,2,3}
					B = {2,3,7,8}
					A U B = {1,2,3,7,8}

					La unión sirve para el balanceo de carga, ya que una tabla puede ser enorme, y para ello se divide en pequeñas tablas.
					-- Elimina valores repetidos (teniendo en cuenta que los valores son toda la tupla/registro/renglon/fila)
					SELECT idcargo
					FROM cargo
					UNION
					SELECT iddepartamento
					FROM departamento;
					-- No elimina valores repetidos, y sirve para la auditoria, para comprobar que sigan existiendo.
					SELECT idcargo
					FROM cargo
					UNION ALL
					SELECT iddepartamento
					FROM departamento;
					CUANTAS operaciones del algebra relacional se ocupan? 3

					SELECT *
					FROM cargo
					UNION
					SELECT *
					FROM empleado; --ERROR:  cada consulta UNION debe tener el mismo número de columnas

					SELECT nombre
					FROM cargo
					UNION
					SELECT porcentaje_comision
					FROM empleado; --ERROR:  los tipos character varying y numeric no son coincidentes en UNION
				3. Los grados correspondientes deben ser del mismo tipo o mapeables. Un "tipo CAST" implicito.
					SELECT nombre
					FROM cargo
					UNION
					SELECT sexo
					FROM empleado;

					SELECT sexo
					FROM empleado
					UNION
					SELECT nombre
					FROM cargo;

					O sea que el sexo que es un texto de 1 caracter (CHAR(1)) y el nombre que es un texto de 255 caracteres (VARCHAR(255)), sexo cabe dentro del nombre. O sea sus valores pueden ser un subconjunto del otro, dentro de la vista generada.
					sexo ⊆ nombre

					SELECT nombre
					FROM cargo
					WHERE nombre NOT LIKE '%a'
					UNION
					SELECT sexo
					FROM empleado;
					CUANTAS operaciones del algebra relacional se ocupan? 4
					CUALES operaciones del algebra relacional se ocupan? PROYECCIÓN, RESTRICCIÓN Y UNIÓN
			UNIÓN	(∪*): Union all does not remove duplicate, to both tables.
					SELECT nombre
					FROM cargo
					UNION ALL
					SELECT sexo
					FROM empleado;


					SELECT sexo
					FROM empleado
					UNION
					SELECT sexo
					FROM empleado;

					SELECT sexo
					FROM empleado
					UNION ALL
					SELECT sexo
					FROM empleado;
		* INTERSECCION (INTERSECT, ∩) SQL-92: Muestra las tuplas (VALORES) que esten en común de ambas tablas (relaciones) a operar.
			INTERSECCION	(∩)
				1. El encabezado de resultado siempre es el encabezado de la primer tabla a operar.
				2. Grado y cardinalidad: El numero de atributos: Deben ser del mismo grado, las dos tablas a operar.
				3. Los grados correspondientes deben ser del mismo tipo o mapeables. Un "tipo CAST" implicito.
					-- Sintaxis
					SELECT [*|atributo,...]
					FROM <tabla>
					INTERSECT
					SELECT [*|atributo,...]
					FROM <tabla>;
					-- Ejemplo
					A = {1,2,3}
					B = {2,3,7,8}
					A ∩ B = {2,3}
					SELECT * FROM cargo
					INTERSECT
					SELECT * FROM departamento;

					SELECT idcargo FROM cargo
					INTERSECT
					SELECT iddepartamento FROM departamento;
			INTERSECCION	(∩*): Intersect all does not remove duplicate, to both tables.
				1. El encabezado del resultado siempre es el encabezado de la primer tabla a operar.
				2. Grado y cardinalidad: El numero de atributos/columnas deben ser del mismo grado, las dos tablas a operar.
				3. Los grados correspondientes deben ser del mismo tipo o mapeables. Un "tipo CAST" implicito.
					-- Sintaxis
					SELECT [*|atributo,...]
					FROM <tabla>
					INTERSECT ALL
					SELECT [*|atributo,...]
					FROM <tabla>;

					-- Ejemplo
					A = {1,2,3}
					B = {2,3,7,8}
					A ∩ B = {2,3}

					SELECT * FROM cargo
					INTERSECT ALL
					SELECT * FROM departamento;

					SELECT * FROM departamento
					INTERSECT
					SELECT * FROM departamento;

					SELECT * FROM departamento
					INTERSECT ALL
					SELECT * FROM departamento;

					SELECT idcargo FROM cargo
					INTERSECT ALL
					SELECT iddepartamento FROM departamento;
					https://www.datasciencemadesimple.com/intersect-and-intersect-all-in-postgresql/
					---------------------

					idcargo	nombre
					1		A
					1		B
					2		C
					2		D

					idepto	nombre
					1		A
					1		E
					2		C
					3		D

					SELECT idcargo FROM cargo
					INTERSECT ALL
					SELECT iddepartamento FROM departamento;
					idcargo -- Con proyección
					1
					1
					2

					SELECT * FROM cargo
					INTERSECT ALL
					SELECT * FROM departamento;
					idcargo	nombre -- Sin proyección
					1		A
					2		C
		* DIFERENCIA (EXCEPT, -) SQL-92: Muestra las tuplas (VALORES) que esten en la primer tabla a operar pero no en la segunda.
			1. El encabezado de resultado siempre es el encabezado de la primer tabla a operar.
			2. Grado y cardinalidad: El numero de atributos/columnas deben ser del mismo grado, las dos tablas a operar.
			3. Los grados correspondientes deben ser del mismo tipo o mapeables. Un "tipo CAST" implicito.
				-- Sintaxis
				SELECT [*|atributo,...]
				FROM <tabla>
				EXCEPT|[MINUS] --El 1ro es estandar SQL2 (92), el 2do no lo es
				SELECT [*|atributo,...]
				FROM <tabla>;

				Casi el 50% de RDBMS utilizan EXCEPT y el casi otro 50% MINUS. xD

				-- Ejemplo
				A = {1,2,3}
				B = {2,3,7,8}
				A - B = {1}
				B - A = {7,8}

				SELECT * FROM cargo
				EXCEPT
				SELECT * FROM departamento;
				/*
					Es como si fuera esto:
					15 - 0 = 15
				*/

				SELECT idcargo FROM cargo
				EXCEPT
				SELECT iddepartamento FROM departamento;

				-- Ejemplo
				A = {1,9,1,2,3}
				B = {2,3,7,8}
				A -* B = {1,9,1}
				A - B = {1,9}
				B - A = {7,8}

				-- EJEMPLO BUENISIMO!!!!!!!!!!!!!!!!!!!
				A = {1,9,1,2,3}
				B = {2,3,7,8,1,10,10,9}
				A - B = {ǿ} --DUDA: si es {ǿ} o es el {1}
					Todo A contiene lo mismo que B.
				A -* B = {ǿ}
					Todo A contiene lo mismo que B.
				B - A = {7,8,10}
					Todo A contiene casi lo mismo que B.
					Pero los elementos que no estan en A, se conservan (de B).
					Y no hay repetición.
				B -* A = {7,8,10,10}
					Todo A contiene casi lo mismo que B.
					Pero los elementos que no estan en A, se conservan (de B).
					Y hay repetición.

				SELECT * FROM cargo
				EXCEPT ALL
				SELECT * FROM departamento;

				SELECT idcargo FROM cargo
				EXCEPT ALL
				SELECT iddepartamento FROM departamento;
		* Ejecicios:
			Mostrar que cargos no han sido asignados a ningún empleado. UNION, INTERSECT e EXCEPT
			SELECT idcargo
			FROM cargo
			EXCEPT
			SELECT idEmpleado
			FROM empleado;

			Mostrar los apellidoS de las mujeres que no sean apellidoS de hombres, considerando que siempre esten en un cargo 1, 3 y 6.
			(SELECT paterno
				FROM empleado
				WHERE sexo = 'M' AND idcargo IN (1,3,6)
				UNION
				SELECT materno
				FROM empleado
				WHERE sexo = 'M' AND idcargo IN (1,3,6))
			EXCEPT
			(SELECT paterno
				FROM empleado
				WHERE sexo = 'H' AND idcargo IN (1,3,6)
				UNION
				SELECT materno
				FROM empleado
				WHERE sexo = 'H' AND idcargo IN (1,3,6));


			Mostrar las direcciones de Mexico que se llamen igual a las direcciones de Peru y el codigo postal sea 10925 o 10930 o 10927.
				CREATE DATABASE proyecto;
				\c proyecto;
				CREATE TABLE factura (
					idFactura numeric(2,0) NOT NULL,
					empresa varchar(45) NULL,
					nombre varchar(45) NOT NULL,
					dniRuc varchar(45) NOT NULL,
					direccion varchar(45) NOT NULL,
					direccion2 varchar(45) NULL,
					codigoPostal numeric(5,0) NOT NULL,
					ciudad varchar(45) NOT NULL,
					pais varchar(45) NOT NULL,
					infoAdicional varchar(45) NULL,
					telefonoFijo varchar(45) NOT NULL,
					telefonoMovil varchar(45) NOT NULL,
					CONSTRAINT pkFactura PRIMARY KEY (idFactura)
				);
				(SELECT direccion
				FROM factura
				WHERE pais = 'Mexico' AND codigoPostal IN (10925, 10930, 10927)
				UNION
				SELECT direccion2
				FROM factura
				WHERE pais = 'Mexico' AND codigoPostal IN (10925, 10930, 10927))
				INTERSECT
				(SELECT direccion
				FROM factura
				WHERE pais = 'Peru' AND codigoPostal IN (10925, 10930, 10927)
				UNION
				SELECT direccion2
				FROM factura
				WHERE pais = 'Peru' AND codigoPostal IN (10925, 10930, 10927));
		* PRODUCTO CARTESIANO (CROSS JOIN, Χ) SQL-92: El resultado de tomar la primer tupla de la primer relación y combinarla con todos y cada una de las tuplas de la segunda relación, continuando con la segunda tupla y asi sucesivamente hasta terminar con la primer tupla.
			El CROSS JOIN, NO ES un JOIN.
			1. El encabezado es igual a la suma del encabezado de la primer relación con la segunda tabla.
				idcargo nombre
				iddepartamento nombre
				===================
				idcargo nombre iddepartamento nombre
			2. El grado (total atributos) del resultado es igual a la suma de grados de ambas tablas.
				R(n) = 2 + 2 = 4

				idcargo nombre
				iddepartamento nombre
				===================
				idcargo nombre iddepartamento nombre
			3. La cardinalidad (total tuplas) del resultado es igual al producto de las cardinalidades de ambas tablas.
				R(n) = 6 * 6 = 36

				R1
				1
				2
				3

				R2
				1
				2

				CROSS JOIN
				1
				2
				3
				4
				5
				6

			SQL 92 - Cood
			SELECT *
			FROM <tablaA> CROSS JOIN <tablaB> [...];

			ISO
			SELECT *
			FROM <tablaA>, <tablaB> [...];

			SELECT sueldo -- MALO, porque consulta en los Diccionarios de datos
			FROM departamento CROSS JOIN empleado;

			SELECT empleado.sueldo -- BUENO, debe tener bien definido el contexto del atributo
			FROM departamento CROSS JOIN empleado;

				SELECT *
				FROM cargo CROSS JOIN departamento;

				SELECT *
				FROM cargo CROSS JOIN empleado;

				SELECT COUNT(*)
				FROM cargo CROSS JOIN departamento
					CROSS JOIN empleado;

				SELECT *
				FROM cargo CROSS JOIN departamento
					CROSS JOIN empleado;
	* Operadores Relacionales; SQL-89 y SQL-92:
		* RESTRICCIÓN (WHERE, HAVING, σ)
			La Restriccion, es un operador del algebra relacional: WHERE y HAVING
			* Operadores de busqueda 89 (SQL1) (<, >, >=, <=, =, !=).
				>	Numeros y Tiempos
				<	Numeros y Tiempos
				>=	Numeros y Tiempos
				<=	Numeros y Tiempos
				=	Todos tipos datos
				!=	Todos tipos datos
				(<>), NO estandar

				SELECT * FROM empleado WHERE contratacion > '2000-01-01';
				SELECT * FROM empleado WHERE edad > 18;
				SELECT * FROM empleado WHERE tipoSangre = '+B' ;
				SELECT * FROM empleado WHERE tipoSangre != '+0' ;
			* Operadores lógicos 89 (SQL1) (AND, OR, NOT).
				()
				AND
				OR

				Matemáticas:
				+ -
				x /
				^ raiz
				derivada integral
				()
				----------
				X+3/2(5*5) = X+3/2(25) = X+3/2(25) =  X+3/2*25 =
					X+1.5(25) = X+37.5

				WHERE a=1 AND b=2 OR c=3 --89, v1
					WHERE true OR noImporta
					WHERE false OR true
					es igual a
				WHERE (a=1 AND b=2) OR c=3 --89, v1

				WHERE a=1 OR b=2 AND c=3
					es igual a
				WHERE a=1 OR (b=2 AND c=3) --Mucha crema a los tacos xD

				WHERE (a=1 OR b=2) AND c=3

				WHERE (a=1 OR b=2) AND c=3 OR (d=4 OR (e=5 OR f=6)) AND g=3;

				-- Mostrar el nombre y la edad de los empleados mujeres que no sean del departamento 4 o los empleados hombres que ganen 20,000 o sean del cargo 3.
				SELECT nombre, edad
				FROM empleado
					WHERE sexo = 'M' AND iddepartamento != 4
						OR sexo = 'H'
						AND (sueldo = 20000 OR idcargo = 3);
				------------------
				SELECT nombre, edad FROM empleado WHERE sexo = 'M' AND iddepartamento != 4 OR sexo = 'H' AND (sueldo = 20000 OR idcargo = 3);
				-- Mostrar a los empleados que siendo del cargo mayor a 3 ESTEN o por porcentaje de comision 3 o con sueldo menor a 15,000. Independiente cualquier empleado llamado Juan que sea González.
				SELECT *
				FROM empleado
				WHERE idcargo > 3
					AND (porcentaje_comision = 3 OR sueldo < 15000)
					OR nombre = 'Juan' AND paterno = 'González';
				------------------
				SELECT * FROM empleado WHERE idcargo > 3 AND (porcentaje_comision = 3 OR sueldo < 15000) OR nombre = 'Juan' AND paterno = 'González';

				Traza de consulta: Es la forma en que se ejecuta (con recursos Cpu y Ram), mediante el manejador, la consulta de manera mas efectiva.
				Ruta critica: Tiempo (no es un recurso ya que no se recupera, es un costo), recursos y costo.

				* Cláusulas GROUP BY, Funciones de agregación (SUM, COUNT, AVG, etc.) y HAVING
					Saturacion es el numero de repeticion de Valores
						Alta: Genero
						Bajo: Id, UNIQUE
					El GROUP BY es valido para la alta Saturacion (muchos valores diferentes).
					No es valido si en el SELECT ya solo devuelve un solo dato o muchos valores iguales.
					No es valido si no se hacen operaciones en el SELECT:
						SELECT sexo FROM empleado GROUP BY sexo;
						SELECT DISTINCT sexo FROM empleado; --Sacar los grupos de valores diferentes de un dominio. O devuelve valores distintos.

					Mostrar el promedio de los sueldos: SELECT AVG(sueldo) AS promedioSueldo FROM empleado GROUP BY iddepartamento;
					Mostrar POR departamento el promedio del sueldo: SELECT iddepartamento, AVG(sueldo) AS promedioSueldo FROM empleado GROUP BY iddepartamento;
					Mostrar POR edad el sueldo mas grande: SELECT edad, MAX(sueldo) AS maxSueldo FROM empleado GROUP BY edad;
					Mostrar POR sexo y edad el sueldo mas grande: SELECT edad, sexo, MAX(sueldo) AS maxSueldo FROM empleado GROUP BY edad, sexo;
					Mostrar POR departamento y sexo el sueldo mas grande: SELECT iddepartamento, sexo, MAX(sueldo) AS maxSueldo FROM empleado GROUP BY iddepartamento, sexo;
						No hay un grupo de mujeres que no tengan un departamento.
					Cuantos hombres y mujeres hay por departamento: SELECT iddepartamento, sexo, MAX(sueldo) AS maxSueldo, COUNT(*) AS contenoGeneroDepartamento FROM empleado GROUP BY iddepartamento, sexo;
					Los vendedores (por genero) que tienen departamento: SELECT iddepartamento, sexo, MAX(sueldo) AS maxSueldo, COUNT(*) AS contenoGeneroDepartamento, COUNT(porcentaje_comision) AS noVendedores FROM empleado GROUP BY iddepartamento, sexo;
					Regla: COUNT debe aceptar valores nulos para que valga la pena contabilizarlo si no se contabiliza con *.
					SELECT iddepartamento, sexo, AVG(sueldo) AS promedioSueldo, COUNT(*) AS contenoGeneroDepartamento, COUNT(porcentaje_comision) AS noVendedores FROM empleado WHERE paterno LIKE '%o' AND materno LIKE '%o' GROUP BY iddepartamento, sexo;

					5. SELECT iddepartamento,
						sexo,
						AVG(sueldo) AS promedioSueldo,
						COUNT(*) AS contenoGeneroDepartamento,
						COUNT(porcentaje_comision) AS noVendedores
					1. FROM empleado
					2. WHERE paterno LIKE '%o'
					3. AND materno LIKE '%o'
					4. GROUP BY iddepartamento, sexo;

					Mostrar el sueldo mas grande y el ultimo contratado POR cargo y edad de los empleados mujeres que no sean vendedoras.
						SELECT MAX(sueldo),
							MIN(contratacion),
							idcargo,
							edad
						FROM empleado
						WHERE porcentaje_comision IS NULL
							AND sexo = 'M'
						GROUP BY idcargo,
							edad;
					Mostrar POR apellidos, cuántos empleados hay que tengan un cargo del 1 al 3 o un sueldo mayor a 15,000:
						SELECT paterno,
							materno,
							COUNT(*) AS conteoEmpleados
						FROM empleado
						WHERE idcargo BETWEEN 1 AND 3
							OR sueldo > 15000
						GROUP BY paterno, materno;
						-- Pero en este caso como paterno y materno tienen valores diferentes Y como la restricción de sueldo complementa la restricción de cargo:
						SELECT paterno, materno FROM empleado;

					funcionesDeAgregadoOAgrupado + => 1
						No hacen agrupamiento, SOLO un RESUMEN del atribuo.
						Campo/atributo calculado no tiene nombre, para ello se le asigna un Alias.
					COUNT	Todos tipos datos
						Cuantos hay de un grupo, no incluyen los nulos.
						Cuantos empleados hay: SELECT COUNT(*) FROM empleado;
						Cuantos paternos hay: SELECT COUNT(paterno) FROM empleado;
						Cuantos porcentaje_comision hay: SELECT COUNT(porcentaje_comision) FROM empleado;
						Cuantos iddepartamento hay: SELECT COUNT(iddepartamento) FROM empleado;
					MAX		Todos tipos datos
						Numéros		mayor
						Fechas		--- hoy +++
						Caracter	Z o código ascii grande
							SELECT MAX(edad), MAX(contratacion), MAX(nombre) FROM empleado;
							ERROR, No estandar: SELECT MAX(edad) maximaEdad FROM empleado;
							ERROR, por el espacio, baja rendimiento: SELECT MAX(edad) AS "Maxima Edad" FROM empleado;
							VALIDO: SELECT MAX(edad) AS maximaEdad FROM empleado;
							VALIDO, pero el S.O. puede no tener bien configurado el teclado: SELECT MAX(edad) AS maxima_edad FROM empleado;
					MIN		Todos tipos datos
						Numéros		menor
						Fechas		--- hoy +++
						Caracter	a o código ascii pequeño
							SELECT MIN(edad), MIN(contratacion), MIN(nombre) FROM empleado;
							ERROR, No estandar: SELECT MIN(edad) maximaEdad FROM empleado;
							ERROR, por el espacio, baja rendimiento: SELECT MIN(edad) AS "Maxima Edad" FROM empleado;
							VALIDO: SELECT MIN(edad) AS maximaEdad FROM empleado;
							VALIDO, pero el S.O. puede no tener bien configurado el teclado: SELECT MIN(edad) AS maxima_edad FROM empleado;
					AVG		Numeros
						SELECT AVG(sueldo) AS promedioSueldo FROM empleado;
					SUM		Numeros
						SELECT SUM(sueldo) AS sumaSueldo FROM empleado;

					HAVING
						Restricción de agrupamiento/agregado:
							Que la ultima fecha de contratacion no sea en el 2000:
								HAVING MAX(contratacion) NOT BETWEEN '01-01-2000' AND '31-12-2000'
						Restricción simple (de la tabla):
							Que la fecha de contratacion no sea en el 2000:
								WHERE contratacion NOT BETWEEN '01-01-2000' AND '31-12-2000'

						HAVING MAX(edad) != 50
						WHERE edad != 50
						--
						HAVING AVG(sueldo) BETWEEN
						--
						HAVING MAX(nombre) IN ('Valencia', 'Toño')
						WHERE nombre IN ('Valencia', 'Toño')

						SELECT sexo,
							COUNT(*) AS conteoEmpleados
						FROM empleado
						WHERE MAX(contratacion) != '02-02-2000'
						GROUP BY sexo; -- no se permiten funciones de agregación en WHERE

						SELECT sexo,
							COUNT(*) AS conteoEmpleados
						FROM empleado
						GROUP BY sexo
						HAVING contratacion != '02-02-2000'; -- la columna «empleado.contratacion» debe aparecer en la cláusula GROUP BY o ser usada en una función de agregación

						Mostrar POR cargo el sueldo más grande de los que fueron contratados al ÚLTIMO en un año diferente de 2000 y que su edad promedio sea arriba de 35, contando que si es mujer tenga un cargo diferente del 1.
						SELECT idcargo, MAX(sueldo)
						FROM empleado
						WHERE sexo = 'M'
							AND idcargo != 1
						GROUP BY idcargo
							HAVING AVG(edad) > 35
							AND MAX(contratacion) NOT BETWEEN '01-01-2000' AND '31-12-2000';

						Si es hombre que no tenga una 'o' en su nombre y que su sueldo sea diferente de 50,500. Si es mujer que gane menos de 20,000 siendo del departamento 1, 3 y 5. Independientemente todos su suma de sueldos debe ser 30,000 o 45,000 o 45,500 o mayor a 60,000. Mostrando POR edad cuántos hay con departamento y su ÚLTIMA fecha de contratacion.
						SELECT edad,
							COUNT(iddepartamento) AS conteoDepartamento,
							MIN(contratacion) AS ultimaFechaContratacion
						FROM empleado
						WHERE sexo = 'H'
						AND nombre NOT LIKE '%o%'
						AND sueldo != 50500
						OR sexo = 'M'
						AND sueldo < 20000
						AND iddepartamento IN (1, 3, 5)
						GROUP BY edad
							HAVING SUM(sueldo) IN (30000, 45000, 45500)
							OR SUM(sueldo) > 60000;
				* Cláusulas ORDER BY.
					ORDER BY <atributo> [ASC|DESC][, ...] -- Solo sirve para verse bonito

					SELECT * --Esto NO es Proyección
					FROM empleado
					ORDER BY 2 DESC, 1 ASC; -- Mal uso

					SELECT *
					FROM empleado
					ORDER BY nombre DESC, idempleado ASC; -- Buen uso

					SELECT *
					FROM empleado
					ORDER BY edad; -- Mal uso

					SELECT *
					FROM empleado
					ORDER BY edad ASC; -- Buen uso

					SELECT edad, sueldo, nombre --Esto SI es Proyección
					FROM empleado
					ORDER BY nombre DESC, idempleado ASC;
			* Operadores relacionales (SQL-89 + SQL-92) (BETWEEN, IN, IS NULL, LIKE).
				BETWEEN   Numéros y Tiempos
					SELECT *
					FROM empleado
						WHERE sueldo >= 15000
							AND sueldo <= 35000;
					Son lo mismo en resultado pero el rendimiento es mayor el de abajo.
					SELECT *
					FROM empleado
						WHERE sueldo BETWEEN 15000
							AND 35000;
					Los empleados nacidos en el segundo siglo despues de Cristo:
					SELECT contratacion
					FROM empleado
						WHERE contratacion BETWEEN '2000-01-01'
							AND '3000-01-01';
					El complemento del anterior:
					SELECT contratacion
					FROM empleado
						WHERE contratacion NOT BETWEEN '2000-01-01'
							AND '3000-01-01';
				IN        Todos tipos datos
					SELECT *
					FROM empleado
						WHERE nombre = 'Liliana'
						OR nombre = 'Oscar'
						OR nombre = 'Arturo';
					Son lo mismo en resultado pero el rendimiento es mayor el de abajo.
					SELECT *
					FROM empleado
						WHERE nombre IN ('Liliana', 'Oscar', 'Arturo');
					El complemento del anterior:
					SELECT *
					FROM empleado
						WHERE nombre NOT IN ('Liliana', 'Oscar', 'Arturo');

					Numero:
					SELECT *
					FROM empleado
						WHERE edad NOT IN (18,20,35);

					Fecha/tiempo:
					SELECT *
					FROM empleado
						WHERE contratacion IN ('1989-12-01','1989-04-30','1994-03-20');
				IS NULL   Todos tipos datos
					SELECT *
					FROM empleado
						WHERE porcentaje_comision = NULL;
					No son lo mismo, ya que al mostrar el conjunto vacio, no se muestra nada, precisamente.
					SELECT *
					FROM empleado
						WHERE porcentaje_comision IS NULL;
					El complemento del anterior:
					SELECT *
					FROM empleado
						WHERE porcentaje_comision IS NOT NULL;
				LIKE      Caracter --Patrones de SQL, NO REGEX (Expresiones Regulares)
					SELECT *
					FROM empleado
						WHERE nombre = 'Ana'; -- 89
					No son lo mismo, ya que el LIKE es como un Regex, pero funciona diferente, otro tipo de patrones.
					SELECT *
					FROM empleado
						WHERE nombre LIKE '%na%'; -- 92
						_	1 caracter obligatorio
							SELECT *
							FROM empleado
								WHERE nombre LIKE '__t___';
						%	cualquier posible(s) caracter(es), o sea de 0 a n cantidad
							SELECT * FROM empleado WHERE nombre LIKE '__t%';
						[]	Rango
						^	Complemento del rango del []


					Oracle y PostgreSQL funcionan con Regex (cuales cambian entre si) y depreca los corchetes: ^.*(r|t)..$
						SELECT *
						FROM empleado
							WHERE nombre LIKE '__[t,T]___'; --La 't' o la 'T'
						SELECT *
						FROM empleado
							WHERE nombre LIKE '__t___' OR nombre LIKE '__T___';

					SELECT * FROM empleado WHERE nombre LIKE 'A%a';
					Entre el inicio y el final, sea 'a':
					SELECT * FROM empleado WHERE nombre LIKE '_%a%_';

					Nombre que antepenultima letra en r o en t.
						SELECT * FROM empleado WHERE nombre LIKE '%r__' OR nombre LIKE '%t__';
						Oracle y PostgreSQL funcionan con Regex (cuales cambian entre si) y depreca los corchetes: ^.*(r|t)..$
							SELECT * FROM empleado WHERE nombre LIKE '%[r,t]__'; -- 'r' o 't'
					Nombre que antepenultima letra sea de la 'c' a la 'l'.
						SELECT * FROM empleado WHERE nombre LIKE '%[c-l]__'; -- De la 'c' a la 'l'. O sea 'c' o 'd' o 'e' o 'f' ... 'l'
					'[A-L]%_a%[o,a,r,s]'
						VALE:
							A lond ra     s
							L il   ia n   a
							A le   ja ndr a
							H o    ra ci  o
						NO VALE: Lauisana
							Para que fuera esta, tendria que ser la siguiente: '[A-L]_%_a%[o,a,r,s]'
								Probar en SqlServer:
								DECLARE @nombre VARCHAR(8)
								SET @nombre='Lauisana'
								SELECT @nombre WHERE @nombre LIKE '[A-L]_%_a%[o,a,r,s]';
					Cualquier parte del nombre completo donde termine con vocal.
						SELECT * FROM empleado WHERE nombre LIKE '%_[a,e,i,o,u]' OR paterno LIKE '%_[a,e,i,o,u]' OR materno LIKE '%_[a,e,i,o,u]';

				Mostrar/dame/devuelve(me)/regresame el nombre,edad,sueldo del empleado
				Que el empleado tenga un departamento.
				Que los apellidoS sean Gonzalez, Reyes o Sanchez.
				Ademas que el nombre de las mujeres no termine en 'a' y no tengan porcentaje_comision
				O el nombre de los hombres no termine en 'o' y su sueldo sea entre 15 mil y 30 mil.
				SELECT nombre,edad,sueldo
				FROM empleado
				WHERE iddepartamento IS NOT NULL
					AND paterno IN ('Gonzalez', 'Reyes', 'Sanchez')
					AND materno IN ('Gonzalez', 'Reyes', 'Sanchez')
					AND (sexo = 'M'
						AND nombre NOT LIKE '%_a'
						AND porcentaje_comision IS NULL
						OR sexo = 'H'
						AND nombre NOT LIKE '%_o'
						AND sueldo BETWEEN 15000 AND 30000
					);

			Todos los WHERE son Restricciones
			Pero no todas las Restricciones son WHERE.
			El complemento de WHERE es el HAVING, que también es una restricción.
		* PROYECCIÓN (SELECT, π, Pi): Operación que altera el grado o el orden del grado de una relación.
			SELECT iddepartamento, sueldo
			FROM empleado;

			SELECT nombre, idcargo
			FROM cargo;
		* JOIN (JOIN, ⋈) SQL-92: Operación compuesta: (PRODUCTO CARTESIANO + RESTRICCIÓN) que junta las tuplas de dos relaciones mediante el atributo en común (que es del mismo tipo de dato o mapeable, entre dos tablas y que las referencía).
			* Operación compuesta: PRODUCTO CARTESIANO + RESTRICCIÓN
			* Restricción: Atributo común idóneo/referencia
			* Referencia: Trigger de integridad referencial y los CONSTRAINT Pk y Fk
				Trigger es un guardian de una tabla, espera a un DML (INSERT, UPDATE, DELETE)
			* Atributo común: Atributo con mismo tipo de dato o mapeable

			SELECT *
			FROM <tablaA> INNER JOIN <tablaB>
				ON (<tablaA>.<atributo> = <tablaB>.<atributo>);

			cargo			departamento
			cargo.idcargo	departamento.iddepartamento
			cargo.nombre	departamento.nombre

			El '.' es el operador de extensión/miembro/añadido.

			Atributo común
				cargo.idcargo = departamento.iddepartamento
				cargo.nombre = departamento.nombre

			Atributo común idóneo (refencia)
				cargo.idcargo = departamento.iddepartamento

			SELECT *
			FROM cargo INNER JOIN departamento
				ON(cargo.idcargo = departamento.iddepartamento); --Si ejecuta, si es join, no deberia hacerse
			SELECT *
			FROM cargo INNER JOIN departamento
				ON(cargo.nombre = departamento.nombre); --Si ejecuta, si es join, no deberia hacerse, ademas porque no tiene referencia

			SELECT *
			FROM cargo CROSS JOIN departamento;


			SELECT empleado.nombre, cargo.nombre, departamento.nombre
			FROM departamento INNER JOIN empleado
				ON(departamento.iddepartamento = empleado.iddepartamento)
					INNER JOIN cargo ON (cargo.idcargo = empleado.idcargo); --Siempre que haya un JOIN, se tiene que partir desde la que tiene las referencias hacias las otras tablas directas.
			departamento <-> empleado <-> cargo

			SELECT COUNT(*)
			FROM departamento AS d INNER JOIN empleado AS e
				ON(d.iddepartamento = e.iddepartamento)
					INNER JOIN cargo AS c ON (c.idcargo = e.idcargo); --Si o si tiene que calcular sus 684 registros Y con las Restricciones, se reduce a simplemente 17 registros.

			SELECT e.nombre, c.*, d.nombre
			FROM departamento AS d INNER JOIN empleado AS e
				ON(d.iddepartamento = e.iddepartamento)
					INNER JOIN cargo AS c ON (c.idcargo = e.idcargo);

			Regla para los Aliases:
			Al nombrarlos, siempre utilizar como maximo, 3 letras.
			Si no, simplemente utilizar su nombre original.

			Diagrama de Interrelaciones
				A <-> B <-> C    =>    (A,B,C) o (C,B,A)
				  <-> D <-> E    =>    (A,D,E) o (E,D,A)
				        <-> F    =>    (A,D,F) o (F,D,A)
				(A,C) --No hacer esto, porque necesito a B, para interrelacionarlos.
				Si quiero sacar los atributos que esten relacionados entre varias tablas.
				A <-> B <-> C
				A <-> B = X
				      X <-> C

			El JOIN idóneo/directo: Donde hay una referencia
				JOIN: (B,C)
				JOIN: (A,B)
				JOIN: (C,E)
				JOIN: (D,F)
			El JOIN NO idóneo/indirecto: Donde NO hay una referencia, por eso MODIFICARLO a directo
				JOIN: (C,E) => (C,B,A,D,E)
				JOIN: (E,B) => (E,D,A,B)
				JOIN: (F,B) => (F,D,A,B)
				JOIN: (A,F)   =[idóneo/Válido]=> (A,D,F)
				JOIN: (C,A,F) =[idóneo/Válido]=> (C,B,A,D,F)

			JOIN = Producto Cartesiano (CROSS JOIN) + Restricción = INNER JOIN
			CROSS JOIN: Tomar todos los valores del registro (renglon) y combinarlos con los valores de la otra tabla.
			Restricción: Del resultado anterior, filtrar aquellos donde el valor de un atributo de la primera tabla, es igual al valor del atributo de la otra tabla.

			Tipos de JOIN:
				Joins Internos: Que el atributo en común sea el mismo valor
					INNER JOIN
					SELF JOIN
					NATURAL JOIN
				Joins Externos (INNER + extra) --Darle prioridad (rescatar los valores que fueron expulsados por la restricción) a la izquierda/derecha/ambos
					RIGHT OUTER JOIN --Estandar 92
					RIGHT JOIN --No estandar
					LEFT OUTER JOIN --Estandar 92
					LEFT JOIN --No estandar
					FULL OUTER JOIN --Estandar ISO
					FULL: LEFT UNION ALL RIGHT (LEFT + RIGHT) --Estandar 92
				https://donnierock.files.wordpress.com/2014/03/udqpd.jpg

				                      FULL OUTER JOIN                                                  INNER JOIN                                                 LEFT (OUTER) JOIN
				        MMMMMMWKOkkkkkkkOKNMMMMMMN0OkkkkkkkOXWMMMMMM                  MMMMMMWKOkkkkkkkOKNMMMMMMN0OkkkkkkkOXWMMMMMM                  MMMMMMWKOkkkkkkkOKNMMMMMMN0OkkkkkkkOXWMMMMMM        
				      MMMMXkxxdxOKKXXXKKOxdxxxxxxdkOKXXXXK0OxxxxONMMMM              MMM                 dxxxxxxd                 MMM              MMMMXkxxdxOKKXXXKKOxdxxxxxxd                 MMM      
				     MMXkxx0XXXXXXXXXXXXXKkdodxxk0KXXXXXXXXXXXXKOxxOWMM            MM                  Kkdodxxk0K                  MM            MMXkxx0XXXXXXXXXXXXXKkdodxxk0K                  MM     
				    MNddKXXXXXXXXXXXXXXKxld00000OxxOXXXXXXXXXXXXXXXOoxWM          MM                  xld00000OxxO                  MM          MNddKXXXXXXXXXXXXXXKxld00000OxxO                  MM    
				   Wko0XXXXXXXXXXXXXXXOld000000000OxkKXXXXXXXXXXXXXXXOoOM        MM                  ld000000000Oxk                  MM        Wko0XXXXXXXXXXXXXXXOld000000000Oxk                  MM   
				  WoxXXXXXXXXXXXXXXXX0cO000000000000kdKXXXXXXXXXXXXXXXKdxM      MM                  cO000000000000kd                  MM      WoxXXXXXXXXXXXXXXXX0cO000000000000kd                  MM  
				 MddXXXXXXXXXXXXXXXXKcx00000000000000xxXXXXXXXXXXXXXXXXKlkM    MM                  cx00000000000000xx                  MM    MddXXXXXXXXXXXXXXXXKcx00000000000000xx                  MM 
				MKcKXXXXXXXXAXXXXXXXdc0000000000000000o0XXXXX┌───┐XXXXXXKcWM  MM          A      Xdc0000000000000000o0     ┌───┐        MM  MKcKXXXXXXXXAXXXXXXXdc0000000000000000o0     ┌───┐        MM
				MdoXXXXXXXX/ \KXXXXXcd0000000000000000xxXXXXX│   │XXXXXXXc0M  MM         / \     Xcd0000000000000000xx     │   │        MM  MdoXXXXXXXX/ \KXXXXXcd0000000000000000xx     │   │        MM
				ModXXXXXXX/   \XXXXX:x0000000000000000xdXXXXX├───┤XXXXXXXlOM  MM        /   \    X:x0000000000000000xd     ├───┤        MM  ModXXXXXXX/   \XXXXX:x0000000000000000xd     ├───┤        MM
				MOlXXXXXX/     \XXXXlo0000000000000000dkXXXXX│   │XXXXXXXcXM  MM       /     \   Xlo0000000000000000dk     │   │        MM  MOlXXXXXX/     \XXXXlo0000000000000000dk     │   │        MM
				 mlOXXXX/       \XXX0:O00000000000000OdKXXXXX└───┘XXXXXXkoM    MM     /       \  X0:O00000000000000OdK     └───┘       MM    mlOXXXX/       \XXX0:O00000000000000OdK     └───┘       MM 
				  Xc0XXXXXXXXXXXXXXXXxl0000000000000Oo0XXXXXXXXXXXXXXXXOcN      MM                 xl0000000000000Oo                  MM      Xc0XXXXXXXXXXXXXXXXxl0000000000000Oo                  MM  
				   XlOXXXXXXXXXXXXXXXXdlO0000000000Od0XXXXXXXXXXXXXXXXxlN        MM                 dlO0000000000O                   MM        XlOXXXXXXXXXXXXXXXXdlO0000000000O                   MM   
				    Wxd0XXXXXXXXXXXXXXXkldO000000Oxx0XXXXXXXXXXXXXXKkdkW          MM                 kldO000000Ox                   MM          Wxd0XXXXXXXXXXXXXXXkldO000000Ox                   MM    
				     MNxdOKXXXXXXXXXXXXXKklok00kxx0XXXXXXXXXXXXXXKkdkWM            MM                 Kklok00kxK                   MM            MNxdOKXXXXXXXXXXXXXKklok00kxK                   MM     
				      MMWOkxxkKXXXXXXXXXXXKx:lllOKXXXXXXXXXXK0kxxk0WMM              MM                 XKx::xKX                   MM              MMWOkxxkKXXXXXXXXXXXKx::xKX                   MM      
				       MMMMMW0kkkxxxxxxxkkkONMMXOkkkxxxxxxxkkkKWMMMMM                MMMMMW0kkkxxxxxxxkkkONMMXOkkkxxxxxxxkkkKWMMMMM                MMMMMW0kkkxxxxxxxkkkONMMXOkkkxxxxxxxkkkKWMMMMM       

			El CROSS JOIN solo es un PRODUCTO CARTESIANO, NO TIENE RESTRICCIÓN.

			Los 2 estandares del JOIN
			JOIN con SQL2 (92) --Eficiente
				SELECT <atributo>
				FROM <tablaA> INNER JOIN <tablaB>
					ON (<tablaA>.<atributo> = <tablaB>.<atributo>);
			JOIN con ISO --Muy ineficiente, o tener muchos recursos o herramientas graficas (porque las hacen automaticamente)
				SELECT <atributo>
				FROM <tablaA>, <tablaB>
				WHERE <tablaA>.<atributo> = <tablaB>.<atributo>;

			Regla de ORO:
				Programación: Entre menos código mejor.
				SQL: Entre más código mejor, porque le doy al manejador más información/contexto, y no tendrá que deducir (consultar en las tablas del sistema), tomarse su tiempo, etc. Y por lo tanto será mucho más rápida la consulta.

			SELECT *
			FROM empleado AS e INNER JOIN cargo AS c
				ON(e.idCargo = c.idCargo);

			SELECT *
			FROM empleado AS e INNER JOIN departamento AS d
				ON(e.iddepartamento = d.iddepartamento);

			SELECT *
			FROM empleado AS e RIGHT OUTER JOIN departamento AS d
				ON(e.iddepartamento = d.iddepartamento);

			Esta forma no es estandar SQL-92:
				SELECT *
				FROM empleado AS e FULL OUTER JOIN departamento AS d
					ON(e.iddepartamento = d.iddepartamento);
			En cambio, la forma estandar SQL-92 es esta:
				SELECT *
				FROM empleado
				LEFT OUTER JOIN departamento
					ON (empleado.iddepartamento = departamento.iddepartamento)
				UNION ALL
				SELECT *
				FROM empleado
				RIGHT OUTER JOIN departamento
					ON (empleado.iddepartamento = departamento.iddepartamento)
				WHERE empleado.iddepartamento IS NULL OR departamento.iddepartamento IS NULL;
			Esta consulta combina los resultados de un LEFT OUTER JOIN (que devuelve todos los registros de la tabla izquierda y los coincidentes de la tabla derecha) y un RIGHT OUTER JOIN (que hace lo opuesto: todos los registros de la tabla derecha y los coincidentes de la tabla izquierda). La cláusula UNION ALL combina los resultados, permitiendo duplicados.
			La parte WHERE empleado.iddepartamento IS NULL OR departamento.iddepartamento IS NULL asegura que solo se incluyan las filas que no tienen coincidencias en ambas tablas.
			Por lo tanto, en SQL-92, para realizar un "FULL OUTER JOIN", se requiere esta construcción más compleja en lugar de una sintaxis directa. Esto se debe a que el estándar SQL-92 no incluye el "FULL OUTER JOIN" como una operación independiente.
			Cabe destacar que en versiones más recientes de SQL y en muchos sistemas de gestión de bases de datos modernos, el FULL OUTER JOIN se ha convertido en una característica común y está soportado directamente en la sintaxis. Sin embargo, es posible encontrar sistemas o versiones que aún requieran el uso de la combinación LEFT JOIN y RIGHT JOIN con UNION ALL.

			Mostrar a las mujeres que no teniendo departamento y todos los departamentos solo si ganan más de 25,000.
			SELECT *
			FROM empleado AS e FULL OUTER JOIN departamento
				ON(e.idDepartamento = departamento.idDepartamento)
			WHERE e.sexo = 'M'
			AND e.sueldo > 25000
			AND e.iddepartamento IS NULL
			OR e.sexo IS NULL;

			Mostrar el nombre del cargo y cuántos empleados mujeres hay por ese cargo, que su edad promedio esté entre 15 y 35, ordenando de manera descendente por el nombre del cargo el resultado.
			SELECT c.nombre, COUNT(*) AS totalEmpleadosMujeres
			FROM cargo AS c INNER JOIN empleado AS e
				ON (c.idCargo=e.idCargo)
			WHERE e.sexo = 'M'
			GROUP BY c.nombre
				HAVING AVG(e.edad) BETWEEN 15 AND 35
			ORDER BY c.nombre DESC;

			7+5+6 => 12+6 = 18
			A+B+C
			Incorrecto: A JOIN C JOIN B
			Correcto:
				A JOIN B JOIN C
				C JOIN B JOIN A
				B JOIN A JOIN C --Porque "B JOIN A" ya tiene a "B", entonces se puede con "C"
				B JOIN C JOIN A --Porque "B JOIN C" ya tiene a "B", entonces se puede con "A"

			A <-> B <-> C
			  <-> D <-> E
			        <-> F

			SELECT *
			FROM A INNER JOIN B
				ON(A.idA = B.idA)
					INNER JOIN C
					ON(B.idB = C.idB)
						INNER JOIN D
							ON(A.idA = D.idA);

			SELECT *
			FROM A INNER JOIN D
				ON(A.idA = D.idA);

			SELECT *
			FROM A INNER JOIN B
				ON(A.idA = B.idA)
					INNER JOIN C
					ON(B.idB = C.idB)
						INNER JOIN D
							ON(A.idA = D.idA)
								INNER JOIN F
									ON(D.idD = F.idD);

			SELECT *
			FROM A INNER JOIN D
				ON(A.idA = D.idA)
					INNER JOIN F
						ON(D.idD = F.idD);

			Reglas de los JOIN externos:
				1. Relevancia a la tabla con prioridad (desde el JOIN)
				2. Solo puedo hacer busquedas, proyecciones y restricciones sobre la tabla de prioridad
				3. Cuidar/revisar que las restricciones (WHERE, HAVING) de los atributos tengan que ver con la prioridad que se establecio (de la relación con prioridad), sino es un INNER JOIN.

			Las diferencias entre INNER JOIN y los tipos de OUTER JOIN (LEFT, RIGHT y FULL) se relacionan con cómo se combinan las filas de las tablas en la consulta JOIN.
				1. INNER JOIN: Un INNER JOIN devuelve únicamente las filas que tienen una correspondencia en ambas tablas que se están uniendo. Solo las filas que cumplen la condición de unión se incluyen en el resultado final. Si no hay una correspondencia entre las tablas, las filas no se mostrarán en el resultado.
				2. LEFT OUTER JOIN (también conocido como LEFT JOIN): Un LEFT JOIN devuelve todas las filas de la tabla izquierda (la primera tabla mencionada en la cláusula JOIN) y las filas coincidentes de la tabla derecha (la segunda tabla mencionada). Si no hay una correspondencia, se utilizan valores NULL para las columnas de la tabla derecha en el resultado.
				3. RIGHT OUTER JOIN (también conocido como RIGHT JOIN): Un RIGHT JOIN es similar a un LEFT JOIN, pero invierte el orden de las tablas. Devuelve todas las filas de la tabla derecha y las filas coincidentes de la tabla izquierda. Las filas sin correspondencia de la tabla izquierda tendrán valores NULL para las columnas de la tabla izquierda en el resultado.
				4. FULL OUTER JOIN (también conocido como FULL JOIN): Un FULL JOIN devuelve todas las filas de ambas tablas. Combina las filas de un LEFT JOIN y un RIGHT JOIN. Si no hay una correspondencia entre las tablas, se utilizan valores NULL en las columnas correspondientes.

				En resumen:
					* INNER JOIN devuelve solo las filas coincidentes entre las tablas.
					* LEFT OUTER JOIN devuelve todas las filas de la tabla izquierda y las coincidentes de la tabla derecha.
					* RIGHT OUTER JOIN devuelve todas las filas de la tabla derecha y las coincidentes de la tabla izquierda.
					* FULL OUTER JOIN devuelve todas las filas de ambas tablas, incluyendo las no coincidentes.

				La elección entre INNER JOIN y los tipos de OUTER JOIN depende de los datos que deseas obtener y cómo quieres combinar las filas de las tablas en tu consulta.

			Nombre del cargo y el nombre de todas las mujeres que sean de un departamento de finanzas.
			SELECT c.nombre AS cargo, e.nombre AS empleado
			FROM cargo AS c RIGHT OUTER JOIN empleado AS e --Right: ... y el nombre de todas ...
				ON(c.idcargo = e.idcargo)
					LEFT OUTER JOIN departamento AS d ON (e.iddepartamento = d.iddepartamento)
			WHERE e.sexo = 'M' AND d.nombre = 'Finanzas';


			El tipo de relación
			Completamente debil, full, right, left, inner
			Mitad debil-fuerte: prioridad a la tabla que tiene la parte opcional
			Completamente fuerte, inner

			Necesitamos un listado completo de cargos y de tener sus empleados que cuya ultima fecha de contratacion sea despues de 1999 diciendo cuantos empleados hay en cada uno ordenado de manera descendente por el conteo.
			SELECT c.nombre AS cargo, COUNT(*) AS conteoEmpleados
			FROM cargo AS c LEFT OUTER JOIN empleado AS e --Left: Necesitamos un listado completo .... y de tener ...
				ON(c.idCargo = e.idCargo)
			GROUP BY c.nombre
				HAVING MAX(e.contratacion) > '1999-12-31'
			ORDER BY COUNT(*) DESC;
			... cargos y ... empleados ...: JOIN
			... completo de cargos ...: LEFT

			SELECT CURRENT_TIMESTAMP; -- Para checar como es el formato de la fecha, es Estandar y por lo tanto en todos los manejadores

			Mostar los empleados y su departamento de aquellos empleados que siendo de departamentos que terminen su nombre con la 'a' o que su sueldo sobrepasen los 50,000. Considerando que no haya mujeres que sean vendedoras.
			SELECT e.nombre AS empleado, d.nombre AS departamento
			FROM empleado AS e INNER JOIN departamento AS d
				ON(e.idDepartamento = d.idDepartamento)
			WHERE e.sexo = 'M' AND e.porcentaje_comision IS NULL OR d.nombre LIKE '%_a' OR e.sueldo > 50000;

			Y si fuera lo siguiente:
			Mostrar todos los empleados y los que tengan departamento:
				FROM empleado LEFT OUTER JOIN departamento

			Mostrar cuantos departamentos hay por edad que sean departamentos cuyo promedio de sueldos sea mayor a 25,000 siendo de que cualquier cargo tengan un promedio de empleados mayor a 5.
			SELECT COUNT(d.idDepartamento) AS conteoDepartamento, e.edad --COUNT(d.idDepartamento), porque hay empleados que no tienen departamento
			FROM departamento AS d INNER JOIN empleado AS e --Mostrar cuantos ... hay por ...
				ON(d.idDepartamento = e.idDepartamento)
					RIGHT OUTER JOIN cargo AS c --... cualquier (TODOS) ....
						ON(e.idCargo = c.idCargo)
			GROUP BY e.edad
				HAVING AVG(e.sueldo) > 25000 AND COUNT(c.idCargo) > 5;

			NATURAL*	No es estandar, no es ISO, no es nada. MierdCrosoft no lo tiene.
				CROSS JOIN + RESTRICCIÓN + Atributo en común se llame igual (extremadamente idóneo).

				SELECT *
				FROM <tablaA> [IJ|ROJ|FOJ|LOJ] <tablaB>
					USING(<atributoComúnIdóneo>); --Los pocos manejadores que lo tienen, son muy eficientes

				SELECT *
				FROM empleado AS e INNER JOIN cargo AS c
					USING(idCargo);

				SELECT *
				FROM empleado AS e LEFT OUTER JOIN departamento AS d
					USING(iddepartamento);

				SELECT *
				FROM empleado AS e RIGHT OUTER JOIN departamento AS d
					USING(iddepartamento);

				SELECT *
				FROM empleado AS e FULL OUTER JOIN departamento AS d
					USING(iddepartamento);

			SELF*		Es estandar 92
				SELECT *
				FROM <tablaA> AS a [IJ|ROJ|FOJ|LOJ] <tablaA> AS b
					ON(a.<atributoComúnIdóneo> = b.<atributoComúnIdóneo>);

				ALTER TABLE empleado ADD COLUMN idJefe NUMERIC(5,0);
				ALTER TABLE empleado ADD CONSTRAINT fkEmpleadoEmpleado
					FOREIGN KEY (idJefe)
					REFERENCES empleado (idEmpleado)
					ON DELETE RESTRICT
					ON UPDATE RESTRICT;
				UPDATE empleado SET idJefe = idEmpleado + 1 WHERE idEmpleado != 19;

				empleado			jefe
				e.idEmpleado(PK)	j.idEmpleado
				...					...
				e.idJefe IS NULL	j.idJefe(FK)

				SELECT *
				FROM empleado AS e INNER JOIN empleado AS j
					ON(e.idEmpleado = j.idJefe);

				empleado			jefe/emp			jefe
				e.idEmpleado(PK)	je.idEmpleado(PK)	j.idEmpleado IS NOT NULL
				...					...					...
				e.idJefe IS NULL	je.idJefe(FK)		j.idJefe(FK)

				SELECT *
				FROM empleado AS e INNER JOIN empleado AS je
					ON(e.idEmpleado = je.idJefe)
						INNER JOIN empleado AS j
							ON(je.idEmpleado = j.idJefe); --(17 rows), porque el MASTER ya no cuenta

				Pero se recomienda salir del estándar y utilizar los objetos avanzados de cada manejador, porque son mas eficientes, y en RAM se evitan los Hacking de stackoverflow.

			GPT:
				Las diferencias entre INNER JOIN y los tipos de OUTER JOIN (LEFT, RIGHT y FULL) se relacionan con cómo se combinan las filas de las tablas en la consulta JOIN.
				1. INNER JOIN: Un INNER JOIN devuelve únicamente las filas que tienen una correspondencia en ambas tablas que se están uniendo. Solo las filas que cumplen la condición de unión se incluyen en el resultado final. Si no hay una correspondencia entre las tablas, las filas no se mostrarán en el resultado.
				2. LEFT OUTER JOIN (también conocido como LEFT JOIN): Un LEFT JOIN devuelve todas las filas de la tabla izquierda (la primera tabla mencionada en la cláusula JOIN) y las filas coincidentes de la tabla derecha (la segunda tabla mencionada). Si no hay una correspondencia, se utilizan valores NULL para las columnas de la tabla derecha en el resultado.
				3. RIGHT OUTER JOIN (también conocido como RIGHT JOIN): Un RIGHT JOIN es similar a un LEFT JOIN, pero invierte el orden de las tablas. Devuelve todas las filas de la tabla derecha y las filas coincidentes de la tabla izquierda. Las filas sin correspondencia de la tabla izquierda tendrán valores NULL para las columnas de la tabla izquierda en el resultado.
				4. FULL OUTER JOIN (también conocido como FULL JOIN): Un FULL JOIN devuelve todas las filas de ambas tablas. Combina las filas de un LEFT JOIN y un RIGHT JOIN. Si no hay una correspondencia entre las tablas, se utilizan valores NULL en las columnas correspondientes.
				En resumen:
				- INNER JOIN devuelve solo las filas coincidentes entre las tablas.
				- LEFT OUTER JOIN devuelve todas las filas de la tabla izquierda y las coincidentes de la tabla derecha.
				- RIGHT OUTER JOIN devuelve todas las filas de la tabla derecha y las coincidentes de la tabla izquierda.
				- FULL OUTER JOIN devuelve todas las filas de ambas tablas, incluyendo las no coincidentes.
				La elección entre INNER JOIN y los tipos de OUTER JOIN depende de los datos que deseas obtener y cómo quieres combinar las filas de las tablas en tu consulta.
		* DIVISIÓN (÷): Se utiliza para encontrar registros en una tabla que estén relacionados con todos los valores de otra tabla.
			En SQL, no existe un operador de división directo como en el álgebra relacional. Sin embargo, es posible simular la operación de división utilizando otras consultas y operaciones disponibles en SQL. Esto puede requerir consultas más complejas.
			La operación de división en SQL puede ser replicada usando subconsultas, joins y condiciones de filtro. Aquí hay un ejemplo simplificado para ilustrar cómo se puede hacer:
				Supongamos que tenemos dos tablas: "Estudiantes" y "Cursos".
					CREATE TABLE Estudiantes (
						EstudianteID INT PRIMARY KEY,
						Nombre VARCHAR(50)
					);
					CREATE TABLE Cursos (
						CursoID INT PRIMARY KEY,
						NombreCurso VARCHAR(50)
					);
					CREATE TABLE Matriculas (
						EstudianteID INT,
						CursoID INT,
						PRIMARY KEY (EstudianteID, CursoID),
						FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
						FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
					);
				Para encontrar los estudiantes que han tomado todos los cursos, puedes usar una consulta similar a esta:
					SELECT E.EstudianteID, E.Nombre
					FROM Estudiantes E
					WHERE NOT EXISTS (
						SELECT C.CursoID
						FROM Cursos C
						EXCEPT
						SELECT M.CursoID
						FROM Matriculas M
						WHERE M.EstudianteID = E.EstudianteID
					);
				Esta consulta seleccionará los estudiantes que no tienen ningún curso que no hayan tomado. En otras palabras, solo seleccionará estudiantes que hayan tomado todos los cursos.
			Ten en cuenta que este es solo un ejemplo simplificado y que la implementación de la división en SQL puede volverse más compleja dependiendo de la estructura de tus tablas y la lógica específica que estés utilizando.
	* Subconsultas; SQL-92:
		Una o varias consultas anidadas dentro de otra.
		1. Restricción: WHERE (SELECT)
			Reglas:
				1. Toda subconsulta debe tener grado 1.
					SELECT * FROM empleado WHERE idcargo = (SELECT idCargo, nombre FROM cargo); --ERROR:  subquery must return only one column
				2. Si la cardinalidad de retorno es 1, se usa =, sino se usa IN.
					SELECT * FROM empleado WHERE idCargo = (SELECT idCargo FROM cargo); --ERROR:  more than one row returned by a subquery used as an expression
					SELECT * FROM empleado WHERE idCargo IN (SELECT idCargo FROM cargo);
					SELECT * FROM empleado WHERE idCargo = (SELECT MAX(idCargo) FROM cargo);
					SELECT * FROM empleado WHERE idCargo IN (SELECT MAX(idCargo) FROM cargo); --Muy estupida, porque en el IN solo tiene un valor

					SELECT * FROM empleado WHERE idCargo IN (SELECT idCargo FROM cargo);
					SELECT idCargo FROM cargo;
					 idcargo 
					---------
					       1 
					       2 
					       3 
					       4 
					       5 
					       6 
					(6 rows) 
					SELECT * FROM empleado WHERE idCargo IN (1,2,3,4,5,6);
					----------------------------------------------------------------------
					SELECT * FROM empleado WHERE idCargo = (SELECT idCargo FROM cargo WHERE idCargo = 1);
					SELECT idCargo FROM cargo WHERE idCargo = 1;
					 idcargo 
					---------
					       1 
					(1 row)  
					SELECT * FROM empleado WHERE idCargo = (1);
					SELECT * FROM empleado WHERE idCargo = 1;

			SELECT *
			FROM empleado
			WHERE sueldo = (SELECT MAX(sueldo)
				FROM empleado
				WHERE sexo = 'M'
			) AND sexo = 'H';

			--Las restricciones que estan dentro de la primer consulta (subconsulta), no se "heredan/pasan/comparten" con las restricciones de la consulta padre (superior).
			SELECT *
			FROM empleado
			WHERE idCargo = (SELECT MAX(idCargo)
				FROM cargo
				WHERE nombre LIKE '%_o'
			) AND sexo = 'H';

			--No importa si el resultado de la consulta inferior/subconsulta son 0 renglones, el manejador lo interpreta como el digito 0 y trabaja con ello sin problema alguno.
			SELECT *
			FROM empleado
			WHERE idCargo = (SELECT idCargo
				FROM cargo
				WHERE idCargo = 19
			) AND sexo = 'H';

			--Si en el los JOINs, no se ocupta al menos UN ATRIBUTO de cada TABLA, sustituye eso por una subconsulta.
			Nombre del cargo y el nombre de todas las mujeres que sean de un departamento de finanzas.
			SELECT c.nombre AS cargo, e.nombre AS empleado
			FROM cargo AS c RIGHT OUTER JOIN empleado AS e --Right: ... y el nombre de todas ...
				ON(c.idcargo = e.idcargo)
					LEFT OUTER JOIN departamento AS d ON (e.iddepartamento = d.iddepartamento)
			WHERE e.sexo = 'M' AND d.nombre = 'Finanzas'; --En este JOIN no ocupo los atributos de departamento
			--Por lo tanto:
			SELECT c.nombre AS cargo, e.nombre AS empleado
			FROM cargo AS c RIGHT OUTER JOIN empleado AS e --Right: ... y el nombre de todas ...
				ON(c.idcargo = e.idcargo)
			WHERE e.sexo = 'M' AND e.iddepartamento = (SELECT idDepartamento
				FROM departamento
				WHERE nombre = 'Finanzas');

			Nivel leve: Mostrar el nombre de la mujer que gane más que el sueldo promedio de los hombres de cargo 1.
				SELECT nombre
				FROM empleado
				WHERE sexo = 'M' AND sueldo > (SELECT AVG(sueldo)
						FROM empleado
						WHERE sexo = 'H' AND idCargo = 1);

			Nivel medio: Mostrar el nombre del empleado hombre que tenga la edad más pequeña y la más grande de las mujeres
				SELECT nombre
				FROM empleado
				WHERE sexo = 'H' AND edad BETWEEN (SELECT MIN(edad)
					FROM empleado
					WHERE sexo = 'M') AND (SELECT MAX(edad)
					FROM empleado
					WHERE sexo = 'M');
		2. Tablas Temporales: FROM (SELECT...)
			GPT: Puedes utilizar una subconsulta en la cláusula FROM para crear una tabla temporal y utilizarla en la consulta principal. Aquí tienes un ejemplo de sintaxis genérica:
			SELECT columna1, columna2, ...
			FROM (SELECT columna1, columna2, ...
				FROM tabla_principal
				WHERE condicion) AS tabla_temporal;

			En este ejemplo, la subconsulta se utiliza para filtrar los datos de la tabla principal y se almacenan en una tabla temporal llamada "tabla_temporal". Luego, la consulta principal se ejecuta utilizando la tabla temporal como origen de datos.
			Recuerda que estos ejemplos son solo representativos de la sintaxis general y pueden variar según la base de datos que estés utilizando. Siempre es recomendable consultar la documentación específica del sistema de gestión de bases de datos que estés utilizando para obtener información más precisa sobre cómo utilizar subconsultas en diferentes contextos.

			Casos comunes de uso:
				* Creación de tablas derivadas: Cuando necesitas realizar una operación en una tabla antes de unir o relacionar sus datos con otra(s) tabla(s).
				* Resumen de datos: Puedes usar subconsultas para calcular agregaciones como la suma, el promedio, etc.
				* Filtrado avanzado: Puedes aplicar filtrado complejo y condiciones a la tabla temporal generada por la subconsulta.
		3. Queries Correlacionales: SELECT (SELECT...)
			GPT: En esta sección, puedes utilizar una subconsulta dentro de la cláusula SELECT para realizar cálculos o recuperar valores relacionados con cada fila de la consulta principal. Aquí tienes un ejemplo de sintaxis genérica:
			SELECT columna1, columna2, ..., (SELECT columna FROM tabla_secundaria WHERE condicion) AS columna_nueva
			FROM tabla_principal;
			En este ejemplo, la subconsulta se encuentra dentro de la cláusula SELECT y se utiliza para recuperar un valor relacionado con cada fila de la tabla principal. El resultado de la subconsulta se muestra como una columna adicional llamada "columna_nueva" en la consulta principal.
			Recuerda que estos ejemplos son solo representativos de la sintaxis general y pueden variar según la base de datos que estés utilizando. Siempre es recomendable consultar la documentación específica del sistema de gestión de bases de datos que estés utilizando para obtener información más precisa sobre cómo utilizar subconsultas en diferentes contextos.

3. DML: Manipulación de datos:
	CALL: Llamar a un subprograma (por ejemplo, PL/SQL)
	DELETE: Eliminar registros de datos de una base de datos
	INSERT: Insertar registros de datos en una base de datos.
	LOCK: bloquear recursos en una base de datos (control de concurrencia)
	MERGE: insertar o actualizar registros de datos (también conocido como UPSERT)
	UPDATE: Actualizar datos existentes en una base de datos

	* INSERT, UPDATE y DELETE:
		1. INSERT:
				La consulta "INSERT" se utiliza para añadir nuevos registros a una tabla.
					INSERT INTO nombre_de_la_tabla (columna1, columna2, columna3, ...)
					VALUES (valor1, valor2, valor3, ...);
				Ejemplo:
					INSERT INTO usuarios (nombre, edad, correo)
					VALUES ('Juan', 25, 'juan@example.com');
		2. UPDATE:
			La consulta "UPDATE" se utiliza para modificar registros existentes en una tabla.
				UPDATE nombre_de_la_tabla
				SET columna1 = valor1, columna2 = valor2, ...
				WHERE condición;
			Ejemplo:
				UPDATE usuarios
				SET edad = 26
				WHERE id = 1;
		3. DELETE:
			La consulta "DELETE" se utiliza para eliminar registros de una tabla.
				DELETE FROM nombre_de_la_tabla
				WHERE condición;
			Ejemplo:
				DELETE FROM usuarios
				WHERE id = 2;
			Recuerda que es importante tener precaución al ejecutar consultas "DELETE", ya que pueden eliminar datos de manera permanente.
		Además, ten en cuenta que la condición en las consultas "UPDATE" y "DELETE" es opcional, pero si no se proporciona, se modificarán o eliminarán todos los registros de la tabla, respectivamente. Por lo tanto, es buena práctica incluir una condición que especifique qué registros deben ser afectados.
	* CALL, LOCK y MERGE:
		Estos son comandos y operaciones adicionales en SQL que ofrecen funcionalidades específicas:
			1. CALL:
				El comando "CALL" se utiliza para invocar un procedimiento almacenado (stored procedure) en una base de datos. Un procedimiento almacenado es una serie de instrucciones SQL que se pueden reutilizar y ejecutar de manera eficiente.
				Sintaxis:
					CALL nombre_del_procedimiento(parametros);
				Ejemplo:
					CALL sp_actualizar_estado(123, 'Activo');
				Estándar: La capacidad de invocar procedimientos almacenados utilizando el comando "CALL" es una característica estándar que ha estado presente en SQL desde SQL-92.
			2. LOCK:
				La instrucción "LOCK" se utiliza para bloquear recursos en una base de datos, lo que evita que otros usuarios accedan o modifiquen esos recursos al mismo tiempo.
				Los modos de bloqueo pueden variar según el sistema de gestión de bases de datos, pero comunes incluyen "READ", "WRITE", "EXCLUSIVE", entre otros.
				Sintaxis:
					LOCK TABLE nombre_de_tabla IN modo_de_bloqueo;
				Ejemplo:
					LOCK TABLE empleados IN EXCLUSIVE MODE;
				Estándar: La instrucción "LOCK" es una característica que está presente en SQL, pero los detalles específicos y los modos de bloqueo pueden variar entre diferentes sistemas de gestión de bases de datos.
			3. MERGE:
				La instrucción "MERGE" se utiliza para combinar (merge) datos de una tabla origen a una tabla destino basándose en una condición de coincidencia.
				Sintaxis:
					MERGE INTO tabla_destino
					USING tabla_origen ON condicion_de_coincidencia
					WHEN MATCHED THEN
						-- Acciones cuando hay una coincidencia
					WHEN NOT MATCHED THEN
						-- Acciones cuando no hay una coincidencia
				Ejemplo:
					MERGE INTO clientes_destino
					USING clientes_origen ON clientes_destino.id = clientes_origen.id
					WHEN MATCHED THEN
					    UPDATE SET clientes_destino.nombre = clientes_origen.nombre
					WHEN NOT MATCHED THEN
					    INSERT (id, nombre) VALUES (clientes_origen.id, clientes_origen.nombre);
				Estándar: La instrucción "MERGE" es una característica que se introdujo en el estándar SQL:2003. Es parte de la especificación desde entonces y es compatible con muchos sistemas de gestión de bases de datos modernos.
		Recuerda que aunque estos comandos y operaciones están disponibles en SQL, su sintaxis y comportamiento pueden variar ligeramente entre diferentes sistemas de gestión de bases de datos. Siempre es recomendable consultar la documentación específica del sistema que estés utilizando para obtener detalles precisos sobre su implementación.

4. TCL: Transacciones y control de cambios:
	Modificar datos en una base de datos es una operación común en SQL. Sin embargo, es importante hacerlo de manera segura y reversible en caso de que ocurra un error. Aquí es donde entran en juego las transacciones y el control de cambios.

	BEGIN TRANSACTION / BEGIN / START TRANSACTION: Inicia una nueva transacción.
	COMMIT: Guarda los cambios realizados en la transacción actual.
	ROLLBACK: Deshace los cambios realizados en la transacción actual y la devuelve al estado inicial.
	SAVEPOINT: Establecer puntos de guardado dentro de una transacción. Esto te permite marcar un punto específico en una transacción donde puedes volver si es necesario, en lugar de tener que revertir la transacción completa.
	SET TRANSACTION: Configura diferentes propiedades y características de una transacción. Estas propiedades pueden incluir el nivel de aislamiento, el nombre de la transacción y otras opciones relacionadas con la gestión de transacciones.

	* Transacciones y Control de cambios en SQL; Estandar ISO:
		Una transacción es una secuencia de operaciones que se ejecutan como una sola unidad. Esto significa que todas las operaciones deben completarse con éxito para que la transacción se considere exitosa. Si una operación falla, la transacción se revierte a un estado anterior.

		Ejemplos para PostgreSQL:
			BEGIN TRANSACTION;
			UPDATE tabla1 SET columna1 = 'nuevo_valor' WHERE condicion = 'alguna_condicion';
			DELETE FROM tabla2 WHERE condicion = 'otra_condicion';
			COMMIT;

			BEGIN;
			UPDATE tabla1 SET columna1 = 'nuevo_valor' WHERE condicion = 'alguna_condicion';
			DELETE FROM tabla2 WHERE condicion = 'otra_condicion';
			COMMIT;

			BEGIN;
			-- Realizar algunas operaciones
			INSERT INTO tabla1 (columna1) VALUES ('valor1');
			-- Establecer un punto de guardado
			SAVEPOINT punto_de_guardado;
			-- Realizar más operaciones
			INSERT INTO tabla2 (columna2) VALUES ('valor2');
			-- Si algo sale mal, regresar al punto de guardado
			ROLLBACK TO SAVEPOINT punto_de_guardado;
			-- Confirmar transacción
			COMMIT;
		Ejemplo para SQL Server:
			BEGIN TRANSACTION;
			UPDATE tabla1 SET columna1 = 'nuevo_valor' WHERE condicion = 'alguna_condicion';
			DELETE FROM tabla2 WHERE condicion = 'otra_condicion';
			COMMIT;

			-- Iniciar transacción
			BEGIN TRANSACTION;
			-- Realizar algunas operaciones
			INSERT INTO tabla1 (columna1) VALUES ('valor1');
			-- Establecer un punto de guardado
			SAVE TRANSACTION punto_de_guardado;
			-- Realizar más operaciones
			INSERT INTO tabla2 (columna2) VALUES ('valor2');
			-- Si algo sale mal, regresar al punto de guardado
			ROLLBACK TRANSACTION punto_de_guardado;
			-- Confirmar transacción
			COMMIT TRANSACTION;
		Ejemplo para Oracle:
			BEGIN
				UPDATE tabla1 SET columna1 = 'nuevo_valor' WHERE condicion = 'alguna_condicion';
				DELETE FROM tabla2 WHERE condicion = 'otra_condicion';
				-- Si todo va bien, confirmamos la transacción
				COMMIT;
			EXCEPTION
				-- Si hay un error, revertimos la transacción
				WHEN OTHERS THEN
					ROLLBACK;
					-- Puedes manejar el error aquí o simplemente dejar que se propague hacia arriba
			END;

			-- Iniciar transacción
			BEGIN;
			-- Realizar algunas operaciones
			INSERT INTO tabla1 (columna1) VALUES ('valor1');
			-- Establecer un punto de guardado
			SAVEPOINT punto_de_guardado;
			-- Realizar más operaciones
			INSERT INTO tabla2 (columna2) VALUES ('valor2');
			-- Si algo sale mal, regresar al punto de guardado
			ROLLBACK TO SAVEPOINT punto_de_guardado;
			-- Confirmar transacción
			COMMIT;
		Ejemplos para MySQL:
			BEGIN;
			UPDATE tabla1 SET columna1 = 'nuevo_valor' WHERE condicion = 'alguna_condicion';
			DELETE FROM tabla2 WHERE condicion = 'otra_condicion';
			COMMIT;

			START TRANSACTION;
			UPDATE tabla1 SET columna1 = 'nuevo_valor' WHERE condicion = 'alguna_condicion';
			DELETE FROM tabla2 WHERE condicion = 'otra_condicion';
			COMMIT;

			-- MySQL no soporta SAVEPOINT en transacciones con el motor de almacenamiento MyISAM.
			-- Debes utilizar InnoDB u otro motor compatible con transacciones.
			-- Iniciar transacción
			START TRANSACTION;
			-- Realizar algunas operaciones
			INSERT INTO tabla1 (columna1) VALUES ('valor1');
			-- Establecer un punto de guardado
			SAVEPOINT punto_de_guardado;
			-- Realizar más operaciones
			INSERT INTO tabla2 (columna2) VALUES ('valor2');
			-- Si algo sale mal, regresar al punto de guardado
			ROLLBACK TO SAVEPOINT punto_de_guardado;
			-- Confirmar transacción
			COMMIT;
		*En el ejemplo anterior, si ambas operaciones de actualización y eliminación tienen éxito, los cambios se guardarán. Si hay un error en cualquiera de las operaciones, la transacción se revertirá completamente.*

		"SET TRANSACTION" es una instrucción SQL que se utiliza para configurar diferentes propiedades y características de una transacción. Estas propiedades pueden incluir el nivel de aislamiento, el nombre de la transacción y otras opciones relacionadas con la gestión de transacciones.

		La sintaxis general de "SET TRANSACTION" es la siguiente:
			SET TRANSACTION [nombre_de_transacción] [opciones];

		Algunas opciones comunes que se pueden configurar con "SET TRANSACTION" incluyen:
			* "ISOLATION LEVEL": Establece el nivel de aislamiento de la transacción. Los niveles de aislamiento determinan el grado en el que una transacción puede "ver" los cambios realizados por otras transacciones antes de que se confirmen.
			* "READ WRITE" o "READ ONLY": Especifica si la transacción es de lectura/escritura o solo de lectura.
			* "DEFERRABLE" o "NOT DEFERRABLE": Indica si las restricciones de clave foránea pueden ser aplazadas (deferred) o no.
			* "NAMES ARE 'charset_name'": Establece el conjunto de caracteres (charset) que se usará para la transacción.
		
		"BEGIN TRANSACTION" es una forma de iniciar una transacción y es una práctica comúnmente utilizada en varios sistemas de gestión de bases de datos. Sin embargo, específicamente como una declaración, no está definida en los estándares SQL1 o SQL2.

		"BEGIN" es una forma de iniciar una transacción que es compatible con SQL. Aunque "BEGIN" no es una forma estándar de iniciar una transacción en el estándar SQL-92, ha sido ampliamente adoptada en la mayoría de los sistemas de gestión de bases de datos.

		"START TRANSACTION" es una forma de iniciar una transacción que está presente en SQL:1999 (también conocido como SQL3) y en estándares posteriores. Por lo tanto, "START TRANSACTION" es parte del estándar SQL más reciente.

		"COMMIT" y "ROLLBACK" son comandos estándar en SQL y han estado presentes en todos los estándares SQL desde SQL-92.

		En resumen, "COMMIT" y "ROLLBACK" son comandos estándar en todos los estándares SQL, mientras que las formas específicas de iniciar una transacción ("BEGIN", "BEGIN TRANSACTION" o "START TRANSACTION") pueden variar en su inclusión en los estándares, pero son prácticas comunes y ampliamente reconocidas en la mayoría de los sistemas de gestión de bases de datos modernos.

		SAVEPOINT es una característica estándar de SQL y ha estado presente desde SQL-92. Por lo tanto, es parte del estándar SQL1 y ha sido una característica comúnmente admitida en los sistemas de gestión de bases de datos durante muchos años.

		"SET TRANSACTION" es una característica estándar de SQL y ha estado presente en el lenguaje desde SQL-92. Por lo tanto, es parte del estándar SQL1 y ha sido una característica comúnmente admitida en la mayoría de los sistemas de gestión de bases de datos durante muchos años.

		Recuerda que las opciones específicas y el comportamiento exacto de "SET TRANSACTION" pueden variar ligeramente entre diferentes sistemas de gestión de bases de datos. Es importante consultar la documentación de tu sistema específico para obtener detalles precisos sobre cómo se implementa y se utiliza "SET TRANSACTION" en ese entorno particular.

5. DDL: Definición de datos:
	CREATE
		* Estándar: Presente en todos los estándares SQL.
		* Propósito: Se utiliza para crear nuevos objetos de base de datos, como tablas, índices, vistas, etc.
	ALTER
		* Estándar: Presente en todos los estándares SQL.
		* Propósito: Se utiliza para modificar la estructura de un objeto de base de datos existente, como una tabla (por ejemplo, agregar o eliminar columnas).
	DROP
		* Estándar: Presente en todos los estándares SQL.
		* Propósito: Se utiliza para eliminar objetos de la base de datos, como tablas, índices, vistas, etc.
	RENAME
		* Estándar: SQL:1999 (SQL3) y versiones posteriores.
		* Propósito: Se utiliza para cambiar el nombre de un objeto de base de datos existente, como una tabla o columna.
	TRUNCATE
		* Estándar: SQL:1999 (SQL3) y versiones posteriores.
		* Propósito: Se utiliza para eliminar todos los registros de una tabla y libera el espacio asignado para ellos ( pero mantener la estructura de la tabla intacta).
	COMMENT
		* Estándar: SQL:1999 (también conocido como SQL3).
		* Propósito: Se utiliza para agregar comentarios o notas a objetos de la base de datos (en el diccionario de datos), como tablas o columnas, para proporcionar información adicional sobre ellos.

	Crear objetos de la BD:
		CREATE DATABASE
			El comando CREATE DATABASE se utiliza para crear una nueva base de datos SQL.
			El siguiente SQL crea una base de datos llamada "testDB":
				CREATE DATABASE testDB;
			Consejo: asegúrese de tener privilegios de administrador antes de crear cualquier base de datos. Una vez creada una base de datos, puede consultarla en la lista de bases de datos con el siguiente comando SQL: SHOW DATABASES;

			Ejemplos para PostgreSQL:
				CREATE DATABASE testDB;
				\c testDB
				Para crear una base de datos de "sales" donde el propietario es "salesapp" con un espacio de tabla predeterminado de "salesspace":
					CREATE DATABASE sales OWNER salesapp TABLESPACE salesspace;
				Para crear una base de datos de music con una configuración regional diferente:
					CREATE DATABASE music
						LOCALE 'sv_SE.utf8'
						TEMPLATE template0;
						En este ejemplo, la cláusula "TEMPLATE template0" es necesaria si la configuración regional especificada es diferente de la de "template1". (Si no es así, especificar la configuración regional explícitamente es redundante).
				Para crear una base de datos music2 con una configuración regional diferente y una codificación de de caracteres diferente:
					CREATE DATABASE music2
						LOCALE 'sv_SE.iso885915'
						ENCODING LATIN9
						TEMPLATE template0;
				https://www.postgresql.org/docs/current/sql-createdatabase.html
			Ejemplo para SQL Server:
				CREATE DATABASE testDB;
				https://learn.microsoft.com/en-us/sql/relational-databases/databases/create-a-database?view=sql-server-ver16
			Ejemplo para Oracle:
				CREATE DATABASE test
					DATAFILE 'test_system' SIZE 10M
					LOGFILE GROUP 1 ('test_log1a', 'test_log1b') SIZE 500K,
					GROUP 2 ('test_log2a', 'test_log2b') SIZE 500K;
				https://docs.oracle.com/cd/F49540_01/DOC/server.815/a67772/create.htm
			Ejemplo para MySQL:
				CREATE DATABASE testDB;
				USE testDB;
				https://dev.mysql.com/doc/refman/8.0/en/creating-database.html
		CREATE TABLE
			El comando CREATE TABLE crea una nueva tabla en la base de datos.
			El siguiente SQL crea una tabla llamada "Persons" que contiene cinco columnas: PersonID, LastName, FirstName, Address y City:
				CREATE TABLE Persons (
					PersonID numeric(2,0),
					LastName varchar(255),
					FirstName varchar(255),
					Address varchar(255),
					City varchar(255)
				);

			Para PostgreSQL:
				https://www.postgresql.org/docs/current/sql-createtable.html
			Para SQL Server:
				https://learn.microsoft.com/es-es/sql/t-sql/statements/create-table-transact-sql?view=sql-server-ver16
			Para Oracle:
				https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/CREATE-TABLE.html#GUID-F9CE0CC3-13AE-4744-A43C-EAC7A71AAAB6
			Para MySQL:
				https://dev.mysql.com/doc/refman/8.0/en/creating-tables.html
		CREATE TABLE usando otra tabla
			El siguiente SQL crea una nueva tabla llamada "TestTables" (que es una copia de dos columnas de la tabla "Customers"):
				CREATE TABLE TestTable AS
					SELECT customername, contactname
					FROM customers;
		CREATE INDEX
			El comando CREATE INDEX se utiliza para crear índices en tablas (permite valores duplicados).
			Los índices se utilizan para recuperar datos de la base de datos muy rápidamente. Los usuarios no pueden ver los índices, solo se utilizan para acelerar las búsquedas/consultas. Funciona como un índice en un libro, permitiéndote encontrar rápidamente la información que necesitas.
			Cuando creas un índice en una columna de una tabla, la base de datos crea un conjunto de claves ordenadas que apuntan a las ubicaciones físicas de los datos en esa columna. Esto acelera las consultas que buscan valores específicos en esa columna.
			El siguiente SQL crea un índice denominado "idx_lastname" en la columna "LastName" de la tabla "Persons":
				CREATE INDEX idx_lastname
					ON Persons (LastName);
			Si desea crear un índice en una combinación de columnas, puede enumerar los nombres de las columnas entre paréntesis, separados por comas:
				CREATE INDEX idx_pname
					ON Persons (LastName, FirstName);
			Nota: La sintaxis para crear índices varía entre las diferentes bases de datos. Por lo tanto: verifique la sintaxis para crear índices en su base de datos.
			Nota: Actualizar una tabla con índices lleva más tiempo que actualizar una tabla sin índices (porque los índices también necesitan una actualización). Por lo tanto, cree índices únicamente en las columnas en las que se buscarán con frecuencia.
			Nota: Es crucial considerar cuidadosamente qué columnas deberían tener índices basados en el tipo de consultas que se realizarán con mayor frecuencia en la tabla.

			Sin embargo, aún así, hay situaciones en las que un índice podría ser útil:
				1. Joins y Relaciones: Si estás realizando operaciones de unión (JOIN) con otras tablas, los índices en las columnas utilizadas para la unión pueden mejorar significativamente el rendimiento.
				2. Columnas de Filtro Frecuente: Si tienes consultas que filtran o buscan en esta columna con frecuencia, un índice puede mejorar la velocidad de estas operaciones.
				3. Ordenación Personalizada: Si necesitas realizar consultas que devuelvan resultados ordenados de manera específica y esta columna es utilizada para la ordenación, un índice puede ayudar.
				4. Agilizar Escrituras en Grandes Conjuntos de Datos: Aunque los índices pueden ralentizar las operaciones de escritura, pueden acelerar las lecturas, especialmente en tablas grandes (tanto en registros como en atributos).

			Para PostgreSQL:
				CREATE [ UNIQUE ] INDEX [ CONCURRENTLY ] [ [ IF NOT EXISTS ] name ] ON [ ONLY ] table_name [ USING method ]
					( { column_name | ( expression ) } [ COLLATE collation ] [ opclass [ ( opclass_parameter = value [, ... ] ) ] ] [ ASC | DESC ] [ NULLS { FIRST | LAST } ] [, ...] )
					[ INCLUDE ( column_name [, ...] ) ]
					[ NULLS [ NOT ] DISTINCT ]
					[ WITH ( storage_parameter [= value] [, ... ] ) ]
					[ TABLESPACE tablespace_name ]
					[ WHERE predicate ]
				https://www.postgresql.org/docs/current/sql-createindex.html
			Para SQL Server:
				CREATE [ UNIQUE ] [ CLUSTERED | NONCLUSTERED ] INDEX index_name
					ON <object> ( column [ ASC | DESC ] [ ,...n ] )
					[ INCLUDE ( column_name [ ,...n ] ) ]
					[ WHERE <filter_predicate> ]
					[ WITH ( <relational_index_option> [ ,...n ] ) ]
					[ ON { partition_scheme_name ( column_name )
						| filegroup_name
						| default
						}
					]
					[ FILESTREAM_ON { filestream_filegroup_name | partition_scheme_name | "NULL" } ]

				[ ; ]

				<object> ::=
				{ database_name.schema_name.table_or_view_name | schema_name.table_or_view_name | table_or_view_name }

				<relational_index_option> ::=
				{
					PAD_INDEX = { ON | OFF }
					 | FILLFACTOR = fillfactor
					 | SORT_IN_TEMPDB = { ON | OFF }
					 | IGNORE_DUP_KEY = { ON | OFF }
					 | STATISTICS_NORECOMPUTE = { ON | OFF }
					 | STATISTICS_INCREMENTAL = { ON | OFF }
					 | DROP_EXISTING = { ON | OFF }
					 | ONLINE = { ON [ ( <low_priority_lock_wait> ) ] | OFF }
					 | RESUMABLE = { ON | OFF }
					 | MAX_DURATION = <time> [MINUTES]
					 | ALLOW_ROW_LOCKS = { ON | OFF }
					 | ALLOW_PAGE_LOCKS = { ON | OFF }
					 | OPTIMIZE_FOR_SEQUENTIAL_KEY = { ON | OFF }
					 | MAXDOP = max_degree_of_parallelism
					 | DATA_COMPRESSION = { NONE | ROW | PAGE }
						[ ON PARTITIONS ( { <partition_number_expression> | <range> }
						[ , ...n ] ) ]
					 | XML_COMPRESSION = { ON | OFF }
						[ ON PARTITIONS ( { <partition_number_expression> | <range> }
						[ , ...n ] ) ]
				}

				<filter_predicate> ::=
					<conjunct> [ AND ] [ ...n ]

				<conjunct> ::=
					<disjunct> | <comparison>

				<disjunct> ::=
						column_name IN (constant ,...n)

				<comparison> ::=
						column_name <comparison_op> constant

				<comparison_op> ::=
					{ IS | IS NOT | = | <> | != | > | >= | !> | < | <= | !< }

				<low_priority_lock_wait>::=
				{
					WAIT_AT_LOW_PRIORITY ( MAX_DURATION = <time> [ MINUTES ] ,
						ABORT_AFTER_WAIT = { NONE | SELF | BLOCKERS } )
				}

				<range> ::=
				<partition_number_expression> TO <partition_number_expression>
				https://learn.microsoft.com/es-es/sql/t-sql/statements/create-index-transact-sql?view=sql-server-ver16
			Para Oracle:
				https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/CREATE-INDEX.html
			Para MySQL:
				CREATE [UNIQUE | FULLTEXT | SPATIAL] INDEX index_name
					[index_type]
					ON tbl_name (key_part,...)
					[index_option]
					[algorithm_option | lock_option] ...

				key_part: {col_name [(length)] | (expr)} [ASC | DESC]

				index_option: {
					KEY_BLOCK_SIZE [=] value
					 | index_type
					 | WITH PARSER parser_name
					 | COMMENT 'string'
					 | {VISIBLE | INVISIBLE}
					 | ENGINE_ATTRIBUTE [=] 'string'
					 | SECONDARY_ENGINE_ATTRIBUTE [=] 'string'
				}

				index_type:
					USING {BTREE | HASH}

				algorithm_option:
					ALGORITHM [=] {DEFAULT | INPLACE | COPY}

				lock_option:
					LOCK [=] {DEFAULT | NONE | SHARED | EXCLUSIVE}
				https://dev.mysql.com/doc/refman/8.1/en/create-index.html
		CREATE UNIQUE INDEX
			El comando CREATE UNIQUE INDEX crea un índice único en una tabla (no se permiten valores duplicados)
			El siguiente SQL crea un índice denominado "uidx_pid" en la columna "PersonID" de la tabla "Persons":
				CREATE UNIQUE INDEX uidx_pid
					ON Persons (PersonID);
		CREATE VIEW
			El comando CREATE VIEW crea una vista.
			Una vista es una tabla virtual basada en el conjunto de resultados de una declaración SQL.
			El siguiente SQL crea una vista que selecciona todos los clientes de Brasil:
				CREATE VIEW [Brazil Customers] AS
					SELECT CustomerName, ContactName
					FROM Customers
					WHERE Country = "Brazil";

			Para PostgreSQL:
				https://www.postgresql.org/docs/current/sql-createview.html
			Para SQL Server:
				https://learn.microsoft.com/es-es/sql/t-sql/statements/create-view-transact-sql?view=sql-server-ver16
			Para Oracle:
				https://docs.oracle.com/javadb/10.6.2.1/ref/rrefsqlj15446.html
			Para MySQL:
				https://dev.mysql.com/doc/refman/8.0/en/create-view.html
		CREATE OR REPLACE VIEW
			El comando CREATE OR REPLACE VIEW actualiza una vista.
			El siguiente SQL agrega la columna "City" a la vista "Brazil Customers":
				CREATE OR REPLACE VIEW [Brazil Customers] AS
					SELECT CustomerName, ContactName, City
					FROM Customers
					WHERE Country = "Brazil";
			Podemos consultar la vista anterior de la siguiente manera:
				SELECT * FROM [Brazil Customers];
		CREATE PROCEDURE
			El comando CREATE PROCEDURE se utiliza para crear un procedimiento almacenado.
			Un procedimiento almacenado es un código SQL preparado que puede guardar, de modo que el código pueda reutilizarse una y otra vez.
			El siguiente SQL crea un procedimiento almacenado llamado "SelectAllCustomers" que selecciona todos los registros de la tabla "Customers":
				CREATE PROCEDURE SelectAllCustomers
					AS
					SELECT * FROM Customers
					GO;
			Ejecute el procedimiento almacenado anterior de la siguiente manera:
				EXEC SelectAllCustomers;
		https://www.w3schools.com/sql/sql_ref_create.asp

	* Relaciones entre tablas (uno a uno, uno a muchos, muchos a muchos):
		En SQL, las relaciones entre tablas son fundamentales para organizar y relacionar datos de manera eficiente. Existen tres tipos principales de relaciones:
			1. Relación Uno a Uno (One-to-One):
				En una relación uno a uno, un registro en una tabla está relacionado con exactamente un registro en otra tabla.
				Ejemplo:
					Supongamos que tenemos dos tablas: "usuarios" y "perfiles". Cada usuario tiene un único perfil asociado.
						CREATE TABLE usuarios (
							id INT PRIMARY KEY,
							nombre VARCHAR(50),
							email VARCHAR(50)
						);
						CREATE TABLE perfiles (
							id INT PRIMARY KEY,
							usuario_id INT UNIQUE,
							edad INT,
							FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
						);
			2. Relación Uno a Muchos (One-to-Many):
				En una relación uno a muchos, un registro en una tabla puede estar relacionado con uno o más registros en otra tabla.
				Ejemplo:
					Supongamos que tenemos dos tablas: `departamentos` y `empleados`. Cada departamento puede tener múltiples empleados.
					CREATE TABLE departamentos (
						id INT PRIMARY KEY,
						nombre VARCHAR(50)
					);
					CREATE TABLE empleados (
						id INT PRIMARY KEY,
						nombre VARCHAR(50),
						departamento_id INT,
						FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
					);
			3. Relación Muchos a Muchos (Many-to-Many):
				En una relación muchos a muchos, múltiples registros en una tabla pueden estar relacionados con múltiples registros en otra tabla.
				Para implementar una relación muchos a muchos, generalmente se crea una tercera tabla que actúa como una tabla de enlace o intermedia.
				Ejemplo:
					Supongamos que tenemos dos tablas: "estudiantes" y "cursos". Un estudiante puede estar inscrito en múltiples cursos y un curso puede tener múltiples estudiantes inscritos.
					CREATE TABLE estudiantes (
					    id INT PRIMARY KEY,
					    nombre VARCHAR(50)
					);
					CREATE TABLE cursos (
					    id INT PRIMARY KEY,
					    nombre VARCHAR(50)
					);
					CREATE TABLE inscripciones (
					    estudiante_id INT,
					    curso_id INT,
					    PRIMARY KEY (estudiante_id, curso_id),
					    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
					    FOREIGN KEY (curso_id) REFERENCES cursos(id)
					);
					En la tabla "inscripciones", las combinaciones de "estudiante_id" y "curso_id" forman una relación muchos a muchos entre estudiantes y cursos.
		Estos son solo ejemplos básicos y las relaciones pueden volverse más complejas dependiendo de los requerimientos específicos de tu aplicación. Recuerda que es importante definir adecuadamente las claves primarias y extranjeras, y mantener la integridad referencial para asegurar la consistencia de los datos.
	* Integridad referencial:
		* Claves primarias y foráneas.
		* Acciones ON DELETE y ON UPDATE.
			ON DELETE/UPDATE RESTRICT/CASCADE
			En una relación de base de datos, puede haber una tabla padre y una tabla hija, donde la tabla hija tiene una clave externa que hace referencia a la clave primaria de la tabla padre. Cuando ocurre una acción de eliminación o actualización en la tabla padre, las opciones "ON DELETE" y "ON UPDATE" determinan cómo se manejarán los registros relacionados en la tabla hija.

			Aquí están las opciones más comunes para "ON DELETE" y "ON UPDATE":
			1. RESTRICT: Esto impide la eliminación o actualización de un registro en la tabla padre si hay registros relacionados en la tabla hija. Es decir, si se intenta eliminar o actualizar un registro en la tabla padre que tiene registros relacionados en la tabla hija, se generará un error y la operación no se llevará a cabo.
			2. CASCADE: Esta opción permite la eliminación o actualización en cascada, lo que significa que si se elimina o actualiza un registro en la tabla padre, los registros relacionados en la tabla hija también se eliminarán o actualizarán automáticamente. En otras palabras, la eliminación o actualización en la tabla padre se propaga a la tabla hija.
			3. SET NULL: Con esta opción, si se elimina o actualiza un registro en la tabla padre, la clave externa correspondiente en la tabla hija se establece en NULL. Esto significa que los registros relacionados en la tabla hija todavía existen, pero su referencia al registro padre se pierde.
			4. SET DEFAULT: Similar a "SET NULL", esta opción establece la clave externa correspondiente en la tabla hija en un valor predeterminado definido por el usuario en lugar de NULL. Esto implica que si se elimina o actualiza un registro en la tabla padre, la clave externa en la tabla hija se establece en un valor predeterminado.

			Es importante tener cuidado al utilizar las opciones "CASCADE", "SET NULL" y "SET DEFAULT", ya que pueden tener un impacto significativo en la integridad y consistencia de los datos en la base de datos. Se debe tener una comprensión clara de las relaciones y dependencias entre las tablas antes de usar estas opciones.

Nivel Intermedio:
6. Funciones avanzadas:
	* Funciones de cadena (SUBSTRING, CONCAT, etc.).
	* Funciones de fecha y hora (DATEADD, DATEDIFF, etc.).
	* Funciones condicionales (CASE).

7. Creación y uso de vistas.

8. Manipulación avanzada de datos:
	* Uso de CTEs (Common Table Expressions).
	* Manipulación de tablas temporales.

9. Expresiones regulares/REGEXP.

Nivel Avanzado:
10. Optimización de consultas:
	* Uso de índices.
	* Análisis del plan de ejecución.
	* Optimización de consultas complejas.

11. Procedimientos almacenados y funciones:
	* Creación y ejecución de procedimientos almacenados.
	* Funciones definidas por el usuario.

12. Transacciones avanzadas:
	* Transacciones anidadas y puntos de guarda.
	* Control de concurrencia y bloqueos.

13. Triggers (disparadores):
	* Creación y uso de triggers.
	* Aplicaciones y ejemplos prácticos.

14. Seguridad y permisos:
	* Creación de usuarios y asignación de permisos.
	* Roles y esquemas de seguridad.

Recuerda que este temario es solo una guía y la profundidad de cada tema puede variar según el enfoque del curso y la audiencia a la que esté dirigido. A medida que avanzas en el aprendizaje de SQL, también es útil practicar con ejercicios y casos de uso reales para fortalecer tus habilidades y conocimientos.
