A continuación, te presento un temario que podría utilizarse para un curso básico-avanzado de SQL, que abarca desde los conceptos fundamentales hasta técnicas más avanzadas de manipulación y optimización de bases de datos. SQL es un lenguaje de consulta estructurado ampliamente utilizado para administrar y consultar bases de datos relacionales.

https://miro.medium.com/v2/resize:fit:1400/1*Tg-zlEI1c9OfcBmyQ46PCw.png
https://www.w3schools.in/mysql/ddl-dml-dcl

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
		PostgreSQL:
			Tabla comparativa entre las versiones de PostgreSQL: https://www.postgresql.org/about/featurematrix/
		SQL Server:
			Tablas comparativas entre las versiones de SQL Server:
				https://learn.microsoft.com/es-es/troubleshoot/sql/releases/download-and-install-latest-updates
				https://www.microsoft.com/es-mx/sql-server/sql-server-2022-comparison
				https://www.microsoft.com/es-mx/sql-server/sql-server-2019-comparison
			T-SQL vs CLR:
				T-SQL (Transact-SQL) y CLR (Common Language Runtime) son dos tecnologías utilizadas en el entorno de bases de datos de Microsoft SQL Server, pero tienen propósitos y características bastante diferentes.
				T-SQL (Transact-SQL):
					1. Propósito:
						* T-SQL es un lenguaje de consulta y programación específico para bases de datos relacionales. Es el lenguaje estándar de SQL Server y se utiliza para interactuar con bases de datos, realizar consultas, manipular datos y programar lógica de base de datos.
					2. Funcionalidades:
						* Permite realizar consultas SELECT, INSERT, UPDATE, DELETE para manipular datos.
						* Soporta procedimientos almacenados, funciones definidas por el usuario, disparadores (triggers), cursores, entre otras características de programación de bases de datos.
						* No es un lenguaje de programación completo y no permite construcciones de control de flujo complejas.
					3. Seguridad:
						* T-SQL se ejecuta dentro del contexto del motor de base de datos, lo que significa que hereda la seguridad y permisos de la base de datos en la que se está ejecutando.
					4. Desempeño:
						* T-SQL está altamente optimizado para operaciones de bases de datos y está altamente integrado con el motor de bases de datos de SQL Server, lo que significa que puede tener un buen desempeño en operaciones de bases de datos estándar.
				CLR (Common Language Runtime):
					1. Propósito:
						* CLR permite a los desarrolladores escribir código en lenguajes de programación .NET (como C# o VB.NET) y ejecutarlo dentro del entorno de SQL Server. Esto significa que puedes utilizar toda la potencia y flexibilidad de .NET en tu base de datos.
					2. Funcionalidades:
						* Permite a los desarrolladores crear y ejecutar funciones y procedimientos almacenados en lenguajes .NET.
						* Ofrece acceso a bibliotecas y clases .NET, lo que puede ser muy útil para operaciones complejas y personalizadas dentro de la base de datos.
					3. Seguridad:
						* CLR tiene su propio sistema de seguridad y permisos, lo que significa que puedes controlar de manera más fina qué operaciones y recursos están disponibles para el código .NET en tu base de datos.
					4. Desempeño:
						* El código CLR puede tener un poco de sobrecarga debido a la necesidad de interactuar con el entorno .NET. Sin embargo, para operaciones complejas que requieren la flexibilidad de .NET, puede ser mucho más eficiente que intentar realizar la misma operación en T-SQL.
				Cuándo usar cada uno:
					* T-SQL: Es la elección predeterminada y generalmente más eficiente para la mayoría de las operaciones de bases de datos estándar. Debe ser tu primera opción para consultas, manipulación de datos y muchas operaciones de bases de datos.
					* CLR: Deberías considerar el uso de CLR cuando necesitas realizar operaciones extremadamente complejas, como algoritmos de cálculos complejos, operaciones de archivos, interacción con APIs externas, o cuando tienes una base de código en .NET que deseas reutilizar en tu base de datos.
				En resumen, T-SQL es la herramienta principal para operaciones de bases de datos estándar, mientras que CLR proporciona una forma de extender la funcionalidad de tu base de datos utilizando .NET. La elección entre ambos dependerá de las necesidades específicas de tu aplicación y base de datos.
		Oracle:
			Oracle Database 23c Free For Developers: https://www.youtube.com/watch?v=ea30EsVYdXU&t=4s

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
		* Propósito: Se utiliza para eliminar todos los registros de una tabla y libera el espacio asignado para ellos (pero mantener la estructura de la tabla intacta).
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
				CREATE [ OR REPLACE ] [ TEMP | TEMPORARY ] [ RECURSIVE ] VIEW name [ ( column_name [, ...] ) ]
					[ WITH ( view_option_name [= view_option_value] [, ... ] ) ]
					AS query
					[ WITH [ CASCADED | LOCAL ] CHECK OPTION ]
				https://www.postgresql.org/docs/current/sql-createview.html
			Para SQL Server:
				-- Syntax for SQL Server and Azure SQL Database
				CREATE [ OR ALTER ] VIEW [ schema_name . ] view_name [ (column [ ,...n ] ) ]
				[ WITH <view_attribute> [ ,...n ] ]
				AS select_statement
				[ WITH CHECK OPTION ]
				[ ; ]
				<view_attribute> ::=
				{
					[ ENCRYPTION ]
					[ SCHEMABINDING ]
					[ VIEW_METADATA ]
				}

				-- Syntax for Azure Synapse Analytics and Parallel Data Warehouse
				CREATE VIEW [ schema_name . ] view_name [  ( column_name [ ,...n ] ) ]
				AS <select_statement>
				[;]
				<select_statement> ::=
					[ WITH <common_table_expression> [ ,...n ] ]
					SELECT <select_criteria>

				-- Syntax for [!INCLUDE [fabric](../../includes/fabric.md)]
				CREATE [ OR ALTER ] VIEW [ schema_name . ] view_name [  ( column_name [ ,...n ] ) ]
				AS <select_statement>
				[;]
				<select_statement> ::=
					[ WITH <common_table_expression> [ ,...n ] ]
					SELECT <select_criteria>
				https://learn.microsoft.com/es-es/sql/t-sql/statements/create-view-transact-sql?view=sql-server-ver16
			Para Oracle:
				https://docs.oracle.com/javadb/10.6.2.1/ref/rrefsqlj15446.html
			Para MySQL:
				CREATE
					[OR REPLACE]
					[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
					[DEFINER = user]
					[SQL SECURITY { DEFINER | INVOKER }]
					VIEW view_name [(column_list)]
					AS select_statement
					[WITH [CASCADED | LOCAL] CHECK OPTION]
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

			Para PostgreSQL:
				Sintaxis:
					CREATE [ OR REPLACE ] PROCEDURE
						name ( [ [ argmode ] [ argname ] argtype [ { DEFAULT | = } default_expr ] [, ...] ] )
						{ LANGUAGE lang_name
							| TRANSFORM { FOR TYPE type_name } [, ... ]
							| [ EXTERNAL ] SECURITY INVOKER | [ EXTERNAL ] SECURITY DEFINER
							| SET configuration_parameter { TO value | = value | FROM CURRENT }
							| AS 'definition'
							| AS 'obj_file', 'link_symbol'
							| sql_body
						} ...
				Ejemplos:
					CREATE PROCEDURE insert_data(a integer, b integer)
					LANGUAGE SQL
					AS $$
						INSERT INTO tbl VALUES (a);
						INSERT INTO tbl VALUES (b);
					$$;
					CALL insert_data(1, 2);

					CREATE PROCEDURE insert_data(a integer, b integer)
					LANGUAGE SQL
					BEGIN ATOMIC
						INSERT INTO tbl VALUES (a);
						INSERT INTO tbl VALUES (b);
					END;
					CALL insert_data(1, 2);
				https://www.postgresql.org/docs/current/sql-createprocedure.html

				En PostgreSQL puedes crear procedimientos almacenados utilizando diferentes lenguajes, como SQL, PL/pgSQL (similar a PL/SQL de Oracle), PL/Python, PL/Perl, etc. Cada lenguaje tiene sus propias ventajas y puede ser más adecuado para diferentes situaciones.
				Aquí te muestro cómo crear un procedimiento almacenado utilizando diferentes lenguajes en PostgreSQL:
				1. SQL:
					CREATE OR REPLACE PROCEDURE nombre_procedimiento(param1 tipo1, param2 tipo2) AS
					$$
					BEGIN
						-- Código SQL del procedimiento aquí
					END;
					$$
					LANGUAGE sql;
					CALL nombre_procedimiento(param1_value, param2_value);
				2. PL/pgSQL (similar a PL/SQL):
					CREATE OR REPLACE PROCEDURE nombre_procedimiento(param1 tipo1, param2 tipo2) AS
					$$
					DECLARE
						-- Declaraciones de variables aquí
					BEGIN
						-- Código PL/pgSQL del procedimiento aquí
					END;
					$$
					LANGUAGE plpgsql;
					CALL nombre_procedimiento(param1_value, param2_value);
				3. PL/Python:
					Primero, asegúrate de que la extensión PL/Python esté instalada. Luego, puedes crear un procedimiento almacenado en PL/Python.
					CREATE OR REPLACE PROCEDURE nombre_procedimiento(param1 tipo1, param2 tipo2) AS
					$$
						-- Código PL/Python del procedimiento aquí
					$$
					LANGUAGE plpythonu;
					CALL nombre_procedimiento(param1_value, param2_value);
				4. PL/Perl:
					Primero, asegúrate de que la extensión PL/Perl esté instalada. Luego, puedes crear un procedimiento almacenado en PL/Perl.
					CREATE OR REPLACE PROCEDURE nombre_procedimiento(param1 tipo1, param2 tipo2) AS
					$$
						-- Código PL/Perl del procedimiento aquí
					$$
					LANGUAGE plperl;
					CALL nombre_procedimiento(param1_value, param2_value);
				Recuerda que la elección del lenguaje dependerá de tus necesidades y de tu familiaridad con cada uno. Cada lenguaje tiene sus propias capacidades y ventajas, por lo que es recomendable elegir el que mejor se adapte a tus requerimientos específicos.
				GPT
			Para SQL Server:
				USE AdventureWorks2022;  
				GO;
				CREATE PROCEDURE HumanResources.uspGetEmployeesTest2   
					@LastName nvarchar(50),   
					@FirstName nvarchar(50)   
				AS
					SET NOCOUNT ON;  
					SELECT FirstName, LastName, Department  
					FROM HumanResources.vEmployeeDepartmentHistory  
					WHERE FirstName = @FirstName AND LastName = @LastName  
					AND EndDate IS NULL;  
				GO;
				EXECUTE HumanResources.uspGetEmployeesTest2 N'Ackerman', N'Pilar';
				-- Or
				EXEC HumanResources.uspGetEmployeesTest2 @LastName = N'Ackerman', @FirstName = N'Pilar';
				GO;
				-- Or
				EXECUTE HumanResources.uspGetEmployeesTest2 @FirstName = N'Pilar', @LastName = N'Ackerman';
				GO;
				https://learn.microsoft.com/en-us/sql/relational-databases/stored-procedures/create-a-stored-procedure?view=sql-server-ver16
				https://learn.microsoft.com/es-mx/sql/relational-databases/stored-procedures/create-a-stored-procedure?view=sql-server-ver16

				En Microsoft SQL Server, puedes crear procedimientos almacenados utilizando Transact-SQL (T-SQL). Hay varias formas de hacerlo. Aquí te muestro tres de las formas más comunes:
					1. Crear un Procedimiento Almacenado Básico:
						Sintaxis:
							CREATE PROCEDURE nombre_procedimiento
							AS
							BEGIN
								-- Código del procedimiento aquí
							END;
						Ejemplo:
							CREATE PROCEDURE obtener_nombre
							AS
							BEGIN
								SELECT nombre FROM personas WHERE id = @id_persona;
							END;
					2. Crear un Procedimiento Almacenado con Parámetros:
						Sintaxis:
							CREATE PROCEDURE nombre_procedimiento
								@param1 tipo1,
								@param2 tipo2
							AS
							BEGIN
								-- Código del procedimiento aquí
							END;
						Ejemplo:
							CREATE PROCEDURE obtener_nombre
								@id_persona INT
							AS
							BEGIN
								SELECT nombre FROM personas WHERE id = @id_persona;
							END;
					3. Crear un Procedimiento Almacenado con Parámetros de Salida:
						Sintaxis:
							CREATE PROCEDURE nombre_procedimiento
								@param1 tipo1,
								@param2 tipo2,
								@param3 tipo3 OUTPUT
							AS
							BEGIN
								-- Código del procedimiento aquí
							END;
						Ejemplo:
							CREATE PROCEDURE obtener_nombre
								@id_persona INT,
								@nombre_persona VARCHAR(50) OUTPUT
							AS
							BEGIN
								SELECT @nombre_persona = nombre FROM personas WHERE id = @id_persona;
							END;
				Estos son solo ejemplos básicos. Puedes agregar más complejidad y funcionalidades según tus necesidades. Recuerda ajustar los nombres, tipos y lógica de tus procedimientos según tus requisitos específicos.
				GPT
			Para Oracle:
			Para MySQL:
				CREATE
					[DEFINER = user]
					PROCEDURE [IF NOT EXISTS] sp_name ([proc_parameter[,...]])
					[characteristic ...] routine_body

				proc_parameter: [ IN | OUT | INOUT ] param_name type

				type: Any valid MySQL data type

				characteristic: {
					COMMENT 'string'
					| LANGUAGE SQL
					| [NOT] DETERMINISTIC
					| { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
					| SQL SECURITY { DEFINER | INVOKER }
				}

				routine_body: Valid SQL routine statement
				https://dev.mysql.com/doc/refman/8.0/en/create-procedure.html

				En MySQL, puedes crear procedimientos almacenados utilizando el lenguaje de programación PL/SQL. Aquí te muestro dos formas comunes de crear procedimientos almacenados en MySQL:
					1. Crear un Procedimiento Almacenado Básico:
						Sintaxis:
							DELIMITER //
							CREATE PROCEDURE nombre_procedimiento()
							BEGIN
								-- Código del procedimiento aquí
							END //
							DELIMITER ;
						Ejemplo:
							DELIMITER //
							CREATE PROCEDURE obtener_nombre()
							BEGIN
								SELECT nombre FROM personas WHERE id = @id_persona;
							END //
							DELIMITER ;
					2. Crear un Procedimiento Almacenado con Parámetros:
						Sintaxis:
							DELIMITER //
							CREATE PROCEDURE nombre_procedimiento(param1 tipo1, param2 tipo2)
							BEGIN
								-- Código del procedimiento aquí
							END //
							DELIMITER ;
						Ejemplo:
							DELIMITER //
							CREATE PROCEDURE obtener_nombre(IN id_persona INT)
							BEGIN
								SELECT nombre FROM personas WHERE id = id_persona;
							END //
							DELIMITER ;
				Estos son solo ejemplos básicos. Puedes agregar más complejidad y funcionalidades según tus necesidades. Recuerda ajustar los nombres, tipos y lógica de tus procedimientos según tus requisitos específicos.
				Recuerda que en MySQL, debes cambiar el delimitador antes y después de la definición del procedimiento almacenado. Esto se debe a que el punto y coma (;) es utilizado para finalizar comandos en MySQL, y si no cambias el delimitador, el motor de base de datos interpretará incorrectamente el final del procedimiento.
				GPT
		CREATE FUNCTION
			Para PostgreSQL:
				CREATE [ OR REPLACE ] FUNCTION
					name ( [ [ argmode ] [ argname ] argtype [ { DEFAULT | = } default_expr ] [, ...] ] )
					[ RETURNS rettype | RETURNS TABLE ( column_name column_type [, ...] ) ]
					{ LANGUAGE lang_name
						| TRANSFORM { FOR TYPE type_name } [, ... ]
						| WINDOW
						| { IMMUTABLE | STABLE | VOLATILE }
						| [ NOT ] LEAKPROOF
						| { CALLED ON NULL INPUT | RETURNS NULL ON NULL INPUT | STRICT }
						| { [ EXTERNAL ] SECURITY INVOKER | [ EXTERNAL ] SECURITY DEFINER }
						| PARALLEL { UNSAFE | RESTRICTED | SAFE }
						| COST execution_cost
						| ROWS result_rows
						| SUPPORT support_function
						| SET configuration_parameter { TO value | = value | FROM CURRENT }
						| AS 'definition'
						| AS 'obj_file', 'link_symbol'
						| sql_body
					} ...
				https://www.postgresql.org/docs/current/sql-createfunction.html

				En PostgreSQL, puedes crear funciones utilizando varios lenguajes, incluido PL/pgSQL (similar a PL/SQL en Oracle), SQL, PL/Python, PL/Perl, entre otros. A continuación, te mostraré cómo crear funciones en PostgreSQL utilizando diferentes lenguajes:
					1. Usando PL/pgSQL (Similar a PL/SQL en Oracle):
						Sintaxis:
							CREATE OR REPLACE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno AS
							$$
							DECLARE
								-- Declaraciones de variables aquí
							BEGIN
								-- Código de la función aquí
							END;
							$$
							LANGUAGE plpgsql;

							CREATE OR REPLACE FUNCTION nombre_funcion()
							RETURNS tipo_retorno AS
							$$
							DECLARE
								-- Declaraciones de variables aquí
							BEGIN
								-- Código de la función aquí
							END;
							$$
							LANGUAGE plpgsql;
						Ejemplo:
							CREATE OR REPLACE FUNCTION obtener_nombre(id_persona INT)
							RETURNS TEXT AS
							$$
							DECLARE
								nombre_persona TEXT;
							BEGIN
								SELECT nombre INTO nombre_persona FROM personas WHERE id = id_persona;
								RETURN nombre_persona;
							END;
							$$
							LANGUAGE plpgsql;
					2. Usando SQL:
						Sintaxis:
							CREATE OR REPLACE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno AS
							$$
								-- Código de la función en SQL aquí
							$$
							LANGUAGE sql;

							CREATE OR REPLACE FUNCTION nombre_funcion()
							RETURNS tipo_retorno AS
							'
								-- Código del procedimiento aquí
							'
							LANGUAGE sql;
						Ejemplo:
							CREATE OR REPLACE FUNCTION obtener_nombre(id_persona INT)
							RETURNS TEXT AS
							'
								SELECT nombre FROM personas WHERE id = $1;
							'
							LANGUAGE sql;
						Recuerda que el lenguaje SQL tiene algunas limitaciones en comparación con PL/pgSQL. Por ejemplo, no puedes utilizar estructuras de control como bucles o condicionales en una función escrita en SQL. Sin embargo, es muy útil para funciones más simples que consisten principalmente en consultas SQL.
					3. Usando PL/Python:
						Para usar otros lenguajes, primero necesitas instalar las extensiones correspondientes y luego puedes crear procedimientos almacenados con esos lenguajes. Por ejemplo, para PL/Python.
						Primero, instala la extensión PL/Python:
							CREATE EXTENSION plpythonu;
						Luego, puedes crear una función en PL/Python:
							CREATE OR REPLACE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno AS
							$$
								-- Código en PL/Python aquí
							$$
							LANGUAGE plpythonu;

							CREATE OR REPLACE FUNCTION nombre_funcion()
							RETURNS tipo_retorno AS
							$$
								-- Código en PL/Python aquí
							$$
							LANGUAGE plpythonu;
					4. Usando PL/Perl:
						Primero, asegúrate de que la extensión PL/Perl esté instalada:
							CREATE EXTENSION plperl;
						Luego, puedes crear una función en PL/Perl:
							CREATE OR REPLACE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno AS
							$$
								-- Código de la función en PL/Perl aquí
							$$
							LANGUAGE plperl;
					5. Usando otros lenguajes:
						Para utilizar otros lenguajes, primero necesitas instalar las extensiones correspondientes y luego puedes crear funciones con esos lenguajes.
					Y para invocar a cualquier tipo de función, es con un SELECT:
						SELECT nombre_funcion(param1_value, param2_value);

				NOTA: Es importante mencionar que en PostgreSQL, las funciones pueden ser utilizadas en consultas SQL como cualquier otra expresión. Puedes usar el resultado de la función en una consulta, asignarlo a una variable, o incluso utilizarlo como parte de una instrucción más compleja.
				NOTA: Es importante mencionar que, aunque PostgreSQL soporta múltiples lenguajes de programación para la creación de funciones, PL/pgSQL es el lenguaje nativo y proporciona la mayoría de las funcionalidades y características. Otros lenguajes son útiles cuando necesitas integrar código externo o tienes experiencia previa en un lenguaje específico.
				Recuerda ajustar los nombres, tipos y lógica de tus funciones según tus requisitos específicos.
			Para SQL Server:
				Crea una función definida por el usuario. Una función definida por el usuario es una rutina de Transact-SQL o Common Language Runtime (CLR) que acepta parámetros, realiza una acción, como un cálculo complejo, y devuelve el resultado de esa acción como valor. El valor devuelto puede ser un valor escalar (único) o una tabla. Utilice esta instrucción para crear una rutina reutilizable que se pueda utilizar de estas formas:
					* En instrucciones Transact-SQL como SELECT
					* En las aplicaciones que llaman a la función
					* En la definición de otra función definida por el usuario
					* Para parametrizar una vista o mejorar la funcionalidad de una vista indizada
					* Para definir una columna en una tabla
					* Para definir una restricción CHECK en una columna
					* Para reemplazar un procedimiento almacenado
					* Usar una función insertada como predicado de filtro de la directiva de seguridad
				Las 3 formas comunes para las funciones:
					1. Función Escalar:
						Una función escalar devuelve un solo valor basado en los parámetros de entrada.
						Sintaxis:
							-- Transact-SQL Scalar Function Syntax
							CREATE [ OR ALTER ] FUNCTION [ schema_name. ] function_name
							( [ { @parameter_name [ AS ][ type_schema_name. ] parameter_data_type [ NULL ] [ = default ] [ READONLY ] }
								[ ,...n ]
							] )
							RETURNS return_data_type
								[ WITH <function_option> [ ,...n ] ]
								[ AS ]
								BEGIN
									function_body
									RETURN scalar_expression
								END
							[ ; ]

							CREATE FUNCTION nombre_funcion (@param1 tipo1, @param2 tipo2)
							RETURNS tipo_retorno
							AS
							BEGIN
								-- Código de la función aquí
								RETURN valor_resultado;
							END;
						Ejemplo:
							CREATE FUNCTION obtener_nombre (@id_persona INT)
							RETURNS NVARCHAR(50)
							AS
							BEGIN
								DECLARE @nombre NVARCHAR(50);
								SELECT @nombre = nombre FROM personas WHERE id = @id_persona;
								RETURN @nombre;
							END;
					2. Función de Tabla Inline:
						Una función de tabla inline devuelve una tabla (o conjunto de filas) como resultado.
						Sintaxis:
							-- Transact-SQL Inline Table-Valued Function Syntax
							CREATE [ OR ALTER ] FUNCTION [ schema_name. ] function_name
							( [ { @parameter_name [ AS ] [ type_schema_name. ] parameter_data_type [ NULL ] [ = default ] [ READONLY ] }
								[ ,...n ]
							] )
							RETURNS TABLE
								[ WITH <function_option> [ ,...n ] ]
								[ AS ]
								RETURN [ ( ] select_stmt [ ) ]
							[ ; ]

							CREATE FUNCTION nombre_funcion (@param1 tipo1, @param2 tipo2)
							RETURNS TABLE
							AS
							RETURN (
								-- Código de la función aquí
								SELECT columna1, columna2 FROM tabla WHERE condicion
							);
						Ejemplo:
							CREATE FUNCTION obtener_personas_en_ciudad (@ciudad NVARCHAR(50))
							RETURNS TABLE
							AS
							RETURN (
								SELECT nombre, edad FROM personas WHERE ciudad = @ciudad
							);
					3. Función de Tabla Multiline:
					Una función de tabla multiline también devuelve una tabla, pero permite más lógica y operaciones dentro de la función.
					Sintaxis:
						-- Transact-SQL Multi-Statement Table-Valued Function Syntax
						CREATE [ OR ALTER ] FUNCTION [ schema_name. ] function_name
						( [ { @parameter_name [ AS ] [ type_schema_name. ] parameter_data_type [ NULL ] [ = default ] [READONLY] }
							[ ,...n ]
						] )
						RETURNS @return_variable TABLE <table_type_definition>
							[ WITH <function_option> [ ,...n ] ]
							[ AS ]
							BEGIN
								function_body
								RETURN
							END
						[ ; ]

						CREATE FUNCTION nombre_funcion (@param1 tipo1, @param2 tipo2)
						RETURNS @tabla_resultado TABLE (columna1 tipo1, columna2 tipo2)
						AS
						BEGIN
							-- Código de la función aquí
							INSERT INTO @tabla_resultado (columna1, columna2) VALUES (valor1, valor2);
							RETURN;
						END;
					Ejemplo:
						CREATE FUNCTION obtener_personas_jovenes ()
						RETURNS @tabla_resultado TABLE (nombre NVARCHAR(50), edad INT)
						AS
						BEGIN
							INSERT INTO @tabla_resultado (nombre, edad)
							SELECT nombre, edad FROM personas WHERE edad < 30;
							RETURN;
						END;
				https://learn.microsoft.com/en-us/sql/t-sql/statements/create-function-transact-sql?view=sql-server-ver16
				https://learn.microsoft.com/es-mx/sql/t-sql/statements/create-function-transact-sql?view=sql-server-ver16
			Para Oracle:
				https://docs.oracle.com/en/database/oracle/oracle-database/12.2/lnpls/CREATE-FUNCTION-statement.html
			Para MySQL:
				CREATE
					[DEFINER = user]
					FUNCTION [IF NOT EXISTS] sp_name ([func_parameter[,...]])
					RETURNS type
					[characteristic ...] routine_body

				func_parameter: param_name type

				type: Any valid MySQL data type

				characteristic: {
					COMMENT 'string'
					| LANGUAGE SQL
					| [NOT] DETERMINISTIC
					| { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
					| SQL SECURITY { DEFINER | INVOKER }
				}

				routine_body: Valid SQL routine statement
				https://dev.mysql.com/doc/refman/8.0/en/create-function.html
					https://dev.mysql.com/doc/refman/8.0/en/create-procedure.html
					https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html

				En MySQL, puedes crear funciones utilizando el lenguaje SQL o utilizando un lenguaje de programación como PL/pgSQL, PL/Python, entre otros. A continuación, te mostraré cómo crear funciones en MySQL utilizando diferentes métodos:
					1. Crear una Función en SQL:
						Sintaxis:
							CREATE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno
							BEGIN
								-- Código de la función aquí
								RETURN valor_resultado;
							END;
						Ejemplo:
							CREATE FUNCTION obtener_nombre(id_persona INT)
							RETURNS VARCHAR(50)
							BEGIN
								DECLARE nombre_persona VARCHAR(50);
								SELECT nombre INTO nombre_persona FROM personas WHERE id = id_persona;
								RETURN nombre_persona;
							END;
					2. Crear una Función con PL/pgSQL:
						Sintaxis:
							DELIMITER //
							CREATE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno
							BEGIN
								-- Código de la función aquí
								RETURN valor_resultado;
							END //
							DELIMITER ;
						Ejemplo:
							DELIMITER //
							CREATE FUNCTION obtener_nombre(id_persona INT)
							RETURNS VARCHAR(50)
							BEGIN
								DECLARE nombre_persona VARCHAR(50);
								SELECT nombre INTO nombre_persona FROM personas WHERE id = id_persona;
								RETURN nombre_persona;
							END //
							DELIMITER ;
					3. Crear una Función con PL/Python:
						Sintaxis:
							DELIMITER //
							CREATE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno
							BEGIN
								-- Código de la función aquí
								RETURN valor_resultado;
							END //
							DELIMITER ;
						Ejemplo:
							DELIMITER //
							CREATE FUNCTION obtener_nombre(id_persona INT)
							RETURNS VARCHAR(50)
							BEGIN
								DECLARE nombre_persona VARCHAR(50);
								SELECT nombre INTO nombre_persona FROM personas WHERE id = id_persona;
								RETURN nombre_persona;
							END //
							DELIMITER ;
					4. Crear una Función con PL/Perl:
						Sintaxis:
							DELIMITER //
							CREATE FUNCTION nombre_funcion(param1 tipo1, param2 tipo2)
							RETURNS tipo_retorno
							BEGIN
								-- Código de la función aquí
								RETURN valor_resultado;
							END //
							DELIMITER ;
						Ejemplo:
							DELIMITER //
							CREATE FUNCTION obtener_nombre(id_persona INT)
							RETURNS VARCHAR(50)
							BEGIN
								DECLARE nombre_persona VARCHAR(50);
								SELECT nombre INTO nombre_persona FROM personas WHERE id = id_persona;
								RETURN nombre_persona;
							END //
							DELIMITER ;
				Recuerda que los nombres, tipos y lógica de tus funciones deben adaptarse a tus necesidades específicas. Estos son solo ejemplos básicos para darte una idea de cómo crear funciones en MySQL.
				GPT
		CREATE TRIGGER
			Para PostgreSQL:
				CREATE [ OR REPLACE ] [ CONSTRAINT ] TRIGGER name { BEFORE | AFTER | INSTEAD OF } { event [ OR ... ] }
					ON table_name
					[ FROM referenced_table_name ]
					[ NOT DEFERRABLE | [ DEFERRABLE ] [ INITIALLY IMMEDIATE | INITIALLY DEFERRED ] ]
					[ REFERENCING { { OLD | NEW } TABLE [ AS ] transition_relation_name } [ ... ] ]
					[ FOR [ EACH ] { ROW | STATEMENT } ]
					[ WHEN ( condition ) ]
					EXECUTE { FUNCTION | PROCEDURE } function_name ( arguments )
				where "event" can be one of:
					INSERT
					UPDATE [ OF column_name [, ... ] ]
					DELETE
					TRUNCATE
				La siguiente tabla resume qué tipos de activadores se pueden usar en tablas, vistas y tablas externas:
					┌──────────┬────────┬───────────────────┬──────────────────────────┐
					│  Cuando  │ Evento │ Nivel de registro │ Nivel de declaración     │
					├──────────┼────────┼───────────────────┼──────────────────────────┤
					│          │ INSERT │ Tablas y tablas   │ Tablas, vistas y tablas  │
					│          │ UPDATE │ foráneas.         │ foráneas.                │
					│          │ DELETE │                   │                          │
					│  BEFORE  ├────────┼───────────────────┼──────────────────────────┤
					│          │TRUNCATE│         —         │ Tablas y tablas foráneas.│
					├──────────┼────────┼───────────────────┼──────────────────────────┤
					│          │ INSERT │ Tablas y tablas   │ Tablas, vistas y tablas  │
					│          │ UPDATE │ foráneas.         │ foráneas.                │
					│          │ DELETE │                   │                          │
					│  AFTER   ├────────┼───────────────────┼──────────────────────────┤
					│          │TRUNCATE│         —         │ Tablas y tablas foráneas.│
					├──────────┼────────┼───────────────────┼──────────────────────────┤
					│          │ INSERT │                   │                          │
					│          │ UPDATE │       Vistas      │             —            │
					│          │ DELETE │                   │                          │
					│INSTEAD OF├────────┼───────────────────┼──────────────────────────┤
					│          │TRUNCATE│         —         │             —            │
					└──────────┴────────┴───────────────────┴──────────────────────────┘
				BEFORE/AFTER/INSTEAD OF: Determina si la función se llama antes, después o en lugar del evento. Un desencadenador de restricción solo se puede especificar como AFTER.
				https://www.postgresql.org/docs/current/sql-createtrigger.html
			Para SQL Server:
				https://learn.microsoft.com/es-es/sql/t-sql/statements/create-trigger-transact-sql?view=sql-server-ver16
			Para Oracle:
				https://docs.oracle.com/cd/E11882_01/appdev.112/e25519/create_trigger.htm
			Para MySQL:
				https://dev.mysql.com/doc/refman/8.0/en/create-trigger.html
		https://www.w3schools.com/sql/sql_ref_create.asp
	DECLARE CURSOR
		https://www.postgresql.org/docs/current/plpgsql-cursors.html
		https://learn.microsoft.com/es-es/sql/relational-databases/cursors?view=sql-server-ver16
		https://learn.microsoft.com/es-es/sql/t-sql/language-elements/declare-cursor-transact-sql?view=sql-server-ver16
		https://dev.mysql.com/doc/refman/8.0/en/cursors.html

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

6. DCL: Control de datos:
	En PostgreSQL:
	En SQL Server:
		El DCL (Data Control Language) en SQL Server se utiliza para gestionar los permisos y la seguridad de la base de datos:
			1. Grupos: En SQL Server, no hay una entidad específica llamada "grupo" en el contexto de permisos de base de datos. Sin embargo, los permisos pueden asignarse a roles y usuarios, que son conceptos relacionados.
			2. Roles: Los roles son una forma de agrupar usuarios y asignar permisos a ese grupo. Puedes usar DCL para asignar permisos a roles y luego agregar usuarios a esos roles.
			3. Esquemas: En SQL Server, los esquemas son una forma de organizar objetos en la base de datos. Puedes aplicar permisos a esquemas específicos, controlando quién puede acceder y manipular objetos dentro de esos esquemas.
			4. Usuarios: El DCL se utiliza para asignar permisos a usuarios específicos en la base de datos.
			5. Bases de datos: Puedes usar DCL para asignar permisos a usuarios o roles a nivel de base de datos. Esto incluye permisos como SELECT, INSERT, UPDATE, DELETE, etc.
			6. Tablas: DCL afecta directamente a las tablas al permitir o denegar permisos específicos a usuarios o roles para realizar acciones como SELECT, INSERT, UPDATE, DELETE, etc.
			7. Código DML (Data Manipulation Language): DCL se utiliza para controlar quién puede realizar operaciones de manipulación de datos, como INSERT, UPDATE y DELETE, en tablas específicas.
			8. Código DQL (Data Query Language): DCL también se utiliza para controlar quién puede realizar consultas (SELECT) en tablas específicas.
			9. Código DDL (Data Definition Language): DCL afecta la capacidad de realizar operaciones de definición de datos, como CREATE, ALTER y DROP. Por ejemplo, puedes controlar quién tiene permiso para crear o modificar tablas, vistas, procedimientos almacenados, etc.
			10. Procedimientos almacenados y funciones: Puedes utilizar DCL para controlar quién tiene permisos para ejecutar procedimientos almacenados y funciones en la base de datos.
			11. Vistas: Los permisos también se aplican a las vistas, permitiendo o denegando a los usuarios la capacidad de realizar consultas en esas vistas.
			12. Secuencias: Si estás utilizando secuencias (SQL Server 2012 y versiones posteriores), también puedes aplicar permisos a estas para controlar quién puede utilizarlas.
			13. Sinónimos: Los sinónimos son objetos de base de datos que permiten a los usuarios referenciar otros objetos de base de datos mediante un nombre alternativo. Puedes aplicar permisos a los sinónimos.
		En resumen, los conceptos que mencionaste están en gran medida alineados con las áreas de impacto del DCL en SQL Server. Asegúrate de asignar permisos de manera adecuada para garantizar la seguridad y la integridad de tus datos.
	En Oracle:
	En MySQL:

	GRANT:
		Para PostgreSQL:
		Para SQL Server:
			-- Syntax for SQL Server and Azure SQL Database
			-- Simplified syntax for GRANT
			GRANT { ALL [ PRIVILEGES ] }
				| permission [ ( column [ ,...n ] ) ] [ ,...n ]
				[ ON [ class :: ] securable ] TO principal [ ,...n ]
				[ WITH GRANT OPTION ] [ AS principal ]

			Argumentos:
				ALL
					Esta opción ha quedado desusada y solo se mantiene por razones de compatibilidad con versiones anteriores. No concede todos los permisos posibles. Conceder ALL es equivalente a conceder los siguientes permisos:
						* Si el elemento protegible es una base de datos, ALL significa BACKUP DATABASE, BACKUP LOG, CREATE DATABASE, CREATE DEFAULT, CREATE FUNCTION, CREATE PROCEDURE, CREATE RULE, CREATE TABLE y CREATE VIEW.
						* Si el elemento protegible es una función escalar, ALL significa EXECUTE y REFERENCES.
						* Si el elemento protegible es una función con valores de tabla, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
						* Si el elemento protegible es un procedimiento almacenado, ALL significa EXECUTE.
						* Si el elemento protegible es una tabla, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
						* Si el elemento protegible es una vista, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
				PRIVILEGES
					Incluido por compatibilidad con ISO. No cambia el comportamiento de ALL.
				permission
					Es el nombre de un permiso. Las asignaciones de permisos válidas a elementos protegibles se describen en los subtemas que se muestran a continuación.
				column
					Especifica el nombre de una columna de una tabla en la que se van a conceder los permisos. Los paréntesis () son obligatorios.
				class
					Especifica la clase del elemento protegible en el que se va a conceder el permiso. El calificador de ámbito :: es obligatorio.
				securable
					Especifica el elemento protegible para el que se va a conceder el permiso.
				TO principal
					Es el nombre de una entidad de seguridad. Las entidades de seguridad a las que se pueden conceder permisos para un elemento protegible varían según el elemento protegible. Vea los subtemas enumerados a continuación para comprobar las combinaciones válidas.
				GRANT OPTION
					Indica que el receptor también podrá conceder el permiso especificado a otras entidades de seguridad.
				AS principal
					Use la cláusula AS de la entidad de seguridad para indicar que la entidad de seguridad registrada como el otorgante del permiso debe ser una entidad de seguridad distinta de la persona que ejecuta la instrucción. Por ejemplo, suponga que la usuaria María tiene el principal_id 12 y el usuario Raúl tiene el principal_id 15. Mary ejecuta GRANT SELECT ON OBJECT::X TO Steven WITH GRANT OPTION AS Raul;. Ahora, la tabla sys.database_permissions indicará que el grantor_principal_id era 15 (Raul), aunque la instrucción realmente la ejecutó el usuario 13 (Mary).
					Normalmente, el uso de la cláusula AS no se suele recomendar, a menos que necesite definir explícitamente la cadena de permisos. Para más información, vea la sección Resumen del algoritmo de comprobación de permiso de Permisos (motor de base de datos).
					El uso de AS en esta instrucción no implica la capacidad de suplantar a otro usuario.
			https://learn.microsoft.com/es-es/sql/t-sql/statements/grant-transact-sql?view=sql-server-ver16
		Para Oracle:
		Para MySQL:
	REVOKE:
		Para PostgreSQL:
		Para SQL Server:
			-- Syntax for SQL Server and Azure SQL Database
			-- Simplified syntax for REVOKE
			REVOKE [ GRANT OPTION FOR ]
				{
					[ ALL [ PRIVILEGES ] ]
					| permission [ ( column [ ,...n ] ) ] [ ,...n ]
				}
				[ ON [ class :: ] securable ]
				{ TO | FROM } principal [ ,...n ]
				[ CASCADE] [ AS principal ]

			Argumentos:
				GRANT OPTION FOR
					Indica que se revocará la capacidad de conceder el permiso especificado. Se requiere cuando se utiliza el argumento CASCADE.
					Importante:
						Si la entidad de seguridad dispone del permiso especificado sin la opción GRANT, se revocará el permiso.
				ALL
					Se aplica a: SQL Server 2008 (10.0.x) y versiones posteriores
					Esta opción no revoca todos los permisos posibles. Revocar ALL es equivalente a revocar los siguientes permisos:
						* Si el elemento protegible es una base de datos, ALL significa BACKUP DATABASE, BACKUP LOG, CREATE DATABASE, CREATE DEFAULT, CREATE FUNCTION, CREATE PROCEDURE, CREATE RULE, CREATE TABLE y CREATE VIEW.
						* Si el elemento protegible es una función escalar, ALL significa EXECUTE y REFERENCES.
						* Si el elemento protegible es una función con valores de tabla, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
						* Si el elemento protegible es un procedimiento almacenado, ALL significa EXECUTE.
						* Si el elemento protegible es una tabla, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
						* Si el elemento protegible es una vista, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
					Nota:
						La sintaxis de REVOKE ALL ha quedado desusada. Esta característica se quitará en una versión futura de Microsoft SQL Server. Evite utilizar esta característica en nuevos trabajos de desarrollo y tenga previsto modificar las aplicaciones que actualmente la utilizan. En su lugar, revoque permisos concretos.
				PRIVILEGES
					Incluido por compatibilidad con ISO. No cambia el comportamiento de ALL.
				permission
					Es el nombre de un permiso. Las asignaciones válidas de permisos a elementos protegibles se describen en los temas de la sección "Sintaxis específica de los elementos protegibles" ("https://learn.microsoft.com/es-es/sql/t-sql/statements/revoke-transact-sql?view=sql-server-ver16#securable"), más adelante en este tema.
				column
					Especifica el nombre de una columna de una tabla en la que se van a revocar los permisos. Es obligatorio utilizar paréntesis.
				class
					Especifica la clase del elemento protegible para el que se va a revocar el permiso. El calificador de ámbito :: es obligatorio.
				securable
					Especifica el elemento protegible para el que se va a revocar el permiso.
				TO | FROM principal
					Es el nombre de una entidad de seguridad. Las entidades de seguridad de las que se pueden revocar permisos para un elemento protegible varían según el elemento. Para más información sobre las combinaciones válidas, vea los temas que se muestran en "Sintaxis específica de los elementos protegibles" ("https://learn.microsoft.com/es-es/sql/t-sql/statements/revoke-transact-sql?view=sql-server-ver16#securable") más adelante en este tema.
				CASCADE
					Indica que el permiso que se va a revocar también se revocará de otras entidades de seguridad a las que se han concedido permisos por esta entidad de seguridad. Cuando se utiliza el argumento CASCADE, también se debe incluir el argumento GRANT OPTION FOR.
					Precaución:
						Una revocación en cascada de un permiso concedido WITH GRANT OPTION revocará tanto GRANT como DENY de dicho permiso.
				AS principal
					Use la cláusula AS principal para indicar que se va a revocar un permiso que ha sido concedido por una entidad de seguridad distinta de usted. Por ejemplo, imagine que la usuaria María tiene el valor principal_id 12 y el usuario Raúl tiene el valor principal_id 15. Tanto María como Raúl conceden el mismo permiso a un usuario llamado Carlos. La tabla sys.database_permissions indicará los permisos dos veces, pero cada uno tendrá un valor de grantor_principal_id diferente. María podría revocar el permiso mediante la cláusula AS RAUL para quitar la concesión del permiso de Raúl.
					El uso de AS en esta instrucción no implica la capacidad de suplantar a otro usuario.
			https://learn.microsoft.com/es-es/sql/t-sql/statements/revoke-transact-sql?view=sql-server-ver16
		Para Oracle:
		Para MySQL:
	DENY:
		El comando "DENY" es parte del estándar SQL y está definido por el ANSI SQL (American National Standards Institute Structured Query Language). Sin embargo, la implementación específica de ciertos comandos y su semántica puede variar entre diferentes sistemas de gestión de bases de datos (DBMS).
		Para PostgreSQL:
			Sí, PostgreSQL también implementa el comando "DENY". Sin embargo, en PostgreSQL, la gestión de permisos es un poco diferente y se hace mediante el uso de cláusulas como "REVOKE".
		Para SQL Server:
			En SQL Server, el comando "DENY" se utiliza para denegar explícitamente permisos a un usuario, rol o función. Al denegar un permiso, estás previniendo que el principal de seguridad (usuario, rol o función) realice una acción específica en un objeto de la base de datos.
			-- Syntax for SQL Server and Azure SQL Database
			-- Simplified syntax for DENY
			DENY { ALL [ PRIVILEGES ] }
				| <permission> [ ( column [ ,...n ] ) ] [ ,...n ]
				[ ON [ <class> :: ] securable ]
				TO principal [ ,...n ]
				[ CASCADE] [ AS principal ]
			[;]

			<permission> ::=  
			{ see the tables below }  
			  
			<class> ::=  
			{ see the tables below }

			Argumentos:
				ALL
					Esta opción no deniega todos los permisos posibles. Al denegar ALL se deniegan los permisos siguientes:
						* Si el elemento protegible es una base de datos, ALL significa BACKUP DATABASE, BACKUP LOG, CREATE DATABASE, CREATE DEFAULT, CREATE FUNCTION, CREATE PROCEDURE, CREATE RULE, CREATE TABLE y CREATE VIEW.
						* Si el elemento protegible es una función escalar, ALL significa EXECUTE y REFERENCES.
						* Si el elemento protegible es una función con valores de tabla, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
						* Si el elemento protegible es un procedimiento almacenado, ALL significa EXECUTE.
						* Si el elemento protegible es una tabla, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
						* Si el elemento protegible es una vista, ALL significa DELETE, INSERT, REFERENCES, SELECT y UPDATE.
					Nota: La sintaxis de "DENY ALL" está desusada. Esta característica se quitará en una versión futura de Microsoft SQL Server. Evite utilizar esta característica en nuevos trabajos de desarrollo y tenga previsto modificar las aplicaciones que actualmente la utilizan. En su lugar, deniegue permisos concretos.
				PRIVILEGES
					Incluido por compatibilidad con ISO. No cambia el comportamiento de ALL.
				permission
					Es el nombre de un permiso. Las asignaciones de permisos válidas a elementos protegibles se describen en los subtemas que se muestran a continuación.
				column
					Especifica el nombre de una columna de una tabla para la que se deniegan los permisos. Los paréntesis () son obligatorios.
				class
					Especifica la clase de elemento protegible para el que se deniega el permiso. El calificador de ámbito :: es obligatorio.
				securable
					Especifica el elemento protegible para el que se deniega el permiso.
				TO principal
					Es el nombre de una entidad de seguridad. Las entidades de seguridad para las que se pueden denegar permisos sobre un elemento protegible varían en función de este elemento protegible. Vea los temas sobre elementos protegibles enumerados más abajo para obtener combinaciones válidas.
				CASCADE
					Indica que el permiso se deniega para la entidad de seguridad especificada y para el resto de entidades de seguridad a las que ésta concedió el permiso. Es obligatorio cuando la entidad de seguridad tiene el permiso con GRANT OPTION.
				AS principal
					Especifica la entidad de seguridad de la que la entidad de seguridad que ejecuta esta consulta deriva su derecho de denegar el permiso. Use la cláusula AS de la entidad de seguridad para indicar que la entidad de seguridad registrada como el denegador del permiso debe ser una entidad de seguridad distinta de la persona que ejecuta la instrucción. Por ejemplo, suponga que la usuaria María tiene el principal_id 12 y el usuario Raúl tiene el principal_id 15. María ejecuta DENY SELECT ON OBJECT::X TO Steven WITH GRANT OPTION AS Raul;. Ahora bien, la tabla sys.database_permissions indicará que grantor_principal_id de la instrucción DENY fue 15 (Raul), aunque la instrucción realmente la ejecutó el usuario 13 (María).
					El uso de AS en esta instrucción no implica la capacidad de suplantar a otro usuario.

			Aquí tienes un ejemplo básico:
				DENY INSERT ON dbo.TuTabla TO [RolOUsuario];
			Este comando deniega el permiso de inserción (INSERT) en la tabla TuTabla del esquema "dbo" al rol o usuario especificado. Al utilizar "DENY", estás anulando cualquier permiso de inserción que podría haber sido otorgado previamente.
			Algunas consideraciones importantes sobre "DENY":
				1. Prioridad de "DENY": El comando "DENY" tiene una prioridad mayor que "GRANT". Si un usuario tiene un permiso otorgado mediante "GRANT" y también un permiso denegado mediante "DENY", la denegación tiene prioridad.
				2. Conflictos con "GRANT": Si hay conflictos entre permisos otorgados y denegados, la denegación prevalecerá. Esto significa que aunque un usuario tenga un permiso otorgado, si ese mismo permiso está denegado a través de "DENY", el usuario no podrá realizar la acción.
				3. Revocación de "DENY": Puedes revertir un "DENY" utilizando el comando "REVOKE". Al igual que con "GRANT", "REVOKE" elimina explícitamente los permisos denegados.
					REVOKE INSERT ON dbo.TuTabla TO [RolOUsuario];
			Es importante usar DENY con precaución, ya que puede afectar la funcionalidad de los usuarios. Asegúrate de comprender completamente el impacto antes de denegar permisos. Además, mantén un registro de los cambios en los permisos para facilitar la administración y auditoría de la seguridad en la base de datos.

			https://learn.microsoft.com/es-es/sql/t-sql/statements/deny-transact-sql?view=sql-server-ver16
		Para Oracle:
			Oracle Database utiliza la cláusula "REVOKE" para revocar privilegios en lugar de "DENY". La lógica es similar, pero la sintaxis puede variar.
		Para MySQL:
			MySQL utiliza el comando "REVOKE" para revocar privilegios en lugar de "DENY". La sintaxis y la lógica son similares a Oracle.
	DENY vs REVOKE:
		Para PostgreSQL:
		Para SQL Server:
			Los comandos "DENY" y "REVOKE" se utilizan para propósitos similares, pero hay algunas diferencias clave en su comportamiento:
				1. DENY:
					"DENY" niega explícitamente un permiso a un principal de seguridad (usuario, rol o función).
					"DENY" tiene una prioridad más alta que "GRANT", lo que significa que si un usuario tiene un permiso otorgado ("GRANT") y también un permiso denegado ("DENY") para la misma acción, la denegación prevalecerá.
					"DENY" puede afectar directamente la capacidad de un principal para realizar una acción específica.
						DENY INSERT ON dbo.TuTabla TO [RolOUsuario];
				2. REVOKE:
					"REVOKE" se utiliza para revocar (eliminar) un permiso previamente otorgado a un principal.
					"REVOKE" elimina explícitamente un permiso previamente otorgado mediante "GRANT".
					Si no hay un permiso otorgado previamente, "REVOKE" no tiene ningún efecto.
						REVOKE INSERT ON dbo.TuTabla TO [RolOUsuario];
			En resumen, ambos comandos son equivalentes en el sentido de que ambos retiran el permiso de inserción (INSERT) en la tabla "TuTabla" del esquema "dbo" para el rol o usuario especificado. Sin embargo, ten en cuenta las diferencias en el comportamiento descritas anteriormente. Si no hay un permiso otorgado previamente, ambos comandos tendrán el mismo resultado.

	Ejemplos para PostgreSQL:
	Ejemplos para SQL Server:
		El usuario "Pepe" que esta en el grupo "newData", solo pueda insertar y actualizar:
			1. Crear el Rol "newData" (si no existe):
				CREATE ROLE newData;
			2. Conceder Permisos de Inserción y Actualización al Rol "newData", para las tablas o esquemas pertinentes:
				GRANT INSERT, UPDATE ON dbo.TuTabla TO newData;
			3. Agregar Usuario "Pepe" al Rol "newData", mediante la creación de un procedimiento almacenado:
				CREATE PROCEDURE sp_AddUserToRole
					@UserName NVARCHAR(100),
					@RoleName NVARCHAR(100)
				AS
				BEGIN
					-- Verificar si el usuario existe
					IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @UserName)
					BEGIN
						PRINT 'El usuario ' + @UserName + ' no existe.';
						RETURN;
					END
					-- Verificar si el rol existe
					IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @RoleName AND type_desc = 'DATABASE_ROLE')
					BEGIN
						PRINT 'El rol ' + @RoleName + ' no existe.';
						RETURN;
					END
					-- Agregar Usuario "Pepe" al Rol "newData"
					EXEC sp_addrolemember @RoleName, @UserName;
					-- El procedimiento almacenado "sp_addrolemember", ya existe en SQL Server
					PRINT 'El usuario ' + @UserName + ' ha sido agregado al rol ' + @RoleName + '.';
				END;
			4. Invocar el procedimiento almacenado:
				EXEC sp_AddUserToRole 'Pepe' 'newData';
			5. Revocar Otros Permisos (Opcional):
				Si el usuario "Pepe" ya tiene otros permisos que no deseas que tenga en las tablas, puedes revocar esos permisos. Por ejemplo, si tienes un permiso de DELETE que no deseas que "Pepe" tenga, puedes hacer lo siguiente:
						REVOKE DELETE ON dbo.TuTabla TO Pepe;
				Ajusta estos comandos según las necesidades específicas de tu base de datos.
			Es crucial entender que estos comandos son genéricos y deben adaptarse a la estructura y requisitos específicos de tu base de datos. Además, es importante realizar estas acciones con un usuario que tenga los privilegios adecuados, como un administrador de base de datos.
	Ejemplos para Oracle:
	Ejemplos para MySQL:

7. Tuning:
	El "tuning" o "ajuste" en bases de datos se refiere al proceso de optimización y ajuste de una base de datos y su configuración para mejorar el rendimiento y la eficiencia en el manejo de consultas y operaciones. Este proceso implica una serie de acciones destinadas a maximizar la eficiencia del sistema de gestión de bases de datos (DBMS) y su interacción con el hardware subyacente.

	Aquí hay algunas prácticas comunes de tunning en bases de datos:
		1. Índices y Claves Primarias:
			* Diseñar y mantener índices adecuados en las tablas para acelerar las consultas de búsqueda.
		2. Optimización de Consultas:
			* Analizar y optimizar consultas complejas para que se ejecuten de manera más eficiente.
		3. Estadísticas y Recolección de Basura:
			* Mantener actualizadas las estadísticas y realizar tareas de recolección de basura para liberar espacio no utilizado.
		4. Configuración del Motor de Almacenamiento:
			* Seleccionar y configurar el motor de almacenamiento adecuado (por ejemplo, InnoDB, MyISAM en MySQL).
		5. Configuración de Memoria y Caché:
			* Asignar correctamente la memoria para el DBMS y configurar parámetros de caché para acelerar las operaciones.
		6. Particionamiento de Tablas:
			* Implementar el particionamiento de tablas para dividir grandes conjuntos de datos en partes manejables.
		7. Optimización de Índices Espaciales:
			* Para bases de datos geoespaciales, ajustar índices espaciales y consultas de geometría.
		8. Optimización de Configuraciones de Red:
			* Configurar parámetros de red para manejar la carga de conexiones concurrentes.
		9. Planificación de Copias de Seguridad y Mantenimiento:
			* Planificar y ejecutar copias de seguridad y tareas de mantenimiento de forma regular.
		10. Monitoreo y Perfilado de Consultas:
			* Utilizar herramientas de monitoreo y perfiles de consultas para identificar cuellos de botella y áreas de mejora.
		11. Actualización de la Base de Datos y el DBMS:
			* Mantener actualizado el DBMS y la base de datos con las últimas versiones y parches de seguridad.

	Es importante señalar que las estrategias de tunning pueden variar según el tipo de DBMS que estés utilizando (por ejemplo, PostgreSQL, MySQL, Oracle, etc.) y el tipo de carga de trabajo que enfrenta tu base de datos. Cada sistema de gestión de bases de datos tiene sus propias características y configuraciones específicas que pueden influir en las prácticas de tunning.

8. Hardening:
	El "hardening" de bases de datos se refiere a la práctica de implementar medidas de seguridad y configuraciones para fortalecer la seguridad y proteger la integridad de los datos almacenados en una base de datos. Esto implica tomar medidas adicionales más allá de las configuraciones predeterminadas para mitigar riesgos y prevenir vulnerabilidades.

	A continuación, te proporciono algunas estrategias y prácticas comunes para el hardening de bases de datos:
		1. Actualizaciones y Parches:
			* Mantén la base de datos y el sistema de gestión de bases de datos (DBMS) actualizados con las últimas actualizaciones y parches de seguridad.
			En PostgreSQL:
			En SQL Server:
				Las actualizaciones y parches en SQL Server son fundamentales para garantizar la seguridad, estabilidad y rendimiento de tu base de datos. Microsoft regularmente publica Service Packs, Cumulative Updates y actualizaciones de seguridad para SQL Server. Aquí hay algunos puntos clave sobre las actualizaciones y parches en SQL Server:
					1. Service Packs (SP): Microsoft suele lanzar Service Packs para corregir problemas y mejorar la estabilidad y seguridad de SQL Server. Estos packs incluyen todas las actualizaciones anteriores y, a veces, algunas nuevas características. Es recomendable instalar el Service Pack más reciente para tu versión de SQL Server.
					2. Cumulative Updates (CU): Además de los Service Packs, se lanzan Cumulative Updates que contienen correcciones adicionales y mejoras. Los CUs son acumulativos, lo que significa que cada CU incluye todas las correcciones de los Service Packs y CUs anteriores. Puedes optar por instalar el último CU o un CU específico según tus necesidades y requisitos de estabilidad.
					3. Actualizaciones de Seguridad: Microsoft también publica actualizaciones de seguridad para abordar vulnerabilidades específicas. Estas actualizaciones son críticas para proteger tu sistema contra amenazas de seguridad. Asegúrate de aplicar estas actualizaciones tan pronto como estén disponibles.
					4. Actualizaciones automáticas: SQL Server Management Studio (SSMS) y otras herramientas pueden tener actualizaciones independientes. Mantente al tanto de las actualizaciones de todas las herramientas que utilizas en tu entorno SQL Server.
					5. Planificación y Pruebas: Antes de aplicar cualquier actualización o parche en un entorno de producción, es fundamental realizar pruebas exhaustivas en un entorno de desarrollo o de pruebas. Esto ayuda a identificar posibles problemas de compatibilidad o cambios en el comportamiento de las consultas antes de implementar las actualizaciones en un entorno de producción.
					6. Respaldo: Antes de realizar cualquier actualización o parche, asegúrate de realizar un respaldo completo de tus bases de datos. Esto te permite revertir a un estado funcional anterior en caso de cualquier problema durante la actualización.
					7. Documentación: Mantén un registro de las actualizaciones y parches aplicados, junto con cualquier problema conocido y soluciones. Esto facilitará la gestión del entorno y la resolución de problemas futuros.
				Para obtener las actualizaciones más recientes y detalles específicos sobre parches, siempre es recomendable consultar el sitio web oficial de Microsoft o los recursos de soporte técnico.
			En Oracle:
			En MySQL:
		2. Limitar Privilegios de Usuario:
			* Asigna permisos y privilegios mínimos necesarios para cada usuario o rol. Evita otorgar privilegios excesivos.
			En PostgreSQL:
			En SQL Server:
				Limitar los privilegios de usuario en SQL Server es una buena práctica de seguridad para garantizar que los usuarios solo tengan acceso a los recursos y acciones necesarios para realizar sus tareas sin otorgar permisos innecesarios. Aquí hay algunas estrategias que puedes utilizar para limitar los privilegios de usuario en SQL Server:
					0. Obtener todos los permisos de un usuario determinado:
						Para obtener información completa sobre los permisos que tiene el usuario "Pepe" en todas las bases de datos, tablas, roles, etc., puedes utilizar consultas en el catálogo de seguridad del sistema de SQL Server.
						Aquí hay un Procedure que puedes crear:
							CREATE PROCEDURE sp_GetCurrentUserPermissions
							AS
							BEGIN
								DECLARE @UserName NVARCHAR(100);

								-- Obtener el nombre del usuario actual
								SET @UserName = SUSER_SNAME();

								-- Obtener permisos en bases de datos
								SELECT 
									DP.class_desc AS [Clase],
									DB_NAME() AS [Base de Datos],
									DP.permission_name AS [Permiso],
									DP.state_desc AS [Estado]
								FROM sys.database_permissions DP
								INNER JOIN sys.database_principals DU ON DP.grantee_principal_id = DU.principal_id
								WHERE DU.name = @UserName;

								-- Obtener permisos en tablas
								SELECT 
									TABLE_SCHEMA,
									TABLE_NAME,
									COLUMN_NAME,
									DP.permission_name AS [Permiso],
									DP.state_desc AS [Estado]
								FROM INFORMATION_SCHEMA.COLUMNS C
								INNER JOIN sys.database_permissions DP ON OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME) = DP.major_id
								INNER JOIN sys.database_principals DU ON DP.grantee_principal_id = DU.principal_id
								WHERE DU.name = @UserName;

								-- Obtener permisos en procedimientos almacenados
								SELECT 
									ROUTINE_SCHEMA,
									ROUTINE_NAME,
									DP.permission_name AS [Permiso],
									DP.state_desc AS [Estado]
								FROM INFORMATION_SCHEMA.ROUTINES R
								INNER JOIN sys.database_permissions DP ON OBJECT_ID(ROUTINE_SCHEMA + '.' + ROUTINE_NAME) = DP.major_id
								INNER JOIN sys.database_principals DU ON DP.grantee_principal_id = DU.principal_id
								WHERE DU.name = @UserName;

								-- Obtener pertenencia a roles
								SELECT 
									R.name AS [Rol]
								FROM sys.database_role_members RM
								INNER JOIN sys.database_principals U ON RM.member_principal_id = U.principal_id
								INNER JOIN sys.database_principals R ON RM.role_principal_id = R.principal_id
								WHERE U.name = @UserName;
							END;
							EXEC sp_GetCurrentUserPermissions;
						Este script realiza consultas en varias vistas del catálogo de seguridad del sistema para obtener información detallada sobre los permisos del usuario "Pepe" en la base de datos actual. Asegúrate de ejecutar este script en el contexto de la base de datos en la que deseas obtener la información.

						Este script puede ser un buen punto de partida, pero ten en cuenta que puede ser necesario ajustarlo según las necesidades específicas de tu entorno y las configuraciones de seguridad particulares.
					1. Principios del menor privilegio:
						* Otorga a los usuarios solo los privilegios mínimos necesarios para realizar sus tareas.
						* Evita otorgar privilegios de administrador a menos que sea absolutamente necesario.
					2. Roles de servidor y roles de base de datos:
						* Utiliza roles de servidor y roles de base de datos para agrupar permisos y simplificar la administración.
						* Asigna usuarios a roles en lugar de otorgar permisos directamente.
					3. Permisos a nivel de bases de datos, esquemas y objetos:
						* La asignación de permisos en SQL Server puede realizarse a diferentes niveles: bases de datos, esquemas y objetos individuales. La elección del nivel depende de tus necesidades específicas y del grado de granularidad que desees en el control de acceso.
							Aquí hay una descripción de cada nivel y cuándo podría ser apropiado utilizarlo:
								1. Base de Datos Completa:
									* Asignar permisos a nivel de base de datos te permite controlar el acceso general a la base de datos entera.
									* Esto es útil si deseas otorgar permisos a un usuario o rol para realizar acciones en cualquier objeto dentro de la base de datos.
										GRANT SELECT, INSERT, UPDATE ON DATABASE::TuBaseDeDatos TO [RolOUsuario];
								2. Esquemas:
									* Los esquemas son contenedores lógicos dentro de una base de datos y te permiten organizar objetos.
									* Puedes asignar permisos a un esquema específico, lo que se aplicará a todos los objetos dentro de ese esquema.
										GRANT SELECT, INSERT, UPDATE ON SCHEMA::TuEsquema TO [RolOUsuario];
								3. Objetos Individuales:
									* Asignar permisos a objetos individuales (tablas, vistas, procedimientos almacenados, etc.) te brinda el mayor nivel de granularidad.
									* Esto es útil cuando deseas controlar de manera precisa quién puede realizar acciones específicas en un objeto particular.
										GRANT SELECT, INSERT, UPDATE ON dbo.TuTabla TO [RolOUsuario];

							En general, se recomienda seguir el principio de privilegios mínimos necesarios. Esto significa asignar permisos solo en el nivel más bajo necesario para que los usuarios realicen sus tareas. Si un usuario solo necesita acceder a ciertas tablas, otorga permisos solo en esas tablas en lugar de en toda la base de datos.

							La elección del nivel de asignación de permisos también puede depender de la estructura y diseño de tu base de datos, así como de los requisitos de seguridad específicos de tu aplicación.
						* Utiliza GRANT y DENY para especificar permisos y restricciones.
					4. Revocar privilegios innecesarios:
						* Revisa y revoca cualquier privilegio que no sea necesario para el usuario.
						* Utiliza la instrucción REVOKE para eliminar privilegios específicos.
					5. Control de acceso basado en funciones (RBAC):
						* Define funciones con permisos específicos y asigna usuarios a esas funciones.
						* Limita la cantidad de usuarios que tienen privilegios elevados.
					6. Auditoría:
						* Implementa auditoría para realizar un seguimiento de las actividades de los usuarios y detectar cualquier comportamiento sospechoso.
					7. Contraseñas seguras:
						* Asegúrate de que los usuarios utilicen contraseñas seguras y cámbialas regularmente.
						* Considera la posibilidad de implementar políticas de contraseña.
					8. Seguridad a nivel de red:
						* Configura la seguridad a nivel de red para limitar el acceso desde direcciones IP específicas si es posible.
						* Utiliza conexiones seguras mediante SSL si es necesario.
					9. Revisión periódica:
						* Realiza revisiones periódicas de los privilegios de usuario para asegurarte de que sigan siendo apropiados y necesarios.
				Recuerda que la implementación de estas prácticas debe basarse en los requisitos específicos de seguridad de tu aplicación y entorno. Además, es esencial documentar y mantener actualizadas las políticas de seguridad.
			En Oracle:
			En MySQL:
		3. Usar Contraseñas Fuertes:
			* Exige contraseñas seguras y fomenta prácticas de gestión de contraseñas robustas.
			En PostgreSQL:
			En SQL Server:
				Utilizar contraseñas fuertes en SQL Server es esencial para fortalecer la seguridad de tu base de datos y protegerla contra posibles amenazas. Aquí hay algunas prácticas recomendadas para establecer contraseñas fuertes en SQL Server:
					1. Longitud:
						* Las contraseñas deben ser lo suficientemente largas para complicar su descifrado. Se recomienda una longitud mínima de al menos 12 caracteres.
						Para crear un nuevo usuario en SQL Server y especificar que la contraseña debe tener al menos 12 caracteres, puedes utilizar la instrucción CREATE LOGIN junto con la cláusula CHECK para imponer la restricción de longitud de la contraseña. Aquí tienes un ejemplo:
							CREATE LOGIN NombreDeUsuario
								WITH PASSWORD = 'TuContraseña'
								CHECK_POLICY = ON, 
								CHECK_EXPIRATION = OFF;
						La cláusula "CHECK_POLICY = ON" activa la política de contraseñas, y la cláusula "CHECK_EXPIRATION = OFF" evita que la contraseña expire.
						Sin embargo, SQL Server no proporciona una forma directa de verificar la longitud exacta de la contraseña utilizando la cláusula CHECK en la instrucción CREATE LOGIN. Para imponer una longitud mínima de 12 caracteres, es posible que necesites hacerlo a nivel de aplicación o mediante procedimientos almacenados adicionales después de la creación del usuario.
						Por ejemplo, podrías implementar un trigger que se active después de crear el usuario y que verifique la longitud de la contraseña, generando un error si no cumple con los requisitos. Esto proporcionaría una capa adicional de control sobre la longitud de la contraseña.
						Aquí tienes un ejemplo de cómo podrías implementar un trigger que verifique la longitud de la contraseña después de crear un usuario en SQL Server. Este trigger se activará después de una operación de inserción en la tabla sys.server_principals, que es donde se almacenan los inicios de sesión (logins).
							CREATE TRIGGER trg_ValidarLongitudContraseña
							ON ALL SERVER
							AFTER CREATE_LOGIN
							AS
							BEGIN
								SET NOCOUNT ON;

								DECLARE @NombreDeUsuario NVARCHAR(100);
								DECLARE @Contraseña NVARCHAR(255);

								SELECT @NombreDeUsuario = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'NVARCHAR(100)'),
									@Contraseña = EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'NVARCHAR(MAX)');

								IF LEN(@Contraseña) < 12
								BEGIN
									RAISEERROR('La contraseña debe tener al menos 12 caracteres.', 16, 1);
									ROLLBACK; -- Deshace la transacción si la contraseña no cumple con los requisitos
								END
							END;
							En este ejemplo:
								* El trigger se activará después de la creación de un login (CREATE_LOGIN).
								* Se utiliza la función EVENTDATA() para obtener información sobre el evento, como el nombre del usuario y la contraseña.
								* Se verifica la longitud de la contraseña, y si es menor que 12 caracteres, se genera un error y se deshace la transacción.
							Ten en cuenta que este trigger es un ejemplo básico y puede requerir ajustes según tus necesidades específicas. Además, este tipo de verificación se hace a nivel de servidor y se aplica a todos los inicios de sesión (logins) creados, por lo que debes asegurarte de que no afecte otras operaciones legítimas.
					2. Complejidad:
						* Incluye una combinación de letras mayúsculas y minúsculas, números y caracteres especiales. Cuanta más variedad haya en la contraseña, más difícil será para un atacante descifrarla.
					3. Evitar información personal:
						* Evita el uso de información personal como nombres, fechas de nacimiento, nombres de usuarios o palabras del diccionario en las contraseñas.
					4. Cambios periódicos:
						* Establece políticas para cambiar las contraseñas periódicamente. Esto reduce el riesgo de que una contraseña comprometida permanezca válida durante mucho tiempo.
						Para implementar un cambio periódico de la contraseña de un usuario en SQL Server, puedes utilizar la opción `CHECK_EXPIRATION` al crear o modificar el login. La opción `CHECK_EXPIRATION` permite especificar si las contraseñas deben caducar después de un período específico. Aquí tienes un ejemplo:
							CREATE LOGIN NombreDeUsuario
							WITH PASSWORD = 'TuContraseña',
							CHECK_POLICY = ON, 
							CHECK_EXPIRATION = ON, 
							MUST_CHANGE = OFF; -- Esto puede ser ON o OFF dependiendo de tus necesidades

						En este ejemplo:
							* "CHECK_EXPIRATION = ON" habilita la política de caducidad de la contraseña.
							* "MUST_CHANGE = OFF" significa que el usuario no está obligado a cambiar su contraseña en el próximo inicio de sesión, pero la contraseña caducará según la política de caducidad configurada.

						Después de esta configuración, el usuario deberá cambiar su contraseña según la política de caducidad que hayas establecido. La política exacta de caducidad depende de la configuración a nivel de servidor y base de datos.

						Además, si deseas establecer un período específico para el cambio de contraseña, puedes utilizar la opción `LOGINPROPERTY` para establecer la política de caducidad de la contraseña en días. Por ejemplo:

							USE master;

							ALTER LOGIN NombreDeUsuario
							WITH PASSWORD = 'TuContraseña';

							ALTER LOGIN NombreDeUsuario
							WITH CHECK_EXPIRATION = ON,
								CHECK_POLICY = ON,
								PASSWORD_EXPIRATION = 90; -- Cambiar la contraseña cada 90 días

						En este caso, "PASSWORD_EXPIRATION = 90" establece que la contraseña del usuario debe cambiarse cada 90 días. Ajusta este valor según tus políticas de seguridad específicas.
					5. No reutilizar contraseñas:
						* Asegúrate de que los usuarios no reutilicen contraseñas en diferentes sistemas o servicios.
					6. Protección de credenciales:
						* Almacena las credenciales de forma segura y utiliza medidas de seguridad adicionales, como el cifrado, para protegerlas contra accesos no autorizados.
					7. Políticas de contraseña:
						* SQL Server permite configurar políticas de contraseña para imponer reglas específicas, como longitud mínima, complejidad y historial de contraseñas antiguas. Habilita estas políticas para reforzar la seguridad.
					8. Autenticación de Windows:
						* Si es posible, utiliza la autenticación de Windows en lugar de la autenticación de SQL Server. La autenticación de Windows es generalmente más segura y menos propensa a ataques de fuerza bruta.
					9. Bloqueo de cuentas:
						* Configura reglas para bloquear cuentas después de un número específico de intentos fallidos. Esto ayuda a prevenir ataques de fuerza bruta.
						En SQL Server, puedes configurar reglas para bloquear cuentas después de un número específico de intentos fallidos utilizando las políticas de bloqueo de cuenta. Estas políticas están relacionadas con la seguridad de inicio de sesión y te permiten especificar cuántos intentos fallidos de inicio de sesión son permitidos antes de que la cuenta se bloquee.

						Aquí hay un ejemplo de cómo puedes configurar estas políticas:
							1. Política de Bloqueo de Cuenta en SQL Server:

								Puedes utilizar la siguiente secuencia de comandos para establecer una política de bloqueo de cuenta. En este ejemplo, la cuenta se bloqueará después de cinco intentos fallidos y se desbloqueará automáticamente después de un periodo de tiempo especificado (en este caso, 10 minutos).

								USE master;

								EXEC sp_configure 'show advanced options', 1;
								RECONFIGURE;

								EXEC sp_configure 'max failed logins', 5; -- Número de intentos fallidos antes del bloqueo
								RECONFIGURE;

								EXEC sp_configure 'login lockout duration', 600; -- Duración del bloqueo en segundos (600 segundos = 10 minutos)
								RECONFIGURE;

							2. Habilitar la Política de Bloqueo en un Inicio de Sesión Específico:

								Para habilitar la política de bloqueo en un inicio de sesión específico, puedes utilizar la siguiente secuencia de comandos:

									USE master;

									ALTER LOGIN NombreDeUsuario
									WITH CHECK_POLICY = ON;

								Esto habilitará la política de bloqueo de cuenta para el usuario específico.

						Recuerda ajustar "NombreDeUsuario" según el usuario para el que deseas habilitar la política de bloqueo.

						Estas configuraciones proporcionarán un mecanismo de seguridad adicional para proteger las cuentas de usuario contra intentos de inicio de sesión no autorizados. Asegúrate de ajustar las configuraciones según tus requisitos de seguridad específicos.
					10. Monitoreo y auditoría:
				 		* Implementa un sistema de monitoreo y auditoría para detectar intentos de acceso no autorizado y otros comportamientos sospechosos.
					11. Capas adicionales de seguridad:
				 		* Considera la posibilidad de implementar medidas de seguridad adicionales, como la encriptación de datos, para proteger la información almacenada en la base de datos.
				Recuerda que la seguridad es un esfuerzo conjunto que implica no solo contraseñas fuertes, sino también buenas prácticas de administración y políticas de seguridad robustas en todos los niveles de tu aplicación y entorno de base de datos.
			En Oracle:
			En MySQL:
		4. Cifrado de Datos en Reposo:
			* Utiliza cifrado para proteger los datos almacenados en disco para prevenir el acceso no autorizado en caso de robo o acceso físico.
			En PostgreSQL:
			En SQL Server:
				El cifrado de datos en reposo es una práctica de seguridad esencial para proteger la información almacenada en una base de datos, evitando que sea accesible de manera no autorizada incluso si el almacenamiento físico de la base de datos es comprometido. SQL Server proporciona varias opciones para implementar el cifrado de datos en reposo. Aquí te presento algunas de las principales:
					1. Transparent Data Encryption (TDE):
						* TDE es una característica de SQL Server que cifra la totalidad de la base de datos en reposo. Cifra tanto los archivos de datos como los archivos de registro de transacciones. La clave de cifrado maestra se almacena en el servidor y está protegida por el servicio de clave maestra de la base de datos.
					2. Always Encrypted:
						* Always Encrypted permite cifrar columnas específicas de una tabla y asegura que solo las aplicaciones cliente autorizadas puedan descifrar y acceder a los datos. Las claves de cifrado se almacenan fuera de la base de datos, en un almacén de claves externo.
					3. BitLocker:
						* A nivel de sistema operativo, puedes usar BitLocker para cifrar la unidad que contiene los archivos de la base de datos. BitLocker es una característica de Windows que proporciona cifrado de disco completo.
					4. File-Level Encryption:
						* Puedes utilizar la encriptación a nivel de archivo para cifrar archivos de base de datos individuales (.mdf, .ndf) y archivos de registro de transacciones (.ldf). Esto permite un control más granular sobre qué partes de la base de datos están cifradas.
					5. Azure SQL Database y SQL Managed Instance:
						* Si estás utilizando Azure SQL Database o SQL Managed Instance, Microsoft proporciona automáticamente el cifrado de datos en reposo sin necesidad de configuración adicional. Esto se aplica tanto a la base de datos como a las copias de seguridad almacenadas en Azure Blob Storage.
				Al implementar el cifrado de datos en reposo, es importante tener en cuenta las siguientes consideraciones:
					* Rendimiento: Algunos métodos de cifrado pueden tener un impacto en el rendimiento. Realiza pruebas exhaustivas para evaluar el impacto antes de implementar en un entorno de producción.
					* Claves y certificados: La administración de claves y certificados es crucial para el éxito del cifrado. Asegúrate de tener procedimientos sólidos para la gestión de claves y certificados, y protégelos adecuadamente.
					* Backups: Asegúrate de que puedes restaurar copias de seguridad cifradas. Debes tener acceso a las claves y certificados necesarios para realizar restauraciones.
					* Cumplimiento: Asegúrate de cumplir con las regulaciones y estándares de seguridad aplicables en tu industria al implementar cifrado de datos en reposo.
				Ten en cuenta que la elección del método de cifrado dependerá de los requisitos de seguridad específicos de tu aplicación y entorno.
			En Oracle:
			En MySQL:
		5. Cifrado de Datos en Tránsito:
			* Habilita el uso de conexiones seguras (SSL/TLS) para proteger la comunicación entre la aplicación y la base de datos.
			En PostgreSQL:
			En SQL Server:
			En Oracle:
			En MySQL:
		6. Auditoría y Registro de Eventos:
			* Configura registros de auditoría para rastrear actividades en la base de datos y establecer alertas para eventos sospechosos.
		7. Firewalls y Listas de Control de Acceso:
			* Utiliza firewalls y listas de control de acceso para limitar el acceso a la base de datos desde ubicaciones y direcciones IP específicas.
		8. Control de Inyecciones de SQL:
			* Utiliza consultas parametrizadas o preparadas y evita la concatenación de cadenas para construir consultas SQL.
		9. Limitar Exposición de Metadatos:
			* Restringe el acceso a los metadatos de la base de datos, como esquemas y nombres de tablas.
		10. Monitorización y Alertas:
			* Implementa sistemas de monitorización para supervisar el rendimiento, la disponibilidad y las actividades inusuales en la base de datos.
			Ejemplos de Scripts de Monitoreo:
				1. Monitorear el Espacio Libre en un Disco:
					EXEC xp_cmdshell 'dir C:\ /-C';
				2. Verificar la Última Hora de Inicio del Servicio de SQL Server:
					SELECT servicename, startuptime FROM sys.dm_server_services;
				3. Obtener el Último Respaldo Exitoso de la Base de Datos:
					RESTORE HEADERONLY FROM DISK = 'C:\Ruta\Respaldos\Backup.bak';
				4. Monitorear el Rendimiento de Consultas:
					SELECT total_worker_time/execution_count AS AvgCPUTime,
						total_elapsed_time/execution_count AS AvgElapsedTime,
						total_logical_reads/execution_count AS AvgLogicalReads,
						text
					FROM sys.dm_exec_query_stats
					CROSS APPLY sys.dm_exec_sql_text(sql_handle)
					WHERE execution_count > 10
					ORDER BY AvgCPUTime DESC;
				5. Verificar el Estado de la Base de Datos:
					SELECT name, state_desc FROM sys.databases;
		11. Respaldo y Recuperación:
			* Establece políticas de respaldo y recuperación robustas para proteger contra la pérdida de datos.
			En PostgreSQL:
			En SQL Server:
				Establecer políticas de respaldo y recuperación robustas en SQL Server es fundamental para proteger tus datos contra pérdidas accidentales o daños en la base de datos. Aquí hay algunas prácticas recomendadas para garantizar una sólida política de respaldo y recuperación:
					1. Realizar Copias de Seguridad Regularmente:
						* Programa copias de seguridad regulares de tus bases de datos. La frecuencia dependerá de la cantidad de cambios en los datos y la importancia de la información.
						-- Ejemplo de una copia de seguridad completa
						BACKUP DATABASE TuBaseDeDatos TO DISK = 'Ruta\Archivo.bak';
					2. Utilizar Diferentes Tipos de Copias de Seguridad:
						* Combina copias de seguridad completas, diferenciales y de registros de transacciones según tus necesidades. Las copias de seguridad diferenciales pueden ayudar a reducir el tiempo de recuperación.
						-- Ejemplo de una copia de seguridad diferencial
						BACKUP DATABASE TuBaseDeDatos TO DISK = 'Ruta\ArchivoDiferencial.bak' WITH DIFFERENTIAL;
						* "WITH DIFFERENTIAL": Esta cláusula indica que la copia de seguridad será diferencial. Una copia de seguridad diferencial incluye SOLO los datos que han cambiado desde la última copia de seguridad completa. Esto ayuda a reducir el tiempo y el espacio requerido para realizar copias de seguridad incrementales.
					3. Almacenar Copias de Seguridad en Lugares Seguros:
						* Guarda tus copias de seguridad en ubicaciones seguras, como unidades de red, dispositivos de cinta o servicios de almacenamiento en la nube.
					4. Establecer Políticas de Retención:
						* Define políticas de retención de copias de seguridad para gestionar la cantidad de tiempo durante el cual se deben retener las copias de seguridad.
						-- Ejemplo de retención de copias de seguridad
						BACKUP DATABASE TuBaseDeDatos TO DISK = 'Ruta\Archivo.bak' WITH RETAINDAYS = 30;
						* "WITH RETAINDAYS = 30": Esta cláusula establece una política de retención para la copia de seguridad. Indica que la copia de seguridad se retendrá durante 30 días. Después de este período, la copia de seguridad podría ser eliminada automáticamente, según la configuración de retención.
					5. Realizar Pruebas de Restauración:
						* Regularmente, realiza pruebas de restauración de tus copias de seguridad para asegurarte de que puedas recuperar datos eficazmente cuando sea necesario.
						* Para restaurar una copia de seguridad en SQL Server, puedes utilizar el siguiente script como ejemplo. Asegúrate de tener el archivo de copia de seguridad en la ruta especificada antes de ejecutar el script:
							USE [master];
							GO

							-- Restaurar la copia de seguridad completa
							RESTORE DATABASE [fifa] FROM DISK = 'Ruta\Archivo.bak'
							WITH REPLACE, RECOVERY;

							-- Restaurar la copia de seguridad diferencial
							RESTORE DATABASE [fifa] FROM DISK = 'Ruta\ArchivoDiferencial.bak'
							WITH REPLACE, RECOVERY;
						Explicación de los comandos:
							1. "USE [master];": Este comando cambia el contexto a la base de datos master, ya que necesitas estar en la base de datos master para realizar operaciones de restauración.
							2. "RESTORE DATABASE [fifa] FROM DISK = 'Ruta\Archivo.bak' WITH REPLACE, RECOVERY;": Este comando restaura la copia de seguridad completa. La opción "WITH REPLACE" se utiliza para reemplazar la base de datos existente si ya existe. La opción "WITH RECOVERY" indica que la base de datos se debe dejar en un estado utilizable y no en un estado de restauración.
							3. "RESTORE DATABASE [fifa] FROM DISK = 'Ruta\ArchivoDiferencial.bak' WITH REPLACE, RECOVERY;": Este comando restaura la copia de seguridad diferencial. Nuevamente, se utiliza "WITH REPLACE" para reemplazar la base de datos existente si ya existe, y "WITH RECOVERY" para dejar la base de datos en un estado utilizable.
						Ten en cuenta que estos son ejemplos y debes adaptar las rutas de los archivos de copia de seguridad según tu entorno. Además, asegúrate de tener permisos suficientes para realizar operaciones de restauración y ten en cuenta que la restauración de una copia de seguridad puede sobrescribir datos existentes en la base de datos destino.
					6. Medidas de precaución en la restauración:
						Restaurar una base de datos desde una copia de seguridad es una operación crítica que puede afectar los datos existentes en la base de datos objetivo. Aquí hay algunas medidas de precaución que debes tener en cuenta antes de realizar una restauración:
							1. Hacer Copias de Seguridad Adicionales:
								* Antes de realizar cualquier operación de restauración, asegúrate de tener copias de seguridad actualizadas de la base de datos actual. Esto proporciona un punto de recuperación en caso de que algo salga mal durante la restauración.
							2. Conocer el Estado Actual de la Base de Datos:
								* Verifica el estado actual de la base de datos antes de la restauración. Asegúrate de comprender cualquier cambio significativo que se haya realizado en la base de datos desde la última copia de seguridad.
							3. Documentación:
								* Mantén una documentación detallada de los procedimientos de restauración que estás llevando a cabo. Esto facilita la identificación de cualquier problema y la revisión de los pasos realizados.
								Formas para documentar:
									1. Wiki o Documentación Interna:
										* Utiliza un sistema de wiki interno o algún tipo de documentación compartida donde puedas detallar los procedimientos de respaldo y restauración. Incluye información sobre comandos SQL, ubicaciones de archivos de respaldo, y cualquier configuración específica.
									2. Plantillas de Documentación:
										* Crea plantillas estandarizadas para documentar cada procedimiento. Incluye secciones para la descripción del proceso, comandos utilizados, ubicaciones de archivos, fechas de respaldo, frecuencia, y cualquier nota relevante.
									3. Diagramas de Flujo:
										* Añade diagramas de flujo que representen visualmente los pasos de los procesos. Esto puede facilitar la comprensión rápida y proporcionar una referencia visual.
									4. Registro de Cambios:
										* Incluye un registro de cambios para documentar cualquier ajuste, mejora o cambio en los procedimientos. Esto ayuda a rastrear la evolución de los procesos a lo largo del tiempo.
									5. Enlaces y Referencias:
										* Agrega enlaces y referencias a documentación externa, guías de mejores prácticas, y recursos relevantes. Mantén la documentación actualizada con las últimas prácticas recomendadas.
							4. Realizar Restauraciones en un Entorno de Pruebas:
								* Si es posible, realiza las restauraciones primero en un entorno de pruebas para verificar que el proceso funcione como se espera. Esto te permite identificar posibles problemas antes de afectar la base de datos de producción.
							5. Verificar la Integridad de la Copia de Seguridad:
								* Antes de realizar la restauración, verifica la integridad de la copia de seguridad utilizando el comando "RESTORE VERIFYONLY". Esto asegura que la copia de seguridad esté en buen estado y se pueda restaurar correctamente.
							6. Conocer las Opciones de Restauración:
								* Comprende las opciones de restauración que estás utilizando, como "WITH REPLACE" y "WITH RECOVERY". Estas opciones pueden tener un impacto significativo en la base de datos existente.
							7. Revisar los Mensajes de Error:
								* Si algo sale mal durante la restauración, revisa detenidamente los mensajes de error proporcionados por SQL Server. Estos mensajes pueden ofrecer información valiosa sobre cualquier problema encontrado.
							8. Comunicación con el Equipo:
								* Comunica tus planes de restauración con el equipo de operaciones y cualquier otra persona que pueda verse afectada. Asegúrate de que todos estén al tanto de la operación planificada.
							9. Hacer la Restauración Fuera de Horas Pico:
								* Si es posible, realiza operaciones de restauración fuera de las horas pico de uso de la base de datos para minimizar el impacto en los usuarios.
							10. Monitorear el Proceso:
								* Monitorea de cerca el proceso de restauración para identificar cualquier problema inmediato. Utiliza herramientas de monitoreo y registros de SQL Server.
								Formas para monitorear el proceso:
									1. SQL Server Management Studio (SSMS):
										* Utiliza SSMS para monitorear el progreso de las operaciones de respaldo y restauración. Puedes revisar la actividad reciente, consultar los mensajes de estado y ver el progreso en la ventana de mensajes.
									2. SQL Server Agent:
										* Configura trabajos de SQL Server Agent para las operaciones de respaldo y restauración. Esto te permitirá programar y monitorear las tareas automáticamente.
									3. Alertas y Notificaciones:
										* Configura alertas y notificaciones para recibir avisos en caso de que haya problemas durante las operaciones de respaldo o restauración. Utiliza SQL Server Agent para gestionar estas alertas.
									4. Registros de Errores y Eventos de Windows:
										* Examina los registros de errores de SQL Server y los eventos de Windows para obtener información detallada sobre cualquier problema o error que pueda ocurrir durante las operaciones.
									5. Herramientas de Monitoreo Externas:
										* Considera el uso de herramientas de monitoreo de terceros que puedan proporcionar informes más detallados y alertas personalizadas.
									6. Scripts de Monitoreo Personalizados:
										* Desarrolla scripts personalizados que puedan ejecutarse periódicamente para verificar el estado de las operaciones. Estos scripts pueden proporcionar métricas específicas que te interesen.
									7. Dashboards de Monitoreo:
										* Configura dashboards de monitoreo que te den una visión general del rendimiento y el estado de las operaciones de respaldo y restauración.
								Recuerda que la clave para un monitoreo efectivo es la proactividad. Configura alertas para identificar problemas antes de que afecten significativamente la operación de la base de datos.
						Siguiendo estas medidas de precaución, puedes minimizar los riesgos asociados con las operaciones de restauración y asegurarte de que la base de datos se restaure de manera segura y eficiente.
					7. Habilitar el Modelo de Recuperación Apropiado:
						* Configura el modelo de recuperación de la base de datos según tus necesidades (Simple, Completo, o Bulk-Logged). El modelo de recuperación afecta la forma en que se administran los registros de transacciones.
						Simple:
							Cuando se utiliza el modelo de recuperación Simple, la base de datos mantiene un número mínimo de registros de transacciones. Este modelo es apropiado para bases de datos donde no se requiere la capacidad de realizar restauraciones a un punto específico en el tiempo y donde la pérdida de datos desde el último respaldo no es crítica.

							Para cambiar el modelo de recuperación de una base de datos a Simple, puedes utilizar la siguiente instrucción SQL: ALTER DATABASE TuBaseDeDatos SET RECOVERY SIMPLE;

							Donde "TuBaseDeDatos" es el nombre de la base de datos a la que deseas cambiar el modelo de recuperación.

							Recuerda que, al utilizar el modelo de recuperación Simple, no puedes realizar copias de seguridad de registros de transacciones. Los registros de transacciones se liberan automáticamente después de cada copia de seguridad completa de la base de datos. Esto puede simplificar la administración de la base de datos, pero también significa que no podrás realizar restauraciones a un punto específico en el tiempo más allá del último respaldo completo.

							Si decides utilizar el modelo de recuperación Simple, asegúrate de comprender las implicaciones y de planificar copias de seguridad completas de manera regular según tus necesidades de retención de datos y capacidad de recuperación.
						Completo:
							-- Cambiar el modelo de recuperación a Completo
							ALTER DATABASE TuBaseDeDatos SET RECOVERY FULL;
							* "SET RECOVERY FULL": Esta cláusula establece el modelo de recuperación de la base de datos en "Completo". El modelo de recuperación determina cómo se gestionan los registros de transacciones y afecta las opciones de copia de seguridad y recuperación disponibles para la base de datos.
							* En el modelo de recuperación "Completo", se pueden realizar copias de seguridad de registros de transacciones y copias de seguridad diferenciales. Esto permite una recuperación a un punto específico en el tiempo, lo que es útil para aplicaciones que requieren la capacidad de realizar recuperaciones precisas.
							* Es importante mencionar que al cambiar el modelo de recuperación a "Completo", también se aumenta la complejidad de la administración, ya que es necesario realizar copias de seguridad regulares de los registros de transacciones para evitar el crecimiento no controlado del registro de transacciones. Además, la restauración a un punto específico en el tiempo requiere registros de transacciones de copias de seguridad. Por lo tanto, al cambiar el modelo de recuperación, debes asegurarte de tener una estrategia de copia de seguridad y restauración adecuada en su lugar.
					8. Monitorizar y Gestionar el Espacio en Disco:
						* Asegúrate de tener suficiente espacio en disco para almacenar copias de seguridad y registros de transacciones. Configura alertas para notificar sobre la falta de espacio.
					9. Implementar Respaldo de la Base de Datos del Sistema (System Databases):
						* Realiza copias de seguridad de las bases de datos del sistema (master, model, msdb) junto con las bases de datos de usuario.
					10. Documentar y Automatizar:
						* Documenta tus políticas de respaldo y recuperación y automatiza el proceso tanto como sea posible.

				Recuerda que la implementación específica puede variar según tus requisitos y el entorno. Personaliza estas prácticas recomendadas según las necesidades de tu aplicación y tu política de recuperación.
			En Oracle:
			En MySQL:
		12. Pruebas de Seguridad y Evaluaciones de Vulnerabilidad:
			* Realiza pruebas de seguridad y evaluaciones de vulnerabilidad de manera regular para identificar y mitigar posibles amenazas.
		13. Migraciones:
			En PostgreSQL:
			En SQL Server:
				Las migraciones en el contexto de bases de datos se refieren al proceso de cambiar la estructura de una base de datos, ya sea para actualizarla a una nueva versión, agregar nuevas tablas o modificar las existentes. En SQL Server, una forma común de realizar migraciones es mediante el uso de scripts de SQL.

				Aquí hay una guía general sobre cómo realizar migraciones en SQL Server:
					1. Planificación:
						* Antes de realizar cualquier cambio en la base de datos, es crucial realizar una planificación adecuada.
						* Identifica los cambios que necesitas realizar y cómo afectarán a la estructura de la base de datos.
					2. Backup:
						* Antes de realizar cualquier migración, realiza una copia de seguridad completa de la base de datos. Esto es esencial en caso de que algo salga mal durante la migración.
					3. Scripts de Migración:
						* Crea scripts de SQL que contengan las instrucciones necesarias para realizar los cambios deseados en la base de datos.
						* Estos scripts pueden incluir instrucciones como `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`, etc.
					4. Control de Versiones:
						* Utiliza algún sistema de control de versiones para rastrear los cambios en tus scripts de migración. Esto facilita la colaboración y permite volver a versiones anteriores si es necesario.
					5. Transacciones:
						* Envuelve tus scripts de migración en transacciones. Esto asegura que todos los cambios se realicen de manera atómica; es decir, o se realizan todos los cambios o ninguno.
					6. Pruebas:
						* Realiza pruebas exhaustivas de tus scripts en un entorno de prueba antes de aplicarlos a la base de datos en producción.
					7. Ejecución de Migración:
						* Una vez que tus scripts hayan sido probados con éxito, ejecútalos en la base de datos en producción.
						* Monitorea el proceso y verifica que todo se haya ejecutado según lo planeado.
					8. Verificación:
						* Después de la migración, verifica que la base de datos esté funcionando correctamente.
						* Asegúrate de que las aplicaciones que utilizan la base de datos también funcionen como se espera.
					9. Documentación:
						* Actualiza la documentación de la base de datos para reflejar los cambios realizados.
					10. Registro de Cambios:
						* Lleva un registro de todos los cambios realizados en la base de datos. Esto es útil para futuras referencias y auditorías.

				Es importante destacar que las migraciones de bases de datos deben realizarse con precaución, especialmente en entornos de producción. Realizar copias de seguridad, probar exhaustivamente y seguir buenas prácticas de desarrollo son pasos clave para garantizar el éxito de las migraciones en SQL Server.
			En Oracle:
			En MySQL:

	Recuerda que el hardening de bases de datos es un proceso continuo y debe adaptarse a medida que evolucionan las amenazas y las necesidades de seguridad. Cada sistema de gestión de bases de datos puede tener configuraciones y características específicas, por lo que es importante conocerlas y aplicar las prácticas de hardening adecuadas a tu entorno particular.

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
