Tipos de Datos
	Enteros
		edad=25
		estatura=1.67
	Cadenas
		paterno="Rojas"
		inicialNombre='O'
		cadenaFormateada=f"Mide {estatura} mtrs"
		cadenaFormateada2="Tiene {} años".format(edad)
		cadenaFormateada3=paterno+" Castillo"
		cadenaFormateada4="%sscar"%inicialNombre
		cadenaFormateada5="%s %s"%(cadenaFormateada3, cadenaFormateada4)
		cadena = "¡Hola, mundo!"
		cadena[5]
		#','
		cadena[5:12]
		#', mundo'
		cadena[:8]
		#'¡Hola, m'
		cadena[8:]
		#'undo!'
		cadena.index(',')
		#5
		Teoria de Conjuntos
			Elemento a Pertenece al conjunto A
				"mundo" in cadena
				#True

			Elemento a No Pertenece al conjunto A
				"mundo" not in cadena
				#False

			A es igual a B
				cadena == cadena
				#True
	Booleanos
		True
		False
	Nulos o sin valor
		En Python, no existe un concepto directo de "valor nulo" como en algunos otros lenguajes de programación. En su lugar, se utiliza el valor especial "None" para representar la ausencia de un valor o la falta de un valor válido. "None" es un objeto único en Python y se utiliza comúnmente para indicar que una variable no tiene ningún valor asignado.

		Aquí hay algunos aspectos clave sobre "None":
			1. Asignación y Comparación:
				Puedes asignar "None" a una variable para indicar que no tiene un valor definido:
					variable = None
				También puedes comparar si una variable contiene "None" utilizando el operador de igualdad "==":
					if variable == None:
						print("La variable es None.")
					else:
						print("La variable no es None.")
				Sin embargo, es más idiomático utilizar la expresión "variable is None" para realizar la comparación con "None".
				if variable is None:
						print("La variable es None.")
					else:
						print("La variable no es None.")
			2. Retorno de Funciones:
				Si una función no especifica un valor de retorno, se devuelve implícitamente "None".
					def funcion_sin_retorno():
						pass
					resultado = funcion_sin_retorno()
					print(resultado)
					#None
			3. Valores Predeterminados:
				En algunas funciones, puedes especificar "None" como valor predeterminado para un argumento si deseas permitir que el usuario no proporcione un valor específico.
					def funcion_con_argumento(arg=None):
						if arg is None:
							print("No se proporcionó un argumento.")
						else:
							print("El argumento es:", arg)
			4. Manejo de Valores Ausentes:
				El valor "None" se usa a menudo para indicar que una variable o un objeto no tiene un valor válido. Por ejemplo, en lugar de usar un valor arbitrario como "-1" para indicar la falta de un resultado válido, se usa "None".
			5. Cuidado al Usar "None":
				Siempre ten en cuenta que "None" es un objeto en sí mismo y tiene su propio comportamiento. Por ejemplo, tratar de acceder a un atributo o método en "None" provocará un error.
		En resumen, en Python, el valor "None" se utiliza para representar la ausencia de un valor válido y se usa para indicar que una variable, atributo o resultado no tiene un valor asignado o válido.
		De GPT
	Fechas
		#Es necesario importar las depencendias necesarias
		from datetime import date
		from datetime import datetime
		date(2019,2,22)
		#2019-02-22
		#Día actual
		today = date.today()
		#Fecha actual
		now = datetime.now()
		print(today)
		print(now)
		#Date
		print("El día actual es {}".format(today.day))
		print("El mes actual es {}".format(today.month))
		print("El año actual es {}".format(today.year))
		#Datetime
		print("El día actual es {}".format(now.day))
		print("El mes actual es {}".format(now.month))
		print("El año actual es {}".format(now.year))
		print("La hora actual es {}".format(now.hour))
		print("El minuto actual es {}".format(now.minute))
		print("El segundo actual es {}".format(now.second))
		#Nueva fecha
		new_date = datetime(2019, 2, 28, 10, 15, 00, 00000)
		if now < new_date:
			print("La fecha actual es menor que la nueva fecha")
		now = datetime.now()
		format = now.strftime('Día: %d, Mes: %m, Año: %Y, Hora: %H, Minutos: %M, Segundos: %S')
		print(format)
		#Día: 24, Mes: 07, Año: 2023, Hora: 16, Minutos: 03, Segundos: 47
	Determinar tipo
		x=range(4)
		type(x)
		#<class 'range'>
		type(1)
		#<class 'int'>
		type(2.2)
		#<class 'float'>
		type(True)
		#<class 'bool'>
		type('')
		#<class 'str'>
			type(__name__)
			#<class 'str'>
		type([])
		#<class 'list'>
		type(())
		#<class 'tuple'>
			t='',''; type(t)
			#<class 'tuple'>
			t=2,2; type(t)
			#<class 'tuple'>
			t=True,False; type(t)
			#<class 'tuple'>
		type({})
		#<class 'dict'>
		type({1,2})
		#<class 'set'>
		type(date.today())
		#<class 'datetime.date'>
		type(datetime.now())
		#<class 'datetime.datetime'>
		type(open(r"./Documents/ComputerNotes/Python/apuntes.txt.py","r"))
		#<class '_io.TextIOWrapper'>
		type(open)
		#<class 'builtin_function_or_method'>
		type(exit)
		#<class '_sitebuiltins.Quitter'>
		def x(): print("xD");
		type(x)
		#<class 'function'>
		type(type)
		#<class 'type'>
			type(None)
			#<class 'NoneType'>
			type(range)
			#<class 'type'>
			type(int)
			#<class 'type'>
			type(float)
			#<class 'type'>
			type(bool)
			#<class 'type'>
			type(str)
			#<class 'type'>
			type(list)
			#<class 'type'>
			type(tuple)
			#<class 'type'>
			type(dict)
			#<class 'type'>
			type(set)
			#<class 'type'>



Operaciones
	Aritméticas
		3+6
		#9
		7-5
		#2
		4/2
		#2.0
		4%2
		#0
		4**2
		#16
	Relacionales
		>
		<
		==
		!=
		>=
		<=
		in
	Lógicos
		and
		or
		not



Convertir entre tipos de datos
	Primitivos
		Castear a Texto
			str('texto a texto')
			#'texto a texto'
			str(2);
			#'2'
			str(15.5);
			#'15.5'
			str(True);
			#'True'
		Castear a Entero
			int(1)
			#1
			int(2.2)
			#2
			int('a')
			#ValueError: invalid literal for int() with base 10: 'a'
			int('a', 16)
			#10
			int(True)
			#1
			int(False)
			#0
		Castear a Flotante
			float(1)
			#1.0
			float(True)
			#1.0
			float(False)
			#0.0
		Castear a Booleano
			bool('')
			#False
			bool(12)
			#True
			bool(0)
			#False
	No primitivos
		lista = [1,2,3]
		type(lista)
		#<class 'list'>
		lista
		#[1, 2, 3]
		tupla = tuple(lista)
		type(tupla)
		#<class 'tuple'>
		tupla
		#(1, 2, 3)
		lista2 = list(tupla)
		type(lista2)
		#<class 'list'>
		lista2
		#[1, 2, 3]
		diccionario = dict(zip(lista,lista2))
		type(diccionario)
		#<class 'dict'>
		diccionario
		#{1: 1, 2: 2, 3: 3}



Estructuras de Control
	Condicionales
		if condition:
			pass
		elif condition2:
			pass
		else:
			pass

	Bucles
		while condition:
			pass

		for x in range(10):
			pass

		for x in range(10):
			if x == 5:
				print(x)
				continue
			elif x >5:
				break
		#5

		x = [1,2,3,4]
		for y in x:
			print(y)
		'''
			1
			2
			3
			4
		'''

		for letra in 'texto':
			print(letra)
		'''
			t
			e
			x
			t
			o
		'''



Entrada de Datos
	fechaNacimiento=datetime.strptime(input("Ingresa la fecha de nacimiento\nEn el siguiente formato\n%Y-%m-%d %H:%M:%S: "), '%Y-%m-%d %H:%M:%S')
	edad=int(input("Ingresa tu edad: "))
	nombre=str(input("Ingresa tu nombre: "))
	trabajoEstado=bool(int((((input("Trabajas?\nS/n: ").replace("N", "0")).replace("n", "0")).replace("S", "1")).replace("s", "1")))



Range
	for x in range(4):
		print(x)
	'''
	0
	1
	2
	3
	'''
	for x in range(2,6):
		print(x)
	'''
	2
	3
	4
	5
	'''
	for x in range(3,9,2):
		print(x)
	'''
	3
	5
	7
	'''

	'''
		range(a,b,c) == [a, a+c, a+2c,  a+3c, ...]
		range(3,9,2) == [3, 3+2, 3+2*2] == [3,   5,	 7]
	'''



Colecciones
	Una colección permite agrupar varios objetos bajo un mismo nombre.

	Listas
		Una lista es un conjunto ordenado de objetos. Por objetos entendemos cualquiera de los tipos de datos ya mencionados, incluso otras listas.
			[1,'c',"Cadena",2.0,True,[]]
		Para crear una lista, especificamos sus elementos entre corchetes y separados por comas.
		lenguajes = ["Python", "Java", "C", "C++"]
		lenguajes[0]
		#'Python'
		lenguajes[1]
		#'Java'
		lenguajes[-1]
		#'C++'
		lenguajes[-2]
		#'C'

		lenguajes = ["Python", "Java", "C", "C++"]
		del lenguajes[1]
		lenguajes
		#['Python', 'C', 'C++']
		lenguajes[1]
		#'C'
		lenguajes.insert(1, "Java")
		lenguajes
		#['Python', 'Java', 'C', 'C++']
		lenguajes.append("Haskell")
		lenguajes
		#['Python', 'Java', 'C', 'C++', 'Haskell']

		lista = [3,7,9,5,3,7,12]
		lista.sort()
		lista
		#[3, 3, 5, 7, 7, 9, 12]

		lista = [1, 2, 3, 4]
		max(lista)
		#4
		min(lista)
		#1
		len(lista)
		#4
		lista[3]
		#4

		Teoria de Conjuntos
			Elemento a Pertenece al conjunto A
				10 in lista
				#False
			Elemento a No Pertenece al conjunto A
				10 not in lista
				#True
			A es igual a B
				lista == lista
				#True

	Tuplas
		Las tuplas, al igual que las listas, son colecciones ordenadas. No obstante, a diferencia de éstas, son inmutables. Es decir, una vez asignados los elementos, no pueden ser alterados. En términos funcionales, podría decirse que las tuplas son un subconjunto de las listas, por cuanto soportan las operaciones con índices para acceder a sus elementos, pero no así las de asignación.
		lenguajes = ("Python", "Java", "C", "C++")
		lenguajes[0]
		#'Python'
		lenguajes[-1]
		#'C++'
		'''
			del lenguajes[1]
			#Traceback (most recent call last):
			#  File "<stdin>", line 1, in <module>
			#TypeError: 'tuple' object doesn't support item deletion
			lenguajes.insert(1, "Java")
			#Traceback (most recent call last):
			#  File "<stdin>", line 1, in <module>
			#AttributeError: 'tuple' object has no attribute 'insert'
			lenguajes.append("Haskell")
			#Traceback (most recent call last):
			#  File "<stdin>", line 1, in <module>
			#AttributeError: 'tuple' object has no attribute 'append'
		'''

		tupla = (1, 2, 3, 4)
		max(tupla)
		#4
		min(tupla)
		#1
		len(tupla)
		#4
		tupla[3]
		#4

		Teoria de Conjuntos
			Elemento a Pertenece al conjunto A
				10 in tupla
				#False
			Elemento a No Pertenece al conjunto A
				10 not in tupla
				#True
			A es igual a B
				tupla == tupla
				#True

	Diccionarios
		Los diccionarios, a diferencia de las listas y las tuplas, son colecciones no ordenadas de objetos. Además, sus elementos tienen una particularidad: siempre conforman un par clave-valor. Es decir, cuando añadimos un valor a un diccionario, se le asigna una clave única con la que luego se podrá acceder a él (pues la posición ya no es un determinante).
		lenguajes = {"Python": 1991, "C": 1972, "Java": 1996}
		lenguajes
		#{'Python': 1991, 'C': 1972, 'Java': 1996}
		lenguajes["Java"]
		#1996
		lenguajes["Elixir"] = 2011
		lenguajes
		#{'Python': 1991, 'C': 1972, 'Java': 1996, 'Elixir': 2011}
		del lenguajes["Java"]
		lenguajes
		#{'Python': 1991, 'C': 1972, 'Elixir': 2011}
		'''
			lenguajes.insert(1, "Java")
			Traceback (most recent call last):
			  File "<stdin>", line 1, in <module>
			AttributeError: 'dict' object has no attribute 'insert'
			lenguajes.append("Haskell")
			Traceback (most recent call last):
			  File "<stdin>", line 1, in <module>
			AttributeError: 'dict' object has no attribute 'append'
		'''

		diccionario = {"Python": 1991, "C": 1972}
		max(diccionario)
		#'Python'
		min(diccionario)
		#'C'
		len(diccionario)
		#2
		diccionario["C"]
		#1972

		El metodo ".clear()" vacia un diccionario por completo
			diccionario.clear()
			diccionario
			#{}
		El metodo ".copy()" crea una copia del diccionario
			diccionario2 = diccionario.copy()
			diccionario2
			#{'Python': 1991, 'C': 1972}
		El metodo ".fromkeys()" crea un nuevo diccionario, donde sus claves son las mismas, pero los valores son nuevos
			diccionario3 = diccionario2.fromkeys(diccionario2)
			diccionario3
			#{'Python': None, 'C': None}
			valor=0
			diccionario3 = diccionario2.fromkeys(diccionario2,valor)
			diccionario3
			#{'Python': 0, 'C': 0}
		El metodo ".get()" obtiene el valor de una clave
			diccionario
			#{'Python': 1991, 'C': 1972}
			diccionario.get("C")
			#1972
		El metodo ".items()" regresa una lista de tipo pares (clave, valor), una lista
			diccionario
			#{'Python': 1991, 'C': 1972}
			lista = diccionario.items()
			lista
			#dict_items([('Python', 1991), ('C', 1972)])
			type(lista)
			#<class 'dict_items'>
		El metodo ".keys()", retorna una lista de tipo claves, que precisamente solo contienen las claves, una lista
			lista = diccionario.keys()
			lista
			#dict_keys(['Python', 'C'])
			type(lista)
			#<class 'dict_keys'>
		El metodo ".update()" añade varios valores al diccionario
			diccionario2
			#{'Python': 1991, 'C': 1972}
			diccionario2.update({'C#': 2000, 'Java': 1996})
			diccionario2
			#{'Python': 1991, 'C': 1972, 'C#': 2000, 'Java': 1996}
		El metodo ".values()" retorna solamente los valores del diccionario 
			diccionario.values()
			#dict_values([1991, 1972])
			diccionario2.values()
			#dict_values([1991, 1972, 2000, 1996, 1990])

		Teoria de Conjuntos
			Elemento a Pertenece al conjunto A
				"Python" in diccionario
				#True
			Elemento a No Pertenece al conjunto A
				"Python" not in diccionario
				#False
			A es igual a B
				diccionario == diccionario
				#True

	Conjuntos
		Los conjuntos (sets) de Python son colecciones que tiene las siguientes características:
			* La colección es mutable, pero los elementos contenidos tienen que ser inmutables.
			* Los elementos no pueden aparecer repetidos.
			* Es iterable y no secuencial
		A efectos prácticos, un conjunto es un diccionario donde las claves (elementos del conjunto) no tienen valores asociados.
		lenguajes = {"Python", "C", "Java"}
		'''
			lenguajes.insert(1, "Java")
			Traceback (most recent call last):
			  File "<stdin>", line 1, in <module>
			AttributeError: 'set' object has no attribute 'insert'

			lenguajes.append("Haskell")
			Traceback (most recent call last):
			  File "<stdin>", line 1, in <module>
			AttributeError: 'set' object has no attribute 'append'
		'''

		El metodo ".clear()" vacia el conjunto por completo
			lenguajes.clear()
			lenguajes
			#set()
		El metodo ".add()" agrega un elemento al conjunto, si ya existe el elemento no retorna un error
			lenguajes.add("Haskell")
			lenguajes
			#{'Java', 'C', 'Python', 'Haskell'}
		El metodo ".discard()" elimina un elemento al conjunto, si ya no existe el elemento no retorna un error
			lenguajes
			#{'Java', 'C', 'Python', 'Haskell'}
			lenguajes.discard("Haskell")
			lenguajes
			#{'Java', 'C', 'Python'}
		El metodo ".pop()" saca el primer elemento mostrado y lo retorna, si el conjunto esta vacio retorna un error
			lenguajes
			#{'Java', 'C', 'Python'}
			lenguajes.pop()
			#'Java'
			lenguajes
			#{'C', 'Python'}
			lenguajes3 = {'C', 'Python'}
			lenguajes3
			#{'C', 'Python'}
			lenguaje = lenguajes3.pop()
			lenguajes3
			#{'Python'}
			lenguaje
			#'C'
			type(lenguaje)
			#<class 'str'>
			lenguaje = lenguajes3.pop()
			lenguajes3
			#set()
			lenguaje
			#'Python'
			lenguaje = lenguajes3.pop()
			#Traceback (most recent call last):
			#  File "<stdin>", line 1, in <module>
			#KeyError: 'pop from an empty set'
		El metodo ".copy()" crea una copia del conjunto
			lenguajes
			#{'C', 'Python'}
			lenguajes2 = lenguajes.copy()
			lenguajes2
			#{'C', 'Python'}
		El metodo ".remove()" elimina un elemento al conjunto, si ya no existe el elemento si retorna un error
			lenguajes2
			#{'C', 'Python'}
			lenguajes2.remove('Python')
			lenguajes2
			#{'C'}
			lenguajes2.remove('Python')
			#Traceback (most recent call last):
			#  File "<stdin>", line 1, in <module>
			#KeyError: 'Python'

		Elemento a Pertenece al conjunto A.		a∈A:			a in A
			'Haskell' in lenguajes
			#True
		Elemento a No Pertenece al conjunto A.	b∉A:			b not in A
			'Scala' not in lenguajes
			#True
		A es igual a B.							A = B:			A == B
			lenguajes == lenguajes2
			#True
		A no es igual a B.						A ≠ B:			A != B
			lenguajes != {1,2}
			#True
		B es subconjunto de A.					B ⊆ A:			B.issubset(A)
			conjunto = set(range(11))
			conjunto2 = set(range(3))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2}

			conjunto.issubset(conjunto2)
			#False
			conjunto2.issubset(conjunto)
			#True
			conjunto2.issubset({0,1,2,3})
			#True
			conjunto2.issubset({2,3})
			#False
		A es un superconjunto de B.				A ⊇ B:			A.issuperset(B)
			conjunto = set(range(11))
			conjunto2 = set(range(3))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2}

			conjunto.issuperset(conjunto2)
			#True
			conjunto2.issuperset(conjunto)
			#False
		A y B son disjuntos. 					A ∩ B = ∅:		A.isdisjoint(B)
			conjunto = set(range(11))
			conjunto2 = set(range(3))
			conjunto3 = set(range(11,12,1))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2}
			conjunto3
			#{11}

			conjunto.isdisjoint(conjunto2)
			#False
			conjunto2.isdisjoint(conjunto)
			#False
			conjunto3.isdisjoint(conjunto2)
			#True
			conjunto3.isdisjoint(conjunto)
			#True
			conjunto.isdisjoint(conjunto3)
			#True
			conjunto2.isdisjoint(conjunto3)
			#True
		A unión B.								C = A ∪ B:		C = A.union(B)
			conjunto = set(range(11))
			conjunto2 = set(range(11,12,1))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{11}

			conjunto3 = conjunto.union(conjunto2)
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
			conjunto2.union(conjunto)
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
		A intersección B.						C = A ∩ B:		C = A.intersection(B)
			conjunto = set(range(11))
			conjunto2 = set(range(5))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2, 3, 4}

			conjunto3 = conjunto.intersection(conjunto2)
			#{0, 1, 2, 3, 4}
			conjunto2.intersection(conjunto)
			#{0, 1, 2, 3, 4}
		A diferencia de B.						C = A - B:		C = A.difference(B)
			conjunto = set(range(11))
			conjunto2 = set(range(5))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2, 3, 4}

			conjunto3 = conjunto.difference(conjunto2)
			#{5, 6, 7, 8, 9, 10}
			conjunto2.difference(conjunto)
			#set()
		A actualiza con B.						A = A - B:		A.difference_update(B)
			conjunto = set(range(11))
			conjunto2 = set(range(5))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2, 3, 4}

			conjunto.difference_update(conjunto2)
			conjunto
			#{5, 6, 7, 8, 9, 10}

			conjunto = set(range(11))
			conjunto2 = set(range(5))
			conjunto
			#{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
			conjunto2
			#{0, 1, 2, 3, 4}

			conjunto2.difference_update(conjunto)
			conjunto2
			#set()

	Comentario sobre la eficiencia de los diccionarios y los conjuntos
		Los diccionarios y los conjuntos de Python pueden ser muy útiles a la hora de ofrecer soluciones inesperadamente simples a problemas que de otra forma requerirían un mayor esfuerzo. Constituyen un recurso de alto nivel de abstracción que el lenguaje pone a disposición del programador.

		Una mayor abstracción, al evitar tener que prestar atención a los detalles, permite una mayor productividad en la tarea de programación.

		Pero no todo son ventajas. Una mayor abstracción muchas veces implica un mayor coste computacional al implicar la interposición de capas de software entre la descripción abstracta del problema general y la solución particular de cada caso.

		La buena noticia es que los diccionarios y los conjuntos de Python tienen un coste computacional relativamente bajo. Son implementados como tablas de dispersión (https://es.wikipedia.org/wiki/Tabla_hash) muy eficientes. El estudio de la estructura de las tablas de dispersión (Hash tables) queda fuera del ámbito de la asignatura.

		https://www2.eii.uva.es/fund_inf/python/notebooks/11_Diccionarios_conjuntos/Diccionarios_conjuntos.html



Metodos comunes para cadenas
	"XD".lower()
	#'xd'
	"xd".upper()
	#'XD'
	"xD".swapcase()
	#'Xd'
	"xd".count('x')
	#1
	"xdd".count('d')
	#2
	"xdd".count('dd')
	#1
	"xd".replace('d', 'D')
	#'xD'
	"xdd".capitalize()
	#'Xdd'
	"xdD".find("D")
	#2
	"xdD".find("d")
	#1
	"xdD".find("dD")
	#1
	max("abcd")
	#'d'
	max("1abcd")
	#'d'
	max("1abcd1")
	#'d'
	min("abcd")
	#'a'
	min("1abcd")
	#'1'
	min("1abcd1")
	#'1'
	len("12")
	#2



Funciones
	def factorial(x):
		if x < 0:
			x=x*-1
		if x == 1:
			return x
		else:
			return x * factorial(x-1)

	factorial(2)
	#2
	factorial(3)
	#6
	factorial(-3)
	#6
	factorial(-5)
	#120
	factorial(5)
	#120



POO
	La programación orientada a objetos (POO) es un paradigma de programación que se basa en la conceptualización de objetos y su interacción para resolver problemas. Aquí están las definiciones de algunos términos relacionados con la POO:
	* Abstracción: Concepto fundamental en la programación orientada a objetos (POO) que se refiere a la simplificación y captura de los aspectos esenciales de un objeto del mundo real en un modelo que pueda ser implementado en software. En otras palabras, se trata de centrarse en lo importante mientras se ocultan los detalles innecesarios.
		La abstracción permite crear modelos conceptuales en el código que reflejen entidades del mundo real, como objetos, sistemas o procesos. Estos modelos encapsulan las propiedades y comportamientos clave de estas entidades, mientras que ocultan los detalles internos que no son relevantes para el contexto.
		Por ejemplo, si estás desarrollando un sistema de gestión de una biblioteca, puedes abstraer la entidad "Libro" como una clase en tu código. La clase "Libro" contendría atributos como título, autor y número de páginas, junto con métodos para prestar, devolver y verificar la disponibilidad del libro. Los detalles internos de cómo se almacenan los libros en la base de datos o cómo se administran físicamente en la biblioteca no son importantes en este nivel de abstracción.
		La abstracción tiene varios beneficios en la programación orientada a objetos:
			1. Simplificación: Permite enfocarse en los aspectos relevantes y esenciales de un objeto, lo que hace que el diseño y la implementación del software sean más manejables.
			2. Reutilización de Código: La abstracción crea modelos que pueden ser reutilizados en diferentes partes del programa o incluso en proyectos diferentes.
			3. Mantenibilidad: Los cambios en los detalles internos de una implementación no afectan las partes del código que utilizan la abstracción.
			4. División de Tareas: Permite que los desarrolladores trabajen en partes específicas del sistema sin necesidad de entender todos los detalles internos.
			5. Colaboración Eficiente: Facilita la comunicación entre los miembros del equipo, ya que todos pueden entender y trabajar con los modelos abstractos.
		En resumen, la abstracción en la programación orientada a objetos es el proceso de crear modelos simplificados de objetos del mundo real para representar sus características y comportamientos esenciales en el código. Estos modelos abstractos facilitan el diseño, la implementación y el mantenimiento de sistemas de software.
		De GPT
	* Clase: Es una plantilla o modelo que define las características y comportamientos de un objeto. Se puede considerar como un plano o una descripción de un tipo de objeto. Por ejemplo, una clase "Perro" podría definir los atributos y métodos comunes a todos los perros.
	* Objeto: Es una instancia concreta de una clase. Representa un ejemplar específico de un tipo de objeto. Por ejemplo, un objeto "mi_perro" podría ser una instancia de la clase "Perro" con atributos y comportamientos únicos.
	* Atributo: Es una característica o propiedad de un objeto. Representa el estado de un objeto y se almacena como una variable dentro de una clase. Por ejemplo, un atributo "nombre" en la clase "Perro" podría representar el nombre de un perro específico.
		* Variable: Es un espacio de almacenamiento en memoria que contiene un valor. En el contexto de la POO, una variable se refiere generalmente a una variable declarada dentro de una clase y se utiliza para almacenar atributos o datos relacionados con los objetos.
		* Campo: Es otro término para referirse a un atributo de una clase. A menudo se utiliza para describir los atributos de una clase en el contexto de una base de datos.
		* Propiedad: Es una característica o atributo de un objeto en el contexto de la programación orientada a objetos. Es similar a un atributo, pero el término "propiedad" a menudo se utiliza para enfatizar que está asociada a un objeto específico y puede tener comportamientos especiales como obtener (get) y establecer (set) valores.
	* Método: Es un bloque de código asociado a una clase u objeto que define su comportamiento. Los métodos son responsables de realizar acciones o manipular los atributos de un objeto. Por ejemplo, un método "ladrar()" en la clase "Perro" podría definir el comportamiento de ladrar para un perro.
		* Función: En la programación orientada a objetos, una función es un bloque de código que realiza una tarea específica y puede ser invocada desde diferentes partes del programa. A diferencia de los métodos, las funciones no están necesariamente asociadas a una clase u objeto en particular.
	* Herencia: La herencia es un mecanismo en el que una clase nueva (subclase o clase derivada) se basa en una clase existente (superclase o clase base). La subclase hereda atributos y métodos de la superclase y puede agregar atributos y métodos adicionales o incluso sobrescribir los existentes. La herencia permite la reutilización de código y la creación de jerarquías de clases.
	* Herencia Múltiple: La herencia múltiple ocurre cuando una clase hereda características de dos o más clases padres. No todos los lenguajes de programación admiten la herencia múltiple debido a la complejidad que puede surgir al manejar conflictos de nombres y ambigüedades. Sin embargo, la herencia múltiple puede ser simulada en algunos lenguajes mediante interfaces o clases abstractas.
	* Polimorfismo: El polimorfismo permite que diferentes clases compartan el mismo nombre del método, pero con diferentes implementaciones. En otras palabras, una clase base puede definir un método y las clases derivadas pueden proporcionar sus propias implementaciones. Esto permite que las llamadas a métodos se resuelvan en tiempo de ejecución según el tipo real del objeto en lugar del tipo de referencia.
	* Encapsulación: La encapsulación es un principio que sugiere que los datos (atributos) de una clase deben estar ocultos y protegidos, y solo se debe permitir el acceso a ellos a través de métodos públicos (interfaz pública). Esto evita que los datos sean manipulados directamente desde fuera de la clase y permite un mejor control sobre cómo los datos son modificados y accedidos.
	* Clases Abstractas: Una clase abstracta es una clase que no se puede instanciar directamente, sino que se utiliza como base para otras clases. Puede contener métodos abstractos, que son métodos sin implementación, así como métodos concretos (con implementación). Las clases que heredan de una clase abstracta deben proporcionar implementaciones para los métodos abstractos. Las clases abstractas permiten definir una estructura común para varias clases derivadas y promueven la reutilización de código.
	* Interfaces: Una interfaz en la programación orientada a objetos define un conjunto de métodos que una clase debe implementar. Las interfaces proporcionan una especificación de comportamiento, pero no implementan ninguna funcionalidad por sí mismas. Cualquier clase que implemente una interfaz debe proporcionar implementaciones para todos los métodos declarados en la interfaz. Las interfaces son útiles para lograr la abstracción y permiten la implementación de múltiples interfaces en una sola clase.
	Estos términos son fundamentales en la programación orientada a objetos y se utilizan para describir la estructura y el comportamiento de los objetos en un sistema de software.
	De GPT

	Convención Python para el nombramiento de los elementos:
		En Python, el estilo de nombramiento recomendado varía según el tipo de entidad que estás nombrando. Python tiene PEP 8, que es el estándar de estilo de código para la comunidad Python. Aunque no hay reglas estrictas en cuanto al estilo de nombramiento, PEP 8 proporciona pautas que te ayudarán a escribir un código más consistente y legible.
		Aquí están las convenciones recomendadas para nombrar clases, objetos, atributos y métodos:
			1. Clases: Utiliza UpperCamelCase para nombrar clases. Esto significa que cada palabra en el nombre de la clase comienza con una letra mayúscula y no utiliza espacios ni guiones bajos.
			2. Objetos, Atributos y Métodos: Utiliza snake_case para nombrar atributos y métodos. Las palabras están en minúsculas y separadas por guiones bajos.
		Aquí tienes ejemplos de cómo se verían los diferentes tipos de nombres siguiendo estas convenciones:
			# Clases
			class MiClase:
				pass
			# Objetos e instancias
			mi_objeto = MiClase()
			# Atributos y Métodos
			mi_objeto.atributo_publico = 10
			mi_objeto.metodo_publico()

			mi_objeto.atributo_protected = 20
			mi_objeto._metodo_protected()

			mi_objeto.atributo_privado = 30
			mi_objeto._MiClase__metodo_privado()

		Es importante seguir estas convenciones para que tu código sea más legible y consistente con el estilo general de Python. Sin embargo, lo más importante es mantener la coherencia dentro de tu propio código y, si estás trabajando en un proyecto colaborativo, asegurarte de seguir las convenciones establecidas por el equipo.
		De GPT
	Ejemplo de una clase y sus objetos:
		class Auto:
			estado = False
			marca = ""
			modelo = 0
			placa = ""

			def __init__(self,estado,marca,modelo,placa):
				self.estado = estado
				self.marca = marca
				self.modelo = modelo
				self.placa = placa

			def encender(self):
				self.estado = True
		taxi = Auto(False,"Marca1",1,"Placa1")
		taxi_viejo = Auto(False,"Marca0",0,"Placa0")
	Tipo de datos:
		type(taxi)
		#<class '__main__.Auto'>
		type(Auto().estado)
		#<class 'bool'>
		type(taxi.marca)
		#<class 'str'>
		type(taxi.modelo)
		#<class 'int'>
		type(Auto(False,"Marca1",1,"Placa1").__init__)
		#<class 'method'>
		type(Auto(False,"Marca1",1,"Placa1").encender)
		#<class 'method'>
	Acceder a los atributos:
		La forma tradicional:
			taxi.estado
			#False
		La función "getattr" sirve por si el atributo que se desea acceder es dinámico:
			getattr(taxi, "estado")
			#False
		La función "setattr" sirve para establecer un valor al atributo:
			setattr(taxi, "estado", True)
			taxi.estado
			#True
		La función "delattr" sirve para eliminar el valor de un atributo (si se le pasa el objeto),
		o el atributo como tal (si se le pasa la clase), y se le borran a todos los objetos creados con dicha clase:
			delattr(taxi, "estado")
			taxi.estado
			#False
			delattr(Auto, "estado")
			taxi.estado
			'''
				Traceback (most recent call last):
				  File "<stdin>", line 1, in <module>
				AttributeError: 'Auto' object has no attribute 'estado'
			'''
		La función "vars" crea un diccionario que contiene todos los atributos de una instancia como pares clave-valor:
			atributos_taxi = vars(taxi)
			estado_taxi = atributos_taxi["estado"]
		La función "dir" retorna una lista de nombres de atributos válidos y métodos de un objeto:
			atributos_y_metodos = dir(taxi)
			if "estado" in atributos_y_metodos:
				estado_taxi = taxi.estado
		La función "hasattr" dice si existe el atributo:
			hasattr(taxi, "estado")
			#True
			hasattr(taxi, "estado_2")
			#False
	Herencia:
		class Persona:
			nombre = ""
			paterno = ""
			materno = ""
			def __init__(self, nombre, paterno, materno):
				self.nombre = nombre
				self.paterno = paterno
				self.materno = materno
			def devolverNombreCompleto(self):
				return f"{self.paterno} {self.materno} {self.nombre}"
		class Alumno (Persona):
			noCuenta = ""
			def __init__(self, nombre, paterno, materno, noCuenta):
				super().__init__(nombre, paterno, materno)
				self.noCuenta = noCuenta
			def mostrarDatos(self):
				print(super().devolverNombreCompleto())
				print(self.noCuenta)
		alumno1 = Alumno("Juan", "Pérez", "Gómez", "12345")
		alumno1.mostrarDatos()
		'''
			Pérez Gómez Juan
			12345
		'''
		La función "isinstance" sirve para saber si un objeto es instancia de una clase:
			isinstance(alumno1, Alumno)
			#True
			isinstance(alumno1.nombre, Alumno)
			#False
		La función "issubclass" sirve para saber si una clase es hija de otra clase:
			issubclass(Alumno,Persona)
			#True
			issubclass(Persona,Alumno)
			#False
	Herencia multiple:
		class Camara:
			fotografia = None
			def __init__(self, fotografia):
				self.fotografia = fotografia
			def fotografiar(self):
				print(f"Fotografiando {self.fotografia}...")
		class Calculadora:
			numero = None
			def __init__(self, numero):
				self.numero = numero
			def sumar(self):
				print(f"Sumando {self.numero}...")
		class Reproductor:
			cancion = None
			def __init__(self, cancion):
				self.cancion = cancion
			def tocar_cancion(self):
				print(f"Tocando cancion {self.cancion}...")
		class Celular (Camara,Calculadora,Reproductor):
			def __del__(self):
				print("Apagando celular...")
			def __init__(self):
				Camara.__init__(self, "foto.png")
				Calculadora.__init__(self, 1)
				Reproductor.__init__(self, "alegre.mp3")
			def usandoCelular(self):
				print("Usando celular...")
				super().fotografiar()
				super().sumar()
				super().tocar_cancion()
		miCel = Celular()
		miCel.usandoCelular()
		'''
			Usando celular...
			Fotografiando foto.png...
			Sumando 1...
			Tocando cancion alegre.mp3...
			Apagando celular...
		'''
	El metodo "__str__":
		Devuelve una cadena que describe el objeto y es una cadena para que el humano lo entienda, devuelve la cadena cuando se "convierte/maneja" el objeto como una cadena:
		class Persona:
			def __init__(self, nombre, edad):
				self.nombre = nombre
				self.edad = edad
			def __str__(self):
				return f"Persona: {self.nombre}, Edad: {self.edad}"
		persona = Persona("Juan", 30)
		cadena = str(persona)
		print(cadena)
		#Persona: Juan, Edad: 30
		print(f"{persona}")
		#Persona: Juan, Edad: 30
	El metodo "__repr__":
		Devuelve una cadena que describe el objeto y es una cadena para que se pueda computar con ella (es la representación oficial), devuelve la cadena cuando se "convierte/maneja" el objeto como una cadena:
		class Punto:
			x, y = None, None
			def __init__(self, x, y):
				self.x = x
				self.y = y
			def __repr__(self):
				return f"Punto({self.x}, {self.y})"
		punto = Punto(3, 5)
		cadena_repr = repr(punto)
		print(f"{cadena_repr !r}")
		#'Punto(3, 5)'
	Los decoradores @classmethod y @staticmethod:
		Se utilizan en POO para definir métodos que pertenecen a la clase en lugar de a las instancias de la clase. Estos decoradores son útiles cuando deseas crear métodos que no requieren acceder a los atributos de instancia o cuando deseas acceder a atributos de clase:
		1. Metodos decorados con @classmethod:
			Un método decorado con @classmethod se llama utilizando la clase como el primer argumento en lugar de una instancia. El primer argumento por convención se llama cls. Puede acceder y modificar atributos de clase, y también puede ser utilizado para crear nuevas instancias de la clase.
				class MiClase:
					atributo_clase = "Soy un atributo de clase"
					@classmethod
					def metodo_clase(cls):
						print(cls.atributo_clase)
				MiClase.metodo_clase()
			U otro ejemplo:
				class Pastel:
					ingredientes = None
					def __init__(self,ingredientes):
						self.ingredientes = ingredientes
					def __repr__(self):
						print("Aqui: __repr__")
						return f"Pastel({self.ingredientes !r})"
					@classmethod
					def hornear_de_chocolate(cls):
						print("Aqui: hornear_de_chocolate")
						return cls(["harina", "leche", "chocolate"])
					@classmethod
					def hornear_de_vainilla(cls):
						print("Aqui: hornear_de_vainilla")
						return cls(["harina", "leche", "vainilla"])
				print(f"{Pastel.hornear_de_chocolate()}")
				'''
					Aqui: hornear_de_chocolate
					Aqui: __repr__
					Pastel(['harina', 'leche', 'chocolate'])
				'''
				print(f"{Pastel.hornear_de_vainilla()}")
				'''
					Aqui: hornear_de_vainilla
					Aqui: __repr__
					Pastel(['harina', 'leche', 'vainilla'])
				'''
				Obviamente la idea seria borrar los "print" que dicen "Aqui", estan en el ejemplo para poder entender el orden de ejecución.
		2. Metodos decorados con @staticmethod:
			Un método decorado con @staticmethod se llama utilizando la clase o una instancia. A diferencia de @classmethod, un método estático no recibe ningún argumento adicional automáticamente que haga referencia a la clase o la instancia. Por lo tanto, un método estático generalmente no accede a los atributos de clase o instancia y se comporta como una función regular.
				class MiClase:
					@staticmethod
					def metodo_estatico():
						print("Este es un método estático")
				MiClase.metodo_estatico()
			U otro ejemplo:
				import math
				class Pastel:
					ingredientes = None
					tamaño = None
					def __init__(self,ingredientes,tamaño):
						self.ingredientes = ingredientes
						self.tamaño = tamaño
					def __repr__(self):
						print("Aqui: __repr__")
						return f"Pastel({self.ingredientes !r}, {self.tamaño !r})"
					def area(self):
						return self.tamaño_area(self.tamaño)
					@staticmethod
					def tamaño_area(a):
						return a ** 2 * math.pi
				nuevo_pastel = Pastel(['harina','azucar','leche','crema'], 4)
				print(nuevo_pastel.tamaño_area(12))
				#452.3893421169302
		La elección entre @classmethod y @staticmethod depende de si necesitas acceder a los atributos de clase o instancia. Si necesitas acceder a atributos de clase, @classmethod es más apropiado. Si no necesitas acceder a atributos de instancia o clase, y solo deseas encapsular una función dentro de la clase, entonces @staticmethod es una buena opción.
		En resumen:
			* @classmethod recibe la referencia de la clase como primer argumento (cls) y puede acceder a atributos de clase.
			* @staticmethod no recibe argumentos adicionales automáticamente y generalmente se usa para encapsular una función en una clase.
		De GPT
	Polimorfismo:
		En Python, el polimorfismo se logra a través de dos mecanismos principales:
			1. Sobrecarga de método:
				Esto se refiere a la capacidad de una clase derivada (hija) para proporcionar una implementación específica de un método que ya está definido en su clase base (padre). La llamada al método se dirige a la implementación de la clase derivada en lugar de la implementación de la clase base.
					class Animal:
						def hablar(self):
							pass
					class Perro(Animal):
						def hablar(self):
							return "Woof!"
					class Gato(Animal):
						def hablar(self):
							return "Meow!"
					animales = [Perro(), Gato()]
					for animal in animales:
						print(animal.hablar())  # Polimorfismo en acción
			2. Sobrescritura de método:
				Esto es similar a la sobrecarga de método, pero en este caso, la clase derivada (hija) reemplaza por completo la implementación del método de la clase base (padre). La llamada al método también se dirige a la implementación de la clase derivada.
					class Figura:
						def area(self):
							pass
					class Circulo(Figura):
						def __init__(self, radio):
							self.radio = radio
						def area(self):
							return 3.14159 * self.radio * self.radio
					class Cuadrado(Figura):
						def __init__(self, lado):
							self.lado = lado
						def area(self):
							return self.lado * self.lado
					figuras = [Circulo(5), Cuadrado(4)]
					for figura in figuras:
						print(figura.area())  # Polimorfismo en acción
		El polimorfismo permite que las clases compartan una misma interfaz, lo que promueve la modularidad, la reutilización de código y la extensibilidad. Al programar con polimorfismo, puedes escribir código que trabaje con la interfaz común en lugar de preocuparte por las diferencias específicas de implementación en cada clase concreta.
		De GPT
	Encapsulación:
		En Python, la encapsulación se logra utilizando convenciones y modificadores de acceso para controlar la visibilidad de los atributos y métodos de una clase.
		Aunque Python no tiene modificadores de acceso como algunos otros lenguajes de programación (como "private", "protected", "public") como Java, puedes lograr la encapsulación de la siguiente manera:
			1. Public: Los atributos y métodos se consideran públicos por defecto. Esto significa que se pueden acceder desde cualquier lugar fuera de la clase.
			2. Protected: Los atributos y métodos se consideran "protegidos" cuando su nombre comienza con un solo guion bajo, '_'. Aunque no son realmente privados, esta convención indica que esos atributos y métodos no deberían ser accesados directamente desde fuera de la clase. Sin embargo, aún pueden ser accedidos si se desea.
			3. Private: Los atributos y métodos se consideran "privados" cuando su nombre comienza con dos guiones bajos "__". Python "mangla" los nombres de estos atributos y métodos, haciendo que sea más difícil acceder a ellos desde fuera de la clase. Aunque no son verdaderamente privados (pueden ser accedidos usando "name mangling"), la convención es tratarlos como tales.
		Aquí tienes un ejemplo que ilustra la encapsulación en Python:
			class MiClase:
				publico = None
				_protegido = None
				__privado = None
				def __init__(self):
					self.publico = "Atributo público"
					self._protegido = "Atributo protegido"
					self.__privado = "Atributo privado"
				def metodo_publico(self):
					return "Método público"
				def _metodo_protegido(self):
					return "Método protegido"
				def __metodo_privado(self):
					return "Método privado"
			objeto = MiClase()
			print(objeto.publico)                     # Atributo público
			print(objeto._protegido)                  # Atributo protegido
			# print(objeto.__privado)                 # Error, el nombre se "mangla"
			print(objeto._MiClase__privado)           # Atributo privado (name mangling)
			print(objeto.metodo_publico())            # Método público
			print(objeto._metodo_protegido())         # Método protegido
			# print(objeto.__metodo_privado())        # Error, el nombre se "mangla"
			print(objeto._MiClase__metodo_privado())  # Método privado (name mangling)

		Recuerda que las convenciones en Python son importantes para seguir buenas prácticas de programación y para comunicar la intención del código a otros programadores. La encapsulación es una herramienta valiosa para crear clases y objetos más robustos y mantenibles.
		De GPT
	El metodo "super":
		Permite llamar métodos de la clase base (clase padre) en una jerarquía de herencia. Se utiliza principalmente para llamar al constructor de la clase base o para acceder a métodos definidos en la clase base desde la clase derivada (clase hija).
			class Mamifero:
				def __init__(self, nombre):
					print(f"{nombre} es un animal de sangre caliente")
			class Leon(Mamifero):
				def __init__(self):
					print("El leon es un animal de cuatro patas")
					super().__init__("Simba")
					Mamifero.__init__(self, "Simba")
			leon = Leon()
		U otro ejemplo:
			class Animal:
				nombre = None
				def __init__(self, nombre):
					self.nombre = nombre
			class Perro(Animal):
				raza = None
				def __init__(self, nombre, raza):
					super().__init__(nombre)
					self.raza = raza
				def mostrar_info(self):
					print(f"Nombre: {self.nombre}, Raza: {self.raza}")
			perro = Perro("Fido", "Labrador")
			perro.mostrar_info()
	Propiedades y metodo property:
		La función incorporada "property()" en Python que se utiliza para convertir métodos en atributos de estilo "getter" y "setter". Permite controlar el acceso, la asignación y la modificación de los atributos de una clase de una manera más elegante y controlada.
		La función "property()" toma hasta cuatro argumentos: fget (función getter), fset (función setter), fdel (función de eliminación) y doc (documentación). Sin embargo, solo fget es obligatorio.
		De la forma tradicional:
			class Empleado:
				__nombre, __salario = None, None
				def __init__(self, nombre, salario):
					self.__nombre = nombre
					self.__salario = salario
				def get_nombre(self):
					return self.__nombre
				def get_salario(self):
					return self.__salario
				def set_nombre(self, nombre):
					self.__nombre = nombre
				def set_salario(self, salario):
					self.__salario = salario
				def del_nombre(self):
					del self.__nombre
				def del_salario(self):
					del self.__salario
			empleado_uno = Empleado("Pepe", 25000)
			print(f"{empleado_uno.get_nombre()}, {empleado_uno.get_salario()}")
			empleado_uno.set_nombre("Juan")
			empleado_uno.set_salario(20000)
			print(f"{empleado_uno.get_nombre()}, {empleado_uno.get_salario()}")
		Al mejorado con property:
			class Empleado:
				__nombre, __salario = None, None
				def __init__(self, nombre, salario):
					self.__nombre = nombre
					self.__salario = salario
				def __get_nombre(self):
					return self.__nombre
				def __get_salario(self):
					return self.__salario
				def __set_nombre(self, nombre):
					self.__nombre = nombre
				def __set_salario(self, salario):
					self.__salario = salario
				def __del_nombre(self):
					del self.__nombre
				def __del_salario(self):
					del self.__salario
				nombre = property(
					fget = __get_nombre,
					fset = __set_nombre,
					fdel = __del_nombre,
					doc = "Property \"nombre\" from \"Empleado\""
				)
				salario = property(
					fget = __get_salario,
					fset = __set_salario,
					fdel = __del_salario,
					doc = "Property \"salario\" from \"Empleado\""
				)
			empleado_uno = Empleado("Pepe", 25000)
			empleado_uno.nombre = "Pedro"
			empleado_uno.salario = 15000
			print(f"{empleado_uno.nombre}, {empleado_uno.salario}")
		Otro ejemplo más limpio:
			class Circulo:
				def __init__(self, radio):
					self._radio = radio
				def get_radio(self):
					return self._radio
				def set_radio(self, nuevo_radio):
					self._radio = nuevo_radio
				def del_radio(self):
					del self._radio
				radio = property(
					get_radio,
					set_radio,
					del_radio,
					"Radio del círculo"
				)
			# Crear una instancia de la clase Circulo
			circulo = Circulo(5)
			# Obtener y establecer el radio utilizando la propiedad
			print(circulo.radio) # Obtener radio
			circulo.radio = 10   # Establecer radio
			print(circulo.radio) # Obtener radio
			circulo.radio = -5   # Intentar establecer radio negativo
			del circulo.radio    # Eliminar radio
	#https://www.youtube.com/playlist?list=PLg9145ptuAigw5pV_DRznXdOsX19dorDs



Matplotlib
#https://www.w3schools.com/python/matplotlib_pyplot.asp



Random
	import random
	import re
	def vector_aleatorio(n):
		vector = [0]*n
		for x in range(n):
			vector[x] = random.randint(0,10)
		return vector
	while 1:
		n = input("Cuantos numeros aleatorios quieres? ")
		if re.search("^[0-9]+$", n):
			break
	vector_aleatorio(int(n))

	from random import choice
	a = choice(['cara','cruz'])
	a
	#'cruz'
	a
	#'cara'
	a
	#'cara'
	a
	#'cruz'
	a
	#'cruz'
	a
	#'cara'

	from random import randrange
	a = randrange(5)
	a
	#3
	a
	#2
	a
	#5
	a
	#1



Numpy
	Arreglos
		import numpy as np
		vector = np.array([6,7,1,2,3])
		vector
		#[6 7 1 2 3]
		vector = np.array([6,7,1,2.3,3])
		vector
		#[6.  7.  1.  2.3 3. ]
		vector = np.array([6,7,1,2,3])
		vector.astype(str)
		#['6' '7' '1' '2' '3']
		vector.astype(float)
		#[6. 7. 1. 2. 3.]

		a = np.array([6,7,1,2,3])
		b = np.array([6,7,5,8,1])
		a+b
		#[12 14  6 10  4]
		a*b
		#[36 49  5 16  3]
		a>b
		#[False False False False  True]
		a[2]
		#1
		a.max()
		#7
		a.min()
		#1
		El metodo ".argmax()" retorna la posición del elemento mayor
			a.argmax()
			#1
		El metodo ".argmin()" retorna la posición del elemento menor
			a.argmin()
			#2
		El metodo ".sum()" retorna la suma de todos los elementos
			a.sum()
			#19
		El metodo ".prod()" retorna el producto de todos los elementos
			a.prod()
			#252
		vector = np.array([1,2,3,4,5])
		matriz = np.array([[1,2,3],[4,5,6],[7,8,9]])
		vector.size
		#5
		matriz.size
		#9
#https://www2.eii.uva.es/fund_inf/python/notebooks/Bibliotecas/03_Numpy/Numpy.html



Math
	from math import pi
	from math import factorial
	from math import log
	a = pi
	a
	#3.141592653589793
	a = factorial(6)
	a
	#720
	a = log(8,10)
	a
	#0.9030899869919434
	#https://youtu.be/nFp4-cT3b0o?list=PLg9145ptuAijHNZMTDhghSdTWK3BvH8pk&t=129



Pandas
