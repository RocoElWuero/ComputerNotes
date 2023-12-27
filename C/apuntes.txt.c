Nivel Básico:
1. Introducción a la programación en C:
	* ¿Qué es C y por qué es importante?
	* Configuración del entorno de desarrollo.
	* Convención C para el nombramiento de todos sus elementos
		La convención de nombramiento en C es una práctica importante para escribir código legible y mantenible. Aunque no existe una única convención universalmente aceptada, hay varias convenciones ampliamente seguidas que ayudan a que el código sea más comprensible para otros desarrolladores. Aquí hay algunas pautas generales:
			1. Nombres de variables y funciones:
				- Utiliza nombres descriptivos que indiquen el propósito o el contenido de la variable o función.
				- Usa letras minúsculas para las variables y las funciones, y usa "_" (underscore) para separar palabras en nombres compuestos.
				- Evita nombres muy cortos o crípticos que puedan dificultar la comprensión.
				- Ejemplos: contador, suma_total, calcular_edad, imprimir_resultado.
			2. Nombres de constantes:
				- Usa letras mayúsculas para las constantes y "_" para separar palabras en nombres compuestos.
				- Proporciona nombres descriptivos y significativos para las constantes.
				- Ejemplos: PI, LIMITE_MAXIMO, TAMANO_BUFFER.
			3. Nombres de tipos de datos:
				- Utiliza nombres de tipos de datos en minúsculas y letras mayúsculas para separar palabras en nombres compuestos.
				- Puede ser útil agregar un sufijo al tipo para indicar su propósito. Ejemplo: struct Persona, typedef int Entero.
			4. Nombres de estructuras y uniones:
				- Utiliza CamelCase para nombres de estructuras y uniones.
				- Prefija con "struct" o "union" para indicar claramente su tipo.
				- Ejemplos: struct Persona, union Datos.
			5. Nombres de enumeraciones:
				- Utiliza CamelCase para los nombres de las enumeraciones.
				- Si es necesario, agrega un sufijo "_enum" al final del nombre.
				- Ejemplos: enum Mes_enum, enum EstadoCivil_enum.
			6. Nombres de macros:
				- Usa letras mayúsculas para los nombres de macros y "_" para separar palabras en nombres compuestos.
				- Utiliza todo en mayúsculas para resaltar que se trata de una macro.
				- Ejemplos: #define TAMANO_MAXIMO 100, #define PI 3.14159.
			7. Nombres de archivos y directorios:
				- Utiliza nombres en minúsculas para archivos y directorios.
				- Utiliza "_" para separar palabras en nombres compuestos.
				- Ejemplos: mi_programa.c, utilidades.h, directorio_principal.

		Recuerda que la coherencia en toda la base de código es esencial. Si trabajas en un proyecto con otras personas, es recomendable seguir las convenciones de nombramiento establecidas por el equipo para mantener una consistencia en todo el código.



2. Estructura básica de un programa en C:
	* Declaración de variables y tipos de datos.
	* Instrucciones de entrada/salida estándar.
		En C, las instrucciones de "entrada/salida" estándar se realizan mediante las funciones proporcionadas por la biblioteca estándar ("stdio.h"). Estas funciones permiten la interacción del programa con el usuario a través de la entrada desde el teclado y la salida en la pantalla.

		Aquí hay algunas de las funciones más comunes para entrada/salida estándar en C:
			1. "printf": Esta función se utiliza para imprimir texto y valores formateados en la pantalla. Utiliza formatos especiales como "%d" para enteros, "%f" para números de punto flotante, "%s" para cadenas, etc. Ejemplo:
				#include <stdio.h>
				int main() {
					int edad = 25;
					printf("Mi edad es %d años.\n", edad);
					return 0;
				}
			2. "scanf": Se utiliza para leer datos desde la entrada estándar (teclado) y almacenarlos en variables. Debes proporcionar formatos que coincidan con el tipo de dato esperado. Ejemplo:
				#include <stdio.h>
				int main() {
					int edad;
					printf("Ingresa tu edad: ");
					scanf("%d", &edad);
					printf("Tienes %d años.\n", edad);
					return 0;
				}
			3. "getchar" y "putchar": getchar se utiliza para leer un carácter desde la entrada estándar, mientras que putchar se utiliza para imprimir un carácter en la salida estándar. Ejemplo:
				#include <stdio.h>
				int main() {
					char caracter;
					printf("Ingresa un carácter: ");
					caracter = getchar();
					printf("Has ingresado: ");
					putchar(caracter);
					putchar('\n'); // Imprime una nueva línea
					return 0;
				}
			4. "gets" y "puts" (obsoletas en C99 y eliminadas en C11): gets se utilizaba para leer una línea completa de texto (cadena) desde la entrada estándar, mientras que puts imprimía una cadena en la salida estándar. Sin embargo, debido a problemas de seguridad, se recomienda evitar gets y usar funciones más seguras como fgets.
			5. "fgets" y "fputs": Estas funciones son más seguras para leer y escribir cadenas desde/hacia archivos o la entrada/salida estándar. "fgets" lee una línea, incluyendo el carácter de nueva línea, mientras que "fputs" imprime una cadena. Ejemplo:
				#include <stdio.h>
				int main() {
					char cadena[100];
					printf("Ingresa una cadena: ");
					fgets(cadena, sizeof(cadena), stdin);
					printf("Has ingresado: ");
					fputs(cadena, stdout);
					return 0;
				}
		Recuerda incluir la biblioteca "stdio.h" al principio de tu programa para usar estas funciones. Las funciones de entrada/salida estándar son esenciales para la interacción con el usuario y para mostrar información durante la ejecución del programa.



3. Operadores y expresiones:
	* Operadores aritméticos, de asignación, lógicos y relacionales.
	* Precedencia y asociatividad de operadores.



4. Control de flujo:
	* Instrucciones de control (if, else, switch).
	* Estructuras de repetición (for, while, do-while).



5. Vectores (arreglos):
	En C, los arreglos son estructuras de datos que permiten almacenar una colección de elementos del mismo tipo de dato. Pueden ser unidimensionales o multidimensionales, dependiendo de cómo se organicen los elementos en la memoria.

	Arreglos Unidimensionales:
		Un arreglo unidimensional es una estructura que organiza los elementos en una sola fila o columna. Es como una lista o vector unidimensional.
		// Declaración e inicialización de un arreglo unidimensional
		int numeros[5] = {1, 2, 3, 4, 5};
		// Acceso a elementos de un arreglo unidimensional
		int primer_elemento = numeros[0]; // primer_elemento contiene 1
		int tercer_elemento = numeros[2]; // tercer_elemento contiene 3

	Arreglos Multidimensionales:
		Los arreglos multidimensionales organizan los elementos en una estructura de filas y columnas, creando una matriz o tabla de elementos.
		// Declaración e inicialización de un arreglo bidimensional
		int matriz[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};
		// Acceso a elementos de un arreglo bidimensional
		int primer_elemento = matriz[0][0]; // primer_elemento contiene 1
		int segundo_elemento = matriz[0][1]; // segundo_elemento contiene 2

	Puedes tener arreglos con más dimensiones, por ejemplo, arreglos tridimensionales o incluso arreglos de mayor dimensión, pero los ejemplos anteriores ilustran la idea básica de cómo funcionan los arreglos multidimensionales.

	Accediendo a los elementos de la matriz, con un ciclo for:
		Los ciclos "for" son una forma común de recorrer arreglos unidimensionales y multidimensionales en C. Aquí te mostraré cómo usar ciclos "for" para trabajar con estos tipos de arreglos.

		Ciclo for con arreglos unidimensionales:
			Para recorrer un arreglo unidimensional, puedes usar un ciclo "for" para iterar a través de sus elementos uno por uno. Aquí tienes un ejemplo:
				#include <stdio.h>
				int main() {
					int numeros[5] = {1, 2, 3, 4, 5};
					// Usando un ciclo for para imprimir los elementos del arreglo
					for (int i = 0; i < 5; i++) {
						printf("%d ", numeros[i]);
					}
					return 0;
				}

		Este ciclo "for" itera desde "i = 0" hasta "i < 5", accediendo a cada elemento del arreglo "numeros" mediante el índice "i".

		Ciclo for con arreglos bidimensionales:
			Cuando trabajas con arreglos bidimensionales (como una matriz), necesitas usar dos ciclos "for", uno anidado dentro del otro. Esto te permite recorrer cada fila y columna de la matriz. Aquí tienes un ejemplo:
				#include <stdio.h>
				int main() {
					int matriz[3][3] = {
						{1, 2, 3},
						{4, 5, 6},
						{7, 8, 9}
					};
					// Usando ciclos for anidados para imprimir los elementos de la matriz
					for (int fila = 0; fila < 3; fila++) {
						for (int columna = 0; columna < 3; columna++) {
							printf("%d ", matriz[fila][columna]);
						}
						printf("\n"); // Saltar a la siguiente línea después de cada fila
					}
					return 0;
				}

		En este ejemplo, el primer ciclo "for" recorre las filas de la matriz ("fila" va desde 0 hasta 2), y el segundo ciclo "for" recorre las columnas dentro de cada fila ("columna" va desde 0 hasta 2).

		Usando ciclos "for", puedes realizar operaciones, búsqueda, modificación u otras acciones en todos los elementos de un arreglo de manera eficiente. La estructura de control "for" es una herramienta poderosa en C para trabajar con arreglos.

	Es importante notar que, en la memoria, los elementos de un arreglo multidimensional se almacenan de manera contigua, pero el acceso se hace utilizando una notación de índices múltiples para navegar por las filas y columnas.

	Los arreglos multidimensionales se utilizan comúnmente para representar estructuras de datos tabulares, como matrices, tableros de juegos, imágenes bidimensionales, etc. También son útiles para manipular datos de manera eficiente cuando las relaciones entre los elementos tienen una estructura de malla o cuadrícula.



6. Funciones, Punteros y memoria:
	* Declaración y definición de funciones.
		En C, las funciones permiten modularizar el código al dividirlo en bloques más pequeños y reutilizables. Cada función tiene una declaración y una definición. La declaración de una función se coloca en la parte superior del archivo (generalmente en un encabezado) para informar al compilador sobre la existencia de la función antes de que se la utilice. La definición de la función proporciona su implementación y se coloca en algún lugar después de su declaración.

		Declaración de una función:
			La declaración de una función incluye el tipo de dato que devuelve la función, el nombre de la función y los tipos de datos de los parámetros que toma (si los tiene). No proporciona los detalles de cómo funciona la función, solo describe su interfaz.
			// Declaración de función
			tipo_de_retorno nombre_de_la_funcion(tipo_parametro1 nombre_parametro1, tipo_parametro2 nombre_parametro2, ...);

		Ejemplo de declaración de función:
			// Declaración de función
			int suma(int a, int b);

		Definición de una función:
			La definición de una función proporciona los detalles internos de cómo funciona. Contiene el cuerpo de la función, donde se especifica qué hace la función.
			// Definición de función
			tipo_de_retorno nombre_de_la_funcion(tipo_parametro1 nombre_parametro1, tipo_parametro2 nombre_parametro2, ...) {
				// Cuerpo de la función
				// ...
				return valor_de_retorno;
			}

		Ejemplo de definición de función:
			// Definición de función
			int suma(int a, int b) {
				int resultado = a + b;
				return resultado;
			}

		Ejemplo completo:
			#include <stdio.h>
			// Declaración de función
			int suma(int a, int b);
			int main() {
				int x = 5, y = 3;
				int resultado = suma(x, y); // Llamada a la función
				printf("La suma de %d y %d es %d.\n", x, y, resultado);
				return 0;
			}
			// Definición de función
			int suma(int a, int b) {
				int resultado = a + b;
				return resultado;
			}

		En este ejemplo, la declaración de la función "suma" se coloca antes de la función "main", y la definición de la función se coloca después de la función "main". La función "main" llama a la función "suma", que toma dos argumentos y devuelve el resultado de su suma.

		La separación entre declaración y definición permite a los programas usar funciones antes de que se definan, lo que puede ser útil para organizar el código de manera más legible y lógica.
	* Dirección, indirección de memoria e indirección doble de memoria
		En C, la dirección e indirección de memoria son conceptos fundamentales relacionados con la manipulación y el acceso a la memoria de un programa. Estos conceptos están estrechamente vinculados a la utilización de punteros.

		1. Dirección de memoria:
			- La dirección de memoria se refiere a la ubicación específica en la memoria de la computadora donde se almacenan datos o variables.
			- En C, puedes obtener la dirección de memoria de una variable utilizando el operador de dirección '&'. Por ejemplo, "&mi_variable" te dará la dirección de memoria de "mi_variable".
			- La dirección de memoria es una forma de identificar de manera única una ubicación en la memoria, y se utiliza principalmente cuando se trabaja con punteros.

			Ejemplo:
			int mi_variable = 42;
			int *ptr = &mi_variable; // El puntero de tipo entero, "ptr", contiene la dirección de "mi_variable"

		2. Indirección de memoria (dereferenciación):
			- La indirección de memoria se refiere al proceso de acceder al valor almacenado en una dirección de memoria utilizando un puntero.
			- Esto se logra utilizando el operador de indirección '*'. Cuando aplicas '*' a un puntero, obtienes el valor almacenado en la dirección de memoria a la que apunta el puntero.

			Ejemplo:
			int mi_variable = 42;
			int *ptr = &mi_variable; // El puntero de tipo entero, "ptr", contiene la dirección de "mi_variable"
			int valor = *ptr; // La variable tipo entero, "valor", ahora contiene el valor de "mi_variable" (42)

		3. Punteros:
			- Los punteros son variables que almacenan direcciones de memoria. Se declaran utilizando el tipo de dato al que apuntarán, seguido de un '*'.
			- Los punteros se utilizan para acceder y manipular datos en la memoria de forma dinámica y son esenciales para tareas como la gestión de memoria dinámica, la creación de estructuras de datos complejas y la implementación de funciones que pueden modificar valores fuera de su ámbito.

			Ejemplo:
			int mi_variable = 42;
			int *ptr = &mi_variable; // El puntero de tipo entero, "ptr", contiene la dirección de "mi_variable"
			*ptr = 100; // Modifica "mi_variable" indirectamente a través del puntero de tipo entero, "ptr"

		4. Punteros dobles
			En el contexto de C y muchos otros lenguajes de programación, el símbolo "" se utiliza para representar la operación de "indirección doble" o "puntero a puntero". 

			Un puntero normal, como int*, almacena la dirección de memoria de una variable de cierto tipo. Pero cuando necesitas trabajar con un puntero a un puntero, usas "". Esto significa que el primer puntero apunta a la dirección de memoria de otro puntero, que a su vez apunta a la dirección de memoria de la variable real.

			Aquí hay un ejemplo para ilustrar esto:
			int valor = 42;
			int* ptr1 = &valor; // El puntero de tipo entero "ptr1" apunta a "valor"
			int ptr2 = &ptr1; // El puntero doble de tipo entero "ptr2" apunta a 'ptr1'

			En este ejemplo, tenemos una variable "valor" que contiene un entero (42). Luego, creamos un puntero "ptr1" que apunta a la dirección de memoria de "valor". Finalmente, creamos un puntero a un puntero "ptr2" que apunta a la dirección de memoria de "ptr1".

			La operación de indirección doble se usa en situaciones donde necesitas modificar o acceder a punteros en lugar de a datos directamente. Por ejemplo, se utiliza en la gestión de matrices dinámicas o en la manipulación de punteros a estructuras de datos complejas. La indirección doble te permite cambiar el valor de un puntero a través de otro puntero.

			Por ejemplo, podrías usar "ptr2" para cambiar lo que apunta "ptr1", que a su vez cambiaría lo que apunta "ptr1" y, finalmente, afectaría el valor de "valor".

		Estos conceptos son fundamentales para la programación en C, especialmente cuando trabajas con estructuras de datos, funciones que operan en memoria dinámica o cuando necesitas comunicarte directamente con el hardware o sistemas externos. Sin embargo, ten en cuenta que un uso incorrecto de punteros puede llevar a errores de memoria, como fugas de memoria o violaciones de acceso, por lo que es importante entenderlos y usarlos con cuidado.
	* Paso de parámetros por valor y por referencia.
		En C, los parámetros de una función pueden pasarse por valor o por referencia, lo que afecta cómo se manejan y modifican dentro de la función. 

		Paso por valor:
			Cuando pasas un parámetro por valor a una función, se crea una copia local de ese valor en la función. Cualquier modificación realizada en la copia local no afectará a la variable original fuera de la función.
			void modificarValor(int x) {
				x = x + 10;
			}
			int main() {
				int num = 5;
				modificarValor(num);
				// La variable "num" sigue siendo 5, no se ha modificado
				return 0;
			}

		Paso por referencia (mediante punteros):
			Para lograr un efecto similar al paso por referencia, puedes pasar un puntero a la función. Esto permite que la función modifique directamente la variable a la que apunta el puntero.
			void modificarPorReferencia(int *ptr) {
				*ptr = *ptr + 10;
			}
			int main() {
				int num = 5;
				modificarPorReferencia(&num);
				// La variable "num" ahora es 15, se ha modificado
				return 0;
			}

		Vectores (arrays):
			En C, cuando pasas un vector (array) a una función, en realidad estás pasando un puntero al primer elemento del vector. Esto significa que cualquier modificación realizada en el vector dentro de la función afectará al vector original fuera de la función.
			void modificarVector(int arr[], int size) {
				for (int i = 0; i < size; i++) {
					arr[i] += 10;
				}
			}
			int main() {
				int numeros[] = {1, 2, 3, 4, 5};
				modificarVector(numeros, 5);
				// Ahora "numeros" es {11, 12, 13, 14, 15}
				return 0;
			}

		Paso por valor y por referencia con punteros:
			Incluso cuando pasas un puntero por valor, aún puedes modificar la memoria a la que apunta el puntero. Esto se debe a que el puntero en sí se copia por valor, pero ambos punteros apuntan a la misma dirección de memoria.
			void modificarPorValorPuntero(int *ptr) {
				*ptr = *ptr + 10;
			}
			int main() {
				int num = 5;
				int *ptr = &num;
				modificarPorValorPuntero(ptr);
				// La variable "num" ahora es 15
				return 0;
			}

		En resumen, en C, puedes simular el paso por referencia usando punteros, y los vectores se pasan automáticamente por referencia (a través de punteros). El conocimiento y el uso adecuado de estos conceptos son fundamentales para la manipulación eficaz de datos dentro de funciones.
https://youtu.be/qHujs5fNS6w?list=PLIygiKpYTC_6zHLTjI6cFIRZm1BCT3CuV



7. Algoritmos de ordenamiento:
	En programación, los algoritmos de ordenamiento son algoritmos que organizan los elementos de un arreglo en un cierto orden. Aquí te presento algunos de los algoritmos de ordenamiento más comunes en C:

	1. Ordenamiento de Burbuja (Bubble Sort):
		El algoritmo de ordenamiento de burbuja compara elementos adyacentes (inmediatos) y los intercambia si están en el orden incorrecto:
		void bubbleSort(int arr[], int n) {
			for (int i = 0; i < n - 1; i++) {
				for (int j = 0; j < n - i - 1; j++) {
					if (arr[j] > arr[j + 1]) {
						// Intercambiar arr[j] y arr[j+1]
						int temp = arr[j];
						arr[j] = arr[j + 1];
						arr[j + 1] = temp;
					}
				}
			}
		}

	2. Ordenamiento por Inserción (Insertion Sort):
		El algoritmo de ordenamiento por inserción construye la solución final de una manera gradual, uno a uno, al mover elementos no ordenados a su posición correcta:
		void insertionSort(int arr[], int n) {
			for (int i = 1; i < n; i++) {
				int key = arr[i];
				int j = i - 1;
				while (j >= 0 && arr[j] > key) {
					arr[j + 1] = arr[j];
					j--;
				}
				arr[j + 1] = key;
			}
		}

	3. Ordenamiento por Selección (Selection Sort):
		El algoritmo de ordenamiento por selección encuentra el elemento mínimo del arreglo y lo coloca al principio, luego encuentra el segundo elemento mínimo y lo coloca en la segunda posición, y así sucesivamente:
		void selectionSort(int arr[], int n) {
			for (int i = 0; i < n - 1; i++) {
				int minIndex = i;
				for (int j = i + 1; j < n; j++) {
					if (arr[j] < arr[minIndex]) {
						minIndex = j;
					}
				}
				// Intercambiar arr[i] y arr[minIndex]
				int temp = arr[i];
				arr[i] = arr[minIndex];
				arr[minIndex] = temp;
			}
		}

	4. Ordenamiento Rápido (Quicksort):
		El algoritmo de ordenamiento rápido utiliza una estrategia de dividir y conquistar para ordenar los elementos de un arreglo. Divide el arreglo en subarreglos más pequeños y luego los combina en el orden correcto:
		#include <stdio.h>
		// Función para intercambiar dos elementos
		void swap(int* a, int* b) {
			int t = *a;
			*a = *b;
			*b = t;
		}
		// Función para seleccionar el pivote y colocar elementos menores a la izquierda y mayores a la derecha
		int partition(int arr[], int low, int high) {
			int pivot = arr[high];
			int i = (low - 1);
			for (int j = low; j <= high - 1; j++) {
				if (arr[j] < pivot) {
					i++;
					swap(&arr[i], &arr[j]);
				}
			}
			swap(&arr[i + 1], &arr[high]);
			return (i + 1);
		}
		// Función principal de ordenamiento rápido
		void quickSort(int arr[], int low, int high) {
			if (low < high) {
				int pi = partition(arr, low, high);
				quickSort(arr, low, pi - 1);
				quickSort(arr, pi + 1, high);
			}
		}
		int main() {
			int arr[] = {10, 7, 8, 9, 1, 5};
			int n = sizeof(arr) / sizeof(arr[0]);
			quickSort(arr, 0, n - 1);
			printf("Arreglo ordenado:\n");
			for (int i = 0; i < n; i++) {
				printf("%d ", arr[i]);
			}
			return 0;
		}

	5. Ordenamiento por Fusión (Merge Sort):
		El ordenamiento por fusión es un algoritmo de ordenamiento eficiente que divide el arreglo en mitades, ordena cada mitad y luego combina las mitades ordenadas en un solo arreglo ordenado:
		#include <stdio.h>
		// Función para combinar dos subarreglos ordenados en uno solo
		void merge(int arr[], int left, int middle, int right) {
			int i, j, k;
			int n1 = middle - left + 1;
			int n2 = right - middle;
			// Crear arreglos temporales
			int L[n1], R[n2];
			// Copiar datos a los arreglos temporales L[] y R[]
			for (i = 0; i < n1; i++) {
				L[i] = arr[left + i];
			}
			for (j = 0; j < n2; j++) {
				R[j] = arr[middle + 1 + j];
			}
			// Combinar los arreglos temporales de vuelta en arr[l..r]
			i = 0;
			j = 0;
			k = left;
			while (i < n1 && j < n2) {
				if (L[i] <= R[j]) {
					arr[k] = L[i];
					i++;
				} else {
					arr[k] = R[j];
					j++;
				}
				k++;
			}
			// Copiar los elementos restantes de L[], si los hay
			while (i < n1) {
				arr[k] = L[i];
				i++;
				k++;
			}
			// Copiar los elementos restantes de R[], si los hay
			while (j < n2) {
				arr[k] = R[j];
				j++;
				k++;
			}
		}
		// Función principal de ordenamiento por fusión
		void mergeSort(int arr[], int left, int right) {
			if (left < right) {
				// Encontrar el punto medio del arreglo
				int middle = left + (right - left) / 2;

				// Ordenar primero y segundo subarreglos
				mergeSort(arr, left, middle);
				mergeSort(arr, middle + 1, right);

				// Combinar los subarreglos ordenados
				merge(arr, left, middle, right);
			}
		}
		int main() {
			int arr[] = {12, 11, 13, 5, 6, 7};
			int n = sizeof(arr) / sizeof(arr[0]);
			mergeSort(arr, 0, n - 1);
			printf("Arreglo ordenado:\n");
			for (int i = 0; i < n; i++) {
				printf("%d ", arr[i]);
			}
			return 0;
		}

	6. Ordenamiento por Montículos (Heap Sort):
		Heap Sort utiliza una estructura de datos llamada "montículo" (heap) para organizar los elementos en el arreglo y luego extrae el máximo (o el mínimo, según sea necesario) para colocarlo en la posición final del arreglo:
		#include <stdio.h>
		// Función para intercambiar dos elementos
		void swap(int* a, int* b) {
			int t = *a;
			*a = *b;
			*b = t;
		}
		// Función para ajustar un subárbol en un montículo (heap) máximo
		void heapify(int arr[], int n, int i) {
			int largest = i;
			int left = 2 * i + 1;
			int right = 2 * i + 2;
			if (left < n && arr[left] > arr[largest]) {
				largest = left;
			}
			if (right < n && arr[right] > arr[largest]) {
				largest = right;
			}
			if (largest != i) {
				swap(&arr[i], &arr[largest]);
				heapify(arr, n, largest);
			}
		}
		// Función principal de ordenamiento por montículos
		void heapSort(int arr[], int n) {
			// Construir un montículo (heap) máximo
			for (int i = n / 2 - 1; i >= 0; i--) {
				heapify(arr, n, i);
			}
			// Extraer elementos uno por uno del montículo
			for (int i = n - 1; i >= 0; i--) {
				// Mover el elemento actual al final del arreglo
				swap(&arr[0], &arr[i]);
				// Llamar a heapify en el montículo reducido
				heapify(arr, i, 0);
			}
		}
		int main() {
			int arr[] = {114, 1582, 13, 27, 1000};
			int n = sizeof(arr) / sizeof(arr[0]);
			heapSort(arr, n);
			printf("Arreglo ordenado por montículos (Heap Sort):\n");
			for (int i = 0; i < n; i++) {
				printf("%d ", arr[i]);
			}
			return 0;
		}

	La elección del algoritmo de ordenamiento depende de la situación y los requisitos de rendimiento, como el ordenamiento rápido (quicksort), el ordenamiento por fusión (merge sort) y el ordenamiento por montículos (heap sort), que pueden ser más eficientes para arreglos grandes o específicas situaciones. La comprensión de estos algoritmos y su implementación es fundamental para un programador en C.



Nivel Intermedio:
9. Estructuras, uniones, pilas, colas, listas enlazadas, árboles y grafos:
	* Estructuras de datos:
		Una estructura de datos es una forma organizada y sistemática de almacenar (en RAM), gestionar y acceder a datos en un programa o sistema informático. Las estructuras de datos son fundamentales en la programación y son utilizadas para representar y manipular información de manera eficiente. Hay una variedad de estructuras de datos disponibles, y cada una tiene sus propias ventajas y desventajas, por lo que es importante elegir la estructura de datos adecuada para cada situación.
		En C, puedes definir tus propias estructuras de datos utilizando la palabra clave "struct". Aquí te muestro cómo crear y trabajar con estructuras de datos en C:

			Definición de una estructura de datos:
				Puedes definir una estructura de datos utilizando la palabra clave "struct" seguida de un nombre para la estructura y una lista de campos (variables) que compondrán la estructura. Por ejemplo:
				#include <stdio.h>
				// Definición de una estructura de datos 'Persona'
				struct Persona {
					char nombre[50];
					int edad;
					float altura;
				};
				En este ejemplo, hemos definido una estructura de datos llamada "Persona" con tres campos: "nombre", "edad" y "altura".

			Declaración e inicialización de variables de estructura:
				Una vez que hayas definido una estructura de datos, puedes declarar variables de esa estructura y asignar valores a sus campos de la siguiente manera:
				int main() {
					// Declarar una variable 'persona1' de tipo 'Persona'
					struct Persona persona1;
					// Inicializar los campos de 'persona1'
					strcpy(persona1.nombre, "Juan");
					persona1.edad = 30;
					persona1.altura = 1.75;
					// Acceder a los campos de 'persona1' y mostrarlos
					printf("Nombre: %s\n", persona1.nombre);
					printf("Edad: %d años\n", persona1.edad);
					printf("Altura: %.2f metros\n", persona1.altura);
					return 0;
				}

			Acceso a campos de estructura:
				Puedes acceder a los campos de una estructura utilizando el operador '.' (punto). Por ejemplo, "persona1.nombre" se utiliza para acceder al campo "nombre" de la estructura "persona1".

			Arreglos y punteros en estructuras:
				Las estructuras de datos en C pueden contener arreglos y punteros como campos. Por ejemplo:
				struct Libro {
					char titulo[100];
					char autor[50];
					int anio;
				};
				struct Estudiante {
					char nombre[50];
					int edad;
					struct Libro libros_favoritos[5]; // Campo que es un arreglo de estructuras
					struct Estudiante* amigo; // Campo que es un puntero a otra estructura
				};

			Estructuras anidadas:
				Puedes anidar estructuras dentro de otras estructuras. Esto permite crear estructuras de datos más complejas y organizadas.
				struct Direccion {
					char calle[50];
					char ciudad[50];
					char estado[20];
					int codigo_postal;
				};
				struct Persona {
					char nombre[50];
					int edad;
					struct Direccion direccion;
				};

			Las estructuras de datos son esenciales para representar información de manera organizada y efectiva en programas en C. Pueden utilizarse para crear registros personalizados, bases de datos en memoria, árboles, listas enlazadas, entre otros.
	* Uniones:
		En C, las uniones (unions) son una estructura de datos que permite almacenar diferentes tipos de datos en la misma ubicación de memoria. A diferencia de las estructuras (structs), donde cada campo tiene su propia ubicación de memoria, en una unión, todos los campos comparten la misma ubicación de memoria. Esto significa que una unión puede contener solo uno de sus campos en un momento dado.

		Aquí tienes un ejemplo de cómo declarar y usar una unión en C:
			#include <stdio.h>
			// Definición de una unión llamada 'MiUnion'
			union MiUnion {
				int entero;
				float flotante;
				char caracter;
			};
			int main() {
				union MiUnion u;
				// Asignar valores a los campos de la unión
				u.entero = 42;
				printf("Entero: %d\n", u.entero);
				u.flotante = 3.14;
				printf("Flotante: %.2f\n", u.flotante);
				u.caracter = 'A';
				printf("Carácter: %c\n", u.caracter);
				// Los campos comparten la misma ubicación de memoria
				printf("Después de asignar el carácter: Entero: %d, Flotante: %.2f\n", u.entero, u.flotante);
				return 0;
			}

		En este ejemplo, hemos definido una unión llamada `MiUnion` con tres campos: `entero`, `flotante` y `caracter`. Puedes asignar valores a cualquiera de estos campos, pero ten en cuenta que cuando asignas un valor a un campo, ese valor sobrescribe lo que haya sido almacenado previamente en la ubicación de memoria compartida por todos los campos.

		Las uniones son útiles cuando necesitas ahorrar espacio en memoria y solo quieres almacenar uno de varios tipos de datos en un momento dado. Sin embargo, debes tener cuidado al usar uniones, ya que no proporcionan información sobre qué tipo de dato está actualmente almacenado en la unión, por lo que debes llevar un registro de esto de alguna manera si es necesario.
	* Ventajas y desventajas de las estructuras vs uniones:
		Las estructuras (structs) y las uniones (unions) son dos tipos de estructuras de datos en C que se utilizan para agrupar diferentes tipos de datos en una sola entidad. Tienen ventajas y desventajas que las hacen adecuadas para diferentes situaciones. Aquí te presento algunas de las principales ventajas y desventajas de las estructuras y las uniones:

		Ventajas de las Estructuras (Structs):
			1. Almacenamiento por separado: Cada campo en una estructura tiene su propia ubicación de memoria, lo que permite almacenar y acceder a varios tipos de datos de manera independiente. Esto es útil cuando se necesita almacenar múltiples atributos relacionados en una sola entidad.
			2. Clara identificación de campos: Los campos de una estructura se definen explícitamente, lo que hace que sea fácil identificar y acceder a cada uno de ellos mediante su nombre.
			3. Flexibilidad y legibilidad: Las estructuras son ideales para representar objetos complejos, como registros, ya que proporcionan una forma legible y flexible de organizar los datos.
			4. Inicialización sencilla: Puedes inicializar una estructura proporcionando valores para sus campos en el orden en que se definen.

		Desventajas de las Estructuras (Structs):
			1. Espacio de almacenamiento fijo: El espacio para cada campo se asigna de manera fija, lo que puede resultar en un desperdicio de memoria si algunos campos no se utilizan completamente.

		Ventajas de las Uniones (Unions):
			1. Ahorro de espacio: Las uniones comparten la misma ubicación de memoria para todos sus campos. Esto es útil cuando solo necesitas almacenar uno de varios tipos de datos en un momento dado y deseas ahorrar memoria.
			2. Eficiencia: Al compartir memoria, las uniones pueden ser más eficientes en términos de uso de recursos en comparación con las estructuras.

		Desventajas de las Uniones (Unions):
			1. Ambigüedad de tipo: Las uniones no almacenan información sobre qué campo está actualmente en uso. Debes llevar un registro externo para saber qué tipo de dato está almacenado en la unión en un momento dado.
			2. Uso propenso a errores: Debido a la falta de información sobre el tipo de dato en una unión, es más propenso a errores de programación si se accede a campos incorrectos en un momento inapropiado.
			3. Limitaciones en la inicialización: Inicializar una unión con valores puede ser menos intuitivo y más propenso a errores que inicializar una estructura, ya que solo puedes inicializar uno de los campos a la vez.

		En resumen, las estructuras son ideales cuando deseas almacenar varios tipos de datos de manera independiente y legible, mientras que las uniones son útiles para ahorrar espacio de memoria cuando solo necesitas uno de varios tipos de datos. Sin embargo, debes ser consciente de las limitaciones y riesgos asociados con las uniones, como la ambigüedad de tipo y los posibles errores de acceso a datos. La elección entre estructuras y uniones dependerá de los requisitos específicos de tu programa.
	* Pilas (Stacks):
		Una pila es una estructura de datos que sigue el principio de "último en entrar, primero en salir" (LIFO). Puedes implementar una pila en C utilizando un arreglo o una lista enlazada. Aquí hay un ejemplo de una pila utilizando un arreglo:
			#include <stdio.h>
			#include <stdbool.h>
			#define MAX_SIZE 100
			struct Stack {
				int items[MAX_SIZE];
				int top;
			};
			void init(struct Stack* stack) {
				stack->top = -1;
			}
			bool isEmpty(struct Stack* stack) {
				return stack->top == -1;
			}
			bool isFull(struct Stack* stack) {
				return stack->top == MAX_SIZE - 1;
			}
			void push(struct Stack* stack, int value) {
				if (!isFull(stack)) {
					stack->items[++stack->top] = value;
				}
			}
			int pop(struct Stack* stack) {
				if (!isEmpty(stack)) {
					return stack->items[stack->top--];
				}
				return -1; // Valor sentinela para indicar error (pila vacía)
			}
			int main() {
				struct Stack stack;
				init(&stack);
				push(&stack, 10);
				push(&stack, 20);
				push(&stack, 30);
				printf("Elemento eliminado de la pila: %d\n", pop(&stack)); // 30
				printf("Elemento eliminado de la pila: %d\n", pop(&stack)); // 20
				return 0;
			}
	* Colas (Queues):
		Una cola es una estructura de datos que sigue el principio de "primero en entrar, primero en salir" (FIFO). Puedes implementar una cola en C utilizando un arreglo o una lista enlazada. Aquí hay un ejemplo de una cola utilizando una lista enlazada:
			#include <stdio.h>
			#include <stdbool.h>
			struct Node {
				int data;
				struct Node* next;
			};
			struct Queue {
				struct Node* front;
				struct Node* rear;
			};
			void init(struct Queue* queue) {
				queue->front = queue->rear = NULL;
			}
			bool isEmpty(struct Queue* queue) {
				return queue->front == NULL;
			}
			void enqueue(struct Queue* queue, int value) {
				struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
				newNode->data = value;
				newNode->next = NULL;
				if (isEmpty(queue)) {
					queue->front = queue->rear = newNode;
				} else {
					queue->rear->next = newNode;
					queue->rear = newNode;
				}
			}
			int dequeue(struct Queue* queue) {
				if (!isEmpty(queue)) {
					int value = queue->front->data;
					struct Node* temp = queue->front;
					queue->front = queue->front->next;
					free(temp);
					return value;
				}
				return -1; // Valor sentinela para indicar error (cola vacía)
			}

			int main() {
				struct Queue queue;
				init(&queue);
				enqueue(&queue, 10);
				enqueue(&queue, 20);
				enqueue(&queue, 30);
				printf("Elemento eliminado de la cola: %d\n", dequeue(&queue)); // 10
				printf("Elemento eliminado de la cola: %d\n", dequeue(&queue)); // 20
				return 0;
			}
	* Listas enlazadas
	* Árboles
	* Grafos



10. Gestión de archivos:
	* Manipulación de archivos (lectura, escritura, apertura, cierre).
	* Uso de punteros de archivo.



11. Programación modular:
	* División de código en módulos y archivos.
	* Creación y uso de bibliotecas estáticas y dinámicas.



12. Manejo de errores y excepciones:
	* Uso de sentencias de manejo de errores.
	* Implementación de manejo de errores propio.



Nivel Avanzado:
13. Memoria dinámica y gestión avanzada de punteros:
	* Asignación de memoria dinámica con malloc, calloc y realloc.
	* Liberación de memoria con free.



14. Programación de bajo nivel:
	* Manipulación de bits y bytes.
	* Uso de máscaras y operaciones bitwise.



15. Programación de concurrencia:
	* Introducción a la programación concurrente.
	* Uso de hilos (threads) en C.



16. Optimización y rendimiento:
	* Estrategias para optimizar el rendimiento del código.
	* Perfilado y análisis de rendimiento.



17. Uso de bibliotecas avanzadas:
	* Uso de bibliotecas estándar y de terceros.
	* Interacción con sistemas y API externas.

Recuerda que este temario es una guía general y la profundidad de cada tema puede variar según el enfoque del curso y el nivel de conocimientos previos de los estudiantes. El lenguaje C es conocido por su eficiencia y capacidad de bajo nivel, lo que lo convierte en una herramienta poderosa para el desarrollo de software, sistemas operativos y aplicaciones de alto rendimiento.