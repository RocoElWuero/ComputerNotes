Archivos SQL
--Comentarios de una linea
/*
	Bloque de comentarios
*/

UpperCamelCase
lowerCamelCase
snake_case


Base de Datos: Es un medio donde se almacena datos y este medio tiene que tener cierta persistencia en el tiempo. Y cuyos datos ya tienen un contexto.
Informáticas
No Informáticas:
	Pinturas Ruprestes
	Diarios
	Libros
	Discos

BD				o			Dato
Divina Comedia				Libro
Felix						Gato
Foto de las torres gemelas	Foto

BD vs Dato: Es el contexto en el que se hable.

Dato: Es cualquier cosa que no tenga un significado o valor o contexto.
	Libro
	Gato
	Foto
	Carro
	Pelicula
	Pixel
	Archivo

Información: Conjunto de datos pero que ya tiene un significado. Ya transmiten algo, ya dejan una consecuencia.

Modelos de datos para bases de datos INFORMÁTICAS.
Archivos
Red/Distribuidos
Relacional: Conjunto: Bolsita que contiene elementos con alguna caracteristica en comun.
	Ejemplos de conjuntos:
		Almnunos
		Profesores
		Escuelas
		Instituciones Financieras
		Insti Publicas
		Insti Privadas
	Diagramas que se ocupan:
		EntidadRelacion:
			Entidad
			Relacion
			Atributo
				Simple
				Compuesto
			Referencias
		DiagramaLogico
			Relaciones
			Referencias
			Atributos
				Simple
				Compuesto
		DiagramaFisico
			Relaciones:
				Tablas
				Referencias
				Atributos con tipo de dato
					Simple
					Compuesto

	INSTITUCION
	privada
		rfc
		nombre
		fundador --(ers)
		sede
		anioCreacion
		inicioOperaciones
	publica
		rfc
		nombre
		fundador --(ers)
		sede
		anioCreacion
		inicioOperaciones
OO
PostRelacionales:
	Documentos/MongoDB
	Hibridos
	Etc





SQL
Que es? Es un lenguaje.
DML: DataManipulationLanguage
DDL: DataDefinitionLanguage
DCL: DataControlLanguage
TCL: TransactControlLanguage

SQL v2 (1992): DML + DDL
Es un lenguaje de definción y consultas de datos. Es el estandar propuesto por Edgar Frank Codd.

De la v3 en adelante, se le agregaron el DCL, el TCL y OO.
	Es un lenguaje de administración de usuarios, programación, definción y consultas de datos.

Cada manejador lo implementa como quiera. O sea lo que ocupan los manejadores es simplemente un "dialecto".
El estandar, por llamarlo asi, es el lenguaje original.

Tipos de datos: Primitivos (Codd), Estandar (ISO) y Propio del manejador.


Diccionario de datos: Es una tabla del manejador que tambien almacena información o mejor dicho, meta-información, o metadatos de las tablas que el usuario creó.
	Los metadatos del Archivo pueden ser la hora de creación, modificación, localización (GPS), autor, contribuyentes, etc.




