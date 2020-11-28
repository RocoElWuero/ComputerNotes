┌-----------------------------------------------------------------------┐
|                       ARCHIVO COMPATIBLE CON BAT                      |
├-----------------------------------------------------------------------┤
| Visualizar con el comando bat                                         |
| (https://www.atareao.es/software/utilidades/bat-un-cat-con-alas/)     |
| y con un tamaño adecuado para que este menseje no salga distorcionado.|
├-----------------------------------------------------------------------┤
|                     Desarrollado por: RocoElWuero                     |
└-----------------------------------------------------------------------┘

┌────────────────────────────────────────────────────────────────────────────────────────────┐
│ SIMBOLOGIA BASES DE DATOS                                                                  │
├────────────────────────────────────────────────────────────────────────────────────────────┤
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ <>     Obligado pero el nombre es variable por el usuario.                                 │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ []     Opcional pero el nombre es variable por el usuario.                                 │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ !<>    Obligado y el nombre es Fijo.                                                       │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ ![]    Opcional y el nombre es Fijo.                                                       │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ { | }  Es un OR Exclusivo, del Conjunto de Casos (opcional) solo se puede seleccionar UNO. │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ ...    Pueden haber más valores/argumentos, banderas/opciones, comandos/orden.             │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ ... *  Pueden haber más parámetros (Shell Scripting).                                      │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ =      Obligado a pasar un tipo de valor/argumento especificado.                           │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ +      Indica que se le agregara una cadena de texto.                                      │
├────────────────────────────────────────────────────────────────────────────────────────────┤
│ [@]    Opción de una lista de información                                                  │
└────────────────────────────────────────────────────────────────────────────────────────────┘

La Maquina de Turing:
	#Está conformado por un alfabeto de entrada y uno de salida, un símbolo especial llamado blanco (normalmente b, Δ o 0), un conjunto de estados finitos y un conjunto de transiciones entre dichos estados. Su funcionamiento se basa en una función de transición, que recibe un estado inicial y una cadena de caracteres (la cinta, la cual es finita por la izquierda) pertenecientes al alfabeto de entrada. Luego va leyendo una celda de la cinta, borrando el símbolo, escribir el nuevo símbolo perteneciente al alfabeto de salida y finalmente avanza a la izquierda o a la derecha (solo una celda a la vez), repitiendo esto según se indique en la función de transición, para finalmente detenerse en un estado final o de aceptación, representando así la salida.
	Este modelo está formado por un alfabeto de entrada y uno de salida, un símbolo especial llamado blanco (normalmente b, Δ o 0), un conjunto de estados finitos y un conjunto de transiciones entre dichos estados. Su funcionamiento se basa en una función de transición, que recibe un estado inicial y una cadena de caracteres (la cinta, la cual puede ser infinita) pertenecientes al alfabeto de entrada. La máquina va leyendo una celda de la cinta en cada paso, borrando el símbolo en el que se encuentra posicionado su cabezal y escribiendo un nuevo símbolo perteneciente al alfabeto de salida, para luego desplazar el cabezal a la izquierda o a la derecha (solo una celda a la vez). Esto se repite según se indique en la función de transición, para finalmente detenerse en un estado final o de aceptación, representando así la salida.
	Wikipedia. (16 may 2020). Máquina de Turing. Recuperado de https://es.wikipedia.org/wiki/Máquina_de_Turing

Input - Entrada
Output - Salida

Entrada => [Procesamiento] => Salida







INDICE

1. Plataforma teórico Conceptual
2. Modelo Relacional
3. Modelo Orientado a Objeto
4. Diseño
5. Construcción
6. Administración
7. Nuevas Tecnologías

Objetivos especificos:
[@] Diagrama Conceptual
[@] Diagrama Físico
[@] Diagrama Entidad Relación
[@] Diagrama de Clases

Dato: hecho asislado que por si mismo no dice nada.
40, elefante, mesa, monitor, <imagen>, <sonido>, <punto>, <linea>, <poligono>, <documento>, <huellaDactilar>, <chamarra>, ...

Información: Contexto/Relación/Significado/Coherencia:
 /-----------------------------\              -
|          Coronavirus          |             -
| 25                    México  |             -
|             China             |> ¿? <=======╝
| 01/02/2012            Juan    |
 \-----------------------------/
Categorizar/Etiquetar/Ordenar/Seleccionar/Clasificar los datos para darles un contexto, a sea el nombre del atributo.

Datos Fijos VS Datos Calculados
Nunca una tabla tendra un solo atributo si la información crece, se necesita esquemas para guardar la información.

Almacenar	VS	Guardar
   |               |
   v               v
Computadora		En cualquier medio

Sistema/Máquina/Automáta: Conjunto de herramientas/elementos relacionados o que trabajan en conjunto y tiene una entrada, la procesa y genera una salida.
Sistema de Información: Conjunto de datos relacionados o conjunto de información, q...

La Base de Datos se genera con el proposito de la salida objetivo.

------------------------
TAREA: Banco de dato, Bases de Datos, Sistema Informático, Sistema de Bases de Datos
------------------------

Sistema de Información:
[@] Cuaderno
[@] Persona
[@] Pluma
[@] Información
[@] Profesor

Reglas de Negocio:
[@] Ordenado
[@] Clasificado
[@] Etiquetado
[@] Contexto

Ticket: BD de productos comprados

Los Sistemas de Información no necesariamente estan automatizados
Los Sistemas Informáticos pueden contener varios Sistemas de Información

Número VS Digito
Los números son Operables y los digitos son Caracteres

Para relacionar datos se debe darle un significado

¿Cuando/como se digitaliza? => Sistema Informático (perifericos electrónico)
Sistema de Información: Conjunto de datos almacenados y procesados, para la toma de decisiones (en general), Puede o No estar automatizado, y puede/no estar dentro de un sistema informático

Pintura rupreste = Dato
Piedra           = BD

Sistema de Bases de Datos: Conjunto de datos, hardware, software y personas.

Un dato de la BD es cuando hay más de ese estilo en alguna otra parte, o sea la cantidad/cardinalidad.

BD VS Dato
BD:
	[@] Ordenada
[@] Reglas de Negocio
	[@] Conjunto de Información
	[@] Persistente
[@] Conjunto de datos contextualizados
Dato: hecho asislado que por si mismo no dice nada.

Sistema de Bases de Datos VS Sistema/Administrador/Gestor de Bases de datos VS Relacional
Sistema de Bases de Datos: Conjunto de datos, hardware, software y personas, que permite automatizar los procesos de una o varias BD, y el sistema de información.

Ordenar VS Clasificar
El ordenamiento es el proceso con el que yo decidi darle un sentido porque tiene un objetivo.
El clasificamiento es que tenga la misma etiqueta.

La información se puede repetir.
Los datos pueden tener redundancia.

Modelos de datos
[@]	Modelos puros
	[@]	Sistema de Archivos\
	[@]	Jerarquicos         |> Prerelacionales
	[@]	Red                /
	[@]	Relacionales ========> El unico que esta estandarizado
	[@]	Orientado a Objetos\
[@] Modelos Hibridos        |
	[@]	Geográficos         |
	[@]	Inteligentes        |> Postrelacionales
	[@]	No SQL              |
	[@]	Distribuidos        |
	[@]	Objeto - Relacional/

Los conceptos nunca serán BD
N.A. Dato
N.A. Información
N.A. Sistema de Información
A.   Sistema Informático
N.A. BD
A.   Banco de datos
A.   Sistema de base de datos

Banco de datos puede contener información no homogeneizada

BD: para que y porque
[@] Conjunto de información
[@] Ordenada
[@] Persistente/Lugar/Medio en un tiempo determinado
[@] Cardinalidad

Información física que no cambia el etiquetado

Modelo de datos es la forma, reglas, estructura y la semantica en como se va a abstraer la información.

Evolución de las BD/Modelo de BD
1. Sistemas de Archivos (50's)
	Modelo de datos relacionados
	Conjunto de datos abstraidos, guardados, almacenados en archivos.
	¿Cual es la semantica, reglas, estructura?
	A. Campo
	A. Registro
	A. Archivo
	Cod se fijo que algunos modelos de sistema de archivos contenian un campo donde llevaba un indexado (números), a lo cual creo el concepto de Primary Key (PK)
	Semantica => Registros relacionados entre si
	Claves => Indices/...
	Estructura de almacenamiento => Archivo
	Relación entre dos archivos => Archivo
	Registros => 
	Método de busqueda => ...
	Campos => Archivos
2. Bases de Datos Jerarquicas (60's)
	Semantica => Cada registro es una hoja, un nodo hijo solo puede tener un nodo padre
	Claves => Inodo
	Estructura de almacenamiento => Conjunto de datos abstraidos, en forma de arbol invertido
	Relación directa
	Registros => 
	Método de busqueda => Ruta
	Campos => Nodos
3. Bases de Datos Red/Reticulares (70'0)
	Semantica => Relaciones de muchos a muchos, mejor consistencia de la información, conjunto de datos que los guarda en grafos, Nodos padre-hijo
	Claves => Inodo
	Estructura de almacenamiento => ...
	Relación más directa
	Registros => ...
	Método de busqueda => Ruta critica (menor tiempo, costo y ...)
	Campos => Nodos
4. Bases de Datos Relacional (80's)
	Semantica => ...
	Claves => PK
	Estructura de almacenamiento => Relación
	Relación entre dos relaciones => Atributo en común
	Registros => Tuplas
	Método de busqueda => ...
	Campos => Atributos
5. Bases de Datos Orientado a Objetos
	Semantica => ...
	Claves => Oid
	Estructura de almacenamiento => ...
	Relación => ...
	Registros => ...
	Método de busqueda => ...
	Campos => ...

Ejercicio de Identificación de Bases de Datos
Horario de Clases => V
Horario de Clase => F
Horario => F
Aula con Ventanas => F
Aula con Ventana del salon X => V
Animales del Mundo => V
Dieta de un adulto de 40 años => V
Pergamino egipcio => V
	Porque es la 2do tipo de BD más antiguo del mundo

Modelos de Datos		Estructura de Almacenamiento	Identificador	Contenedor Mínimo/Atomico	Registro/Instancia de estructura	Vinculan
Sistema de archivos		Archivo							Indice			Campo						Registro							Archivos
BD Jerarquicas			Arbol Invertido					Inodo			Nodo arbol					Hoja								Nodo H-P
BD Red					Grafo							Inodo			Nodo grafo					Hoja								Nodo H-Ps
BD Relacional			Relación						PK				Atributo					Tupla								Atributo en común
BD Orientado a Objetos	Clase							Oid				Propiedad					Objeto								Método-mensajes
GENERICO				ARCHIVO							IDENTIFICADOR	CAMPO						REGISTRO							VINCULOS,REFERENCIAS

PostRelacionales:
[@] BD Geográficas
[@] BD Documentales
[@] BD No SQL
	[@] Multivalor
	[@] Documental
	[@] Clave-Valor
	[@] Grafos
[@] BD Distribuidas
[@] BD Objeto Relacional
[@] BD Inteligentes
	[@] Deductivas
[@] BD Multidimensionales
[@] BD Multimedia
Google Academics, Scielo, Bidi

Conceptos Genéricos/Básicos de cualquier BD
[@] Consistencia, solo si ya hay/tiene datos
	Evalua el como estan los datos con base en las reglas de negocio
	Forma de evaluar que hubo integridad
	Capacidad de seguir las reglas del negocio y si solo hay datos
	Y sus busquedas tardan más
[@] Integridad
	Mecanismo para establecer o cambiar las reglas de negocio y antes de llenar la BD Relacional (No necesariamente necesitan datos)
		[@] Restricciones y/o Constraint
			[@] PK
			[@] FK
			[@] NN
			[@] UNIQUE
			[@] CHECK
		[@] Tipo de dato
		[@] Rules
		[@] Checar el etiquetado
		[@] Clave principal: Identificador de un registro
			Candidata:
			[@] Not Null (NN)
			[@] Not Duplicate (ND)
			[@] Not Change (NC)
			Ideal (no siempre se puede):
			[@] Numerica
			[@] Corta
		[@] Entidad: Persona o proceso importante dentro de la base
			[@] Un nombre único para identificarse
			[@] Deben todos tener un identificador
		[@] Referencia: Como se afectan a las padres e hijos
		[@] Campo: Unidad mínima de almacenamiento
			[@] Valores atómicos y se atómizan (si es necesario para las consultas)
		[@] Usuario: Sean reglas de negocio especificas para esa BD
[@] Redundancia
	Repetición Inecesaria de Información, NO DE DATOS
[@] Seguridad
	 Que (permisos) y el quién (usuario) puede hacer en las BD
[@] Independencia lógica de datos
	La BD es independente del software de aplicación con el que haya sido generada.
[@] Independencia física
	La BD es independente de los dispositivos de almacenamiento con el que haya sido generada.


Caracteristicas de las BD
[@] Concurrencia de la BD, cuantos accesos puedo tener a la BD
[@] Persistencia se da por el medio

Dominio es el conjunto de valores de un atributo

Entidad: Cosa, persona, concepto, proceso que sin el la BD no se podría dar, la suma de las entidades forman la BD.
Para que funcione la BD y siempre tienen más de un registro.

BD: Conjunto de información, persistente, ordenada

Que hacer entidades
[@] PERSONA
[@] ARTISTA
[@] GENERO
[@] CANCION
Que no hacer entidades
[@] id
[@] duracion
[@] nombre

Modelo Relacional
Diseño BDR
[@] Diagrama Conceptual (Chen)
[@] Diagrama/Modelado Lógico
[@] Modelado Físico

Chen/Entidad-Vinculo/Modelo Semántico/Modelado Diagrama Conceptual
Entidades:
...