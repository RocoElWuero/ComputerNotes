Vertica es un sistema de gestión de bases de datos analíticas columnares diseñado para gestionar grandes volúmenes de datos y consultas complejas. Aquí hay un temario básico a avanzado para aprender sobre Vertica:

Nivel Básico:

1. Introducción a Vertica
	* Definición y características principales.
		* Definición:
			Vertica: Base de datos en columnas, rápida y relacional diseñada para manejar grandes volúmenes de datos para análisis.
			OLAP (del inglés Online Analytical Processing: procesamiento analítico en línea) es un software para realizar análisis multidimensionales a altas velocidades en grandes volúmenes de datos de un almacén de datos, data mart o algún otro almacén de datos unificado y centralizado.
			Vertica es un sistema de gestión de bases de datos analíticas columnares diseñado para manejar grandes volúmenes de datos y realizar consultas analíticas de manera eficiente. Fue desarrollado por Vertica Systems, adquirida posteriormente por Hewlett Packard Enterprise (HPE). Vertica se centra en el rendimiento y la escalabilidad para análisis de datos complejos.
			5-100X faster query response.
			Petabyte* proven scale: *1PB = 1,000,000 GB

			Vertica es una base de datos SQL con baja curva de aprendizaje. Cumple con los estándares ANSI SQL.
				ACID: Atomicidad+Consistencia+Aislamiento+Durabilidad

			La arquitectura de pila completa de nube monolítica está muerta...

			Vertica es...
				* Libertad de despliegue
				* Modelo de libertad de consumo
				* Todo incluido

			Características:
				* Orientado a columnas
				* Separación de computo y almacenamiento
					* Eon Mode:
						* Soporta varias tecnologias de almacenamiento
						* Aislamiento de carga de trabajo
						* Escalabilidad extrema
				* Aislamiento de carga de trabajo
				* Al ser híbrido, libertad de infraestructura.
				* Análisis compuesto+ML integrado
				* Diseño físico automático (Vertica Database Designer)

			Rendimiento extremo, gracias a la arquitectura columnar:
				* Menos Entradas/Salidas
				* Mejor rendimiento
				* Más eficiente

			Comparativa entre el almacenamiento por filas vs por columnas
				Por columnas: Lee 3 columnas:
						┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐   ┌──────┐  ┌──────┐  ┌──────┐   ┌───────┐
					---→│ AAPL │  │      │  │      │  │      │  │      │  │      │  │      │  │      │   │143.74│  │      │  │      │   │5/06/09│
						├──────┤  │ NQDS │  │ NQDS │  │ NQDS │  │ NQDS │  │ NQDS │  │ NQDS │  │ NQDS │   ├──────┤  │ NQDS │  │ NQDS │   ├───────┤
						│ AAPL │  │ NYSE │  │ NYSE │  │ NQDS │  │ NYSE │  │ NYSE │  │ NYSE │  │ NYSE │   │143.75│  │ NYSE │  │ NQDS │   │5/06/09│
					----├──────┤--│      │--│      │--│      │--│      │--│      │--│      │--│      │--→├──────┤  │      │  │      │   ├───────┤
						│ BBY  │  │ NYSE │  │ NYSE │  │ NYSE │  │ NQDS │  │ NYSE │  │ NYSE │  │ NYSE │   │ 37.03│  │ NYSE │  │ NYSE │   │5/06/09│
						├──────┤  │ NYSE │  │ NYSE │  │ NYSE │  │ NQDS │  │ NYSE │  │ NYSE │  │ NYSE │   ├──────┤  │ NYSE │  │ NYSE │   ├───────┤
					----│ BBY  │--│      │--│      │--│      │--│      │--│      │--│      │--│      │---│ 37.13│--│      │--│      │--→│5/06/09│
						└──────┘  └──────┘  └──────┘  └──────┘  └──────┘  └──────┘  └──────┘  └──────┘   └──────┘  └──────┘  └──────┘   └───────┘
				Por filas: Lee TODAS las columnas:
						┌─────────────────────────────────────────────────────────────────────────┐
					---→│ AAPL  NQDS  NQDS  NQDS  NQDS  NQDS  NQDS  NQDS 143.74 NQDS  NQDS 5/06/09│
						├─────────────────────────────────────────────────────────────────────────┤
					---→│ AAPL  NYSE  NYSE  NQDS  NYSE  NYSE  NYSE  NYSE 143.75 NYSE  NQDS 5/06/09│
						├─────────────────────────────────────────────────────────────────────────┤
					---→│ BBY   NYSE  NYSE  NYSE  NQDS  NYSE  NYSE  NYSE  37.03 NYSE  NYSE 5/06/09│
						├─────────────────────────────────────────────────────────────────────────┤
					---→│ BBY   NYSE  NYSE  NYSE  NQDS  NYSE  NYSE  NYSE  37.13 NYSE  NYSE 5/06/09│
						└─────────────────────────────────────────────────────────────────────────┘
				SELECT avg(price)
					FROM tickstore_table
					WHERE symbol = 'APPL' AND date '5/06/09';

			ROS (Vertica native format).
				"ROS" en el contexto de Vertica se refiere a "Read-Optimized Storage" (Almacenamiento Optimizado para Lectura). Es un formato de almacenamiento nativo de Vertica que se utiliza para organizar y almacenar físicamente los datos en una forma optimizada para operaciones de lectura eficientes.

				Características clave de ROS (Read-Optimized Storage):
					1. Almacenamiento Columnar:
						* Al igual que el modelo de datos de Vertica, el formato ROS organiza los datos de manera columnar en lugar de por filas. Cada columna se almacena de manera independiente, lo que facilita el acceso rápido a columnas específicas durante las operaciones de lectura.
					2. Compresión Eficiente:
						* ROS aplica técnicas de compresión específicas para columnas, lo que reduce el espacio de almacenamiento necesario y mejora la eficiencia en la transmisión de datos desde el almacenamiento a la memoria durante las operaciones de lectura.
					3. Proyecciones:
						* Vertica utiliza proyecciones para organizar físicamente los datos en el almacenamiento según las consultas comunes. Estas proyecciones se basan en el formato ROS y permiten optimizar el rendimiento de las consultas mediante la preorganización de los datos.
					4. Indización y Metadatos:
						* El formato ROS incluye índices y metadatos necesarios para facilitar un acceso rápido y eficiente a los datos durante las operaciones de lectura.
					5. Optimizado para Lecturas Secuenciales:
						* El formato ROS está diseñado para optimizar las operaciones de lectura secuencial, lo que lo hace adecuado para consultas analíticas que implican exploración de grandes conjuntos de datos.
					6. Procesamiento en Paralelo:
						* ROS se integra con la arquitectura de procesamiento en paralelo de Vertica, lo que permite realizar operaciones de lectura en paralelo para mejorar el rendimiento.
					En resumen, ROS (Read-Optimized Storage) es el formato de almacenamiento nativo de Vertica diseñado específicamente para proporcionar un rendimiento optimizado durante las operaciones de lectura, que son comunes en entornos analíticos y de data warehousing. Su estructura columnar, compresión eficiente y organización optimizada facilitan el acceso rápido a los datos durante las consultas analíticas.

			Automatice y simplifique el diseño de modelos físicos - Database Designer

			How we use Vertica at GSN (http://willsllc.github.io/blog/how-we-use-vertica-at-gsn/):
				Vertica es rápido...
					MySQL: ~24hrs
					Vertica: 1.4s (con una huella de HW mucho menor)

					SELECT
						hr AS "Hours Until Drawing",
						1.0 * cumulative/first_value(cumulative) OVER(ORDER BY hr DESC) AS "Cumulative Percent",
						1.0 * entered/first_value(cumulative) OVER(ORDER BY hr DESC) AS "Hourly Percent"
					FROM (
						SELECT
							datediff('hour', attr31, event_time) AS hr,
							COUNT(DISTINCT fb_user_id) AS entered,
							SUM(COUNT(DISTINCT fb_user_id)) OVER (ORDER BY datediff('hour', attr31, event_time) ASC) AS cumulative
						FROM newapi.events
						WHERE event_type_id=137
							AND datediff('hour', attr31, event_time) BETWEEN -24 AND -1
							AND event_time BETWEEN '2012-10-10' AND date_trunc('day', sysdate)
						GROUP BY 1
					) Z
					ORDER BY 1 ASC;
					Vertica: 100 bln registros y 300ms

			Rendimiento extremo gracias al procesamiento paralelo masivo:
				De toda la data en un solo medio:
					🛢
				A multiples medios:
					┌───────┐
					│Cluster│
					│┌────┐ │
					││ ⛁ │─┼─┐
					│└────┘ │ │
					│┌────┐ │ └─→ RE
					││ ⛁ │─┼───→ SU
					│└────┘ │ ┌─→ LT
					│┌────┐ │ │
					││ ⛁ │─┼─┘
					│└────┘ │
					└───────┘
				Y RAID para alta disponibilidad (Backup):
				  │ ┌───────┐
				  │ │Cluster│
				  │ │┌────┐ │
				  │ ││ ⛁ │─┼─┐
				  └─┼┼→⛁ │ │ │
					│└────┘ │ │
					│┌────┐ │ └─→ RE
					││ ⛁ │─┼───→ SU
					││ ⛁ │ │
					│└────┘ │ ┌─→ LT
					│┌────┐ │ │
					││ ⛁ │─┼─┘
					││ ⛁ │ │
					│└────┘ │
					└───────┘

			¿Qué nos hace preparados para el futuro?
				Le permite tener libertad de selección de la infraestructura subyacente.

			Cloud, Kubernetes and On-Prem...
				* Vertica en las nubes (Clouds):
					* AWS
					* Google Cloud
					* Azure
					* etc.
					Implementable en instancias de VM en la nube o instancias bare metal en la nube
				* Vertica en el Modo Eon en las nubes (Clouds):
					* AWS
					* Google Cloud
					* Azure
					Separación del cálculo del almacenamiento en instancias de VM en la nube o instancias bare metal en la nube o K8s
				* Vertica On-Premises:
					* Deployable on commodity hardware or virtual machines container (1-node)*
				* Vertica en el Modo Eon On-Premises:
					* Separación de la computación del almacenamiento en centros de datos locales en hardware básico o máquinas virtuales o K8
				* Aceledador Vertica Vertica-as-a-Service:
					* Implementable en tipos predefinidos de instancias de VM en la nube, administradas por Vertica pero en el espacio del Cliente

			Vertica Eon. Aislar cargas de trabajo y necesidades comerciales:
				      ┌────────────┐
				 ┌→ * │Object Store│
				 │    └────────────┘
				 │    ┌─────────────────┐
				 │    │Data Loading 24x7│
				 │    │┌────────────┐   │
				 │    ││Compute Node│￩┐ │
				 │    │└────────────┘ │ │
				 │    │          ┌─────┐│
				 ├────│─────────→│Cache││
				 │    │          └─────┘│
				 │    └─────────────────┘
				 │    ┌─────────────────────┐ ──┐
				 │    │Business Intelligence│   │
				 │    │┌────────────┐       │   │
				 │    ││Compute Node│￩┐     │   │
				 │    │└────────────┘ │     │   │
				 │    │          ┌─────┐    │   │
				 ├────│─────────→│Cache│    │   │
				 │    │          └─────┘    │   │
				 │    └─────────────────────┘   ├─ EDW 9x5
				 │    ┌─────────────────┐       │
				 │    │     IT Admin    │       │
				 │    │┌────────────┐   │       │
				 │    ││Compute Node│￩┐ │       │
				 │    │└────────────┘ │ │       │
				 │    │          ┌─────┐│       │
				 ├────│─────────→│Cache││       │
				 │    │          └─────┘│       │
				 │    └─────────────────┘ ──────┘
				 │    ┌─────────────────────────────────────────────┐
				 │    │┌─────────────────┐ ──────┐                  │
				 │    ││Data Science 9x5 │       │                  │
				 │    ││┌────────────┐   │       │                  │
				 │    │││Compute Node│￩┐ │       │                  │
				 │    ││└────────────┘ │ │       │                  │
				 │    ││          ┌─────┐│       │                  │
				 ├────││─────────→│Cache││       │                  │
				 │    ││          └─────┘│       │                  │
				 │    ││┌────────────┐   │       │                  │
				 │    │││Compute Node│￩┐ │       │                  │
				 │    ││└────────────┘ │ │       │                  │
				 │    ││          ┌─────┐│       ├─ Data Lake # SLA ├─ Kubernetes
				 ├────││─────────→│Cache││       │                  │
				 │    ││          └─────┘│       │                  │
				 │    │└─────────────────┘       │                  │
				 │    │┌─────────────────┐       │                  │
				 │    ││   Sandbox 9x2   │       │                  │
				 │    ││┌────────────┐   │       │                  │
				 │    │││Compute Node│￩┐ │       │                  │
				 │    ││└────────────┘ │ │       │                  │
				 │    ││          ┌─────┐│       │                  │
				 └────││─────────→│Cache││       │                  │
				      ││          └─────┘│       │                  │
				      │└─────────────────┘ ──────┘                  │
				      └─────────────────────────────────────────────┘
				A continuación te explicaré el anterior diagrama:
					* El anterior diagrama es una implementación específica que permite la separación de almacenamiento y cómputo.
						* Componentes Principales:
							1. Vertica Eon:
								* Es probable que este sea el sistema principal que utiliza la arquitectura Eon de Vertica, que permite separar el almacenamiento y el cómputo para escalar y administrar mejor los recursos.
							2. Object Store:
								* El Object Store es donde se almacenan los datos de manera duradera. En la arquitectura Eon, el almacenamiento se externaliza y utiliza un objeto de almacenamiento como S3 de Amazon o Azure Blob Storage.
						* Áreas de Negocio y Nodos:
							1. Data Loading 24x7:
								* Área dedicada a la carga continua de datos, 24 horas al día, 7 días a la semana.
							2. EDW 9x5 (Enterprise Data Warehouse):
								* Incluye dos áreas:
									* Business Intelligence.
									* IT Admin.
								* Estas áreas están relacionadas con el almacén de datos empresariales y operan de 9 a 5.
							3. Data Science 9x5:
								* Área específica para operaciones de ciencia de datos, operando de 9 a 5.
							4. Sandbox 9x2:
								* Área dedicada a entornos de prueba y desarrollo, operando de 9 a 2.
						* Data Lake # SLA:
							* Parece que "Data Lake # SLA" es una entidad más amplia que incluye "Data Science 9x5" y "Sandbox 9x2".
							* Está implementado en un entorno Kubernetes, sugiriendo una orquestación y gestión de contenedores para estas áreas.
						* Flujos y Conectividad:
							* Todos los flujos de datos (full duplex) se dirigen hacia el Object Store, indicando que el almacenamiento es centralizado en este componente.
							* Cada área de negocio tiene sus propios nodos, y estos nodos a su vez pueden tener cachés para mejorar el rendimiento.
						* Observaciones:
							* La separación de áreas como Business Intelligence, IT Admin, Data Science y Sandbox en distintos nodos sugiere una arquitectura que puede escalar y asignar recursos de manera flexible según las necesidades de cada área.
							* El uso de Kubernetes para "Data Lake # SLA" indica un enfoque moderno y escalable para la gestión de contenedores en entornos de ciencia de datos y sandbox.
							* La arquitectura parece estar diseñada para ofrecer flexibilidad y eficiencia en la gestión de cargas de trabajo específicas en entornos de análisis de datos y ciencia de datos.
					En general, la arquitectura parece estar diseñada para ofrecer flexibilidad, escalabilidad y eficiencia en la gestión de cargas de trabajo específicas en entornos de análisis de datos y ciencia de datos.

			Vertica fuera de la caja...
				Analitica y ML:
					0. Business Understanding
						* Apache Spark
							* Utilizado para procesamiento de datos y análisis.
						* TensorFlow:
							* Marco de trabajo popular para aprendizaje profundo y machine learning.
						* PMML:
							* Formato estándar para representar modelos predictivos.
					1. Data Analytics/Exploration
						* Una serie de técnicas y herramientas para explorar y analizar datos, incluyendo:
							* Resúmenes estadísticos (Statistical Summary)
							* Detección de valores atípicos (Outlier Detection)
							* Sesionalización (Sessionization)
							* Coincidencia de patrones (Pattern Matching)
							* Matrices de correlación (Correlation Matrices)
							* Window/Partition
							* Manejo de tipos de fecha (Date Type Handling)
							* Secuencias (Sequences)
							* y más...
					2. Data Preparation
						* Diversas técnicas de preparación de datos, como:
							* Series temporales (Time Series)
							* Imputación de valores faltantes (Missing Value Imputation)
							* Normalización (Normalization)
							* Procesamiento de datos desbalanceados (Imbalanced Data Processing)
							* Muestreo (Sampling)
							* División de prueba/validación (Test/Validation Split)
							* Filtrado (Filtering)
							* Selección de características (Feature Selection)
							* Álgebra de fecha/hora (Date/Time Algebra)
							* y más...
					3. Model Training
						* Algoritmos de entrenamiento de modelos, incluyendo:
							* XGBoost
							* Bosques aleatorios (Random Forests)
							* K-Means
							* Máquinas de soporte vectorial (Support Vector Machines)
							* Regresiones logísticas, lineales, de Ridge (Logistic, Linear, Ridge Regression)
							* Naive Bayes
							* Análisis de componentes principales (Principal Component Analysis)
							* y más...
					4. Model Evaluation
						* Evaluación de modelos con métricas como:
							* Estadísticas a nivel de modelo (Model-level Stats)
							* Tablas ROC (ROC Tables)
							* Tasa de error (Error Rate)
							* Tabla de Levantamiento (Lift Table)
							* Matriz de confusión (Confusion Matrix)
							* R-cuadrado (R-Squared)
							* Error cuadrático medio (MSE)
							* Validación cruzada (Cross Validation)
							* y más...
					5. Deployment/Management
						* Despliegue y gestión de modelos, incluyendo:
							* Puntuación en la base de datos (In-Database Scoring)
							* Importación/exportación de PMML (PMML Import/Export)
							* Importación de TensorFlow (TensorFlow Import)
							* Velocidad a escala (Speed at Scale)
							* Seguridad
							* Gestión tipo tabla (Table-Like Management)
							* Versionado
							* Autorización
							* y más...
					Vertica proporciona soporte para todo el proceso de aprendizaje automático (Machine Learning) desde el entendimiento del negocio hasta la implementación y gestión de modelos. Proporciona herramientas y capacidades para cada etapa del flujo de trabajo de machine learning.
					Este enfoque integral permite utilizar Vertica como una plataforma central para el desarrollo y despliegue de modelos de aprendizaje automático en un entorno empresarial.
					En el aprendizaje automático de bases de datos, no hay movimiento de entrada y salida de datos.

			Análisis compuesto y aprendizaje automático. Incorporado (listo para usar):
				143: Popular data virtualisation layer:
				144: Very mature MPP on-prem DB
				149: MPP db
				190: Ingres Descendant
				195: On-Prem DB
				197: Column Based Niche Player
				229: Popular Cloud MPP db
				237: In-Memory Analytics SQL db
				266: Popular Cloud MPP db
				288: Another, Sybase descendant Big Shot
				329: Another of the  old Big Shots
				331: One of the old Big Shots
				383: Popular Cloud MPP db
				533: Popular open source MPP db
				613: Vertica 9.3.1.
				651: Vertica 10.1
				657: Vertica 11.0
				700 ---------- Cuidado con la brecha ----------
				Número de funciones disponibles según la documentación del producto.

			Vertica 65%-85%: Tiempo dedicado a explorar y preparar los datos.

			Warta: ...con Vertica nuestros Analistas y Científicos de Datos no tienen miedo de experimentar, porque saben que no perderán grandes cantidades de tiempo en la exploración y preparación de datos.

			Euro Information: Aprovechando el aprendizaje automático en la base de datos [con Vertica], ahora admitimos casos de uso que antes no podíamos manejar.
				Gaetan Dion, Project Manager, Big Data & Machine Learning

			Mercado de Vertica:
				* Apache Airflow
				* DataHub
				* Grafana
				* Apache Nifi
				* dbt
				* Kafka
				* Apache Spark
				* y más...

			Cumplimiento y Gobernanza:
				* FIPS Validated 140-2
				* ISO 27001 Certified by Shellman
				* SOC 2 Type 2. AICPA SOC
				* ANSI SQL standars
				Vertica puede cumplir fácilmente algunos requisitos del RGPD (con herramientas de terceros)

			Vertica permite análisis orientados al dominio:
				(Business Analysts) AND (Data Science & Statisticians) AND (Business Users):
					* DWH, ODS, Data Lake
					* 360 - Data Science
					* Fraud Prevention
					* Next Best Action
					* Data Exploration
					* Churn
					* Customer Experience
					* Pricing Optimization
					Varias herramientas de informes, BI y ciencia de datos

			Powered by Vertica. Performance-Scale:
				* theTradeDesk:
					* Industria: Publicidad.
					* Caso de Uso: Análisis de datos en la industria de la publicidad a una escala de petabytes (Advertising industry data analysis at Petabyte scale)
				* The Climate Corporation:
					* Industria: Agricultura, Clima, Internet de las cosas (IoT).
					* Caso de Uso: Análisis de datos meteorológicos y de IoT (Weather and IoT data analytics)
				* Guess:
					* Industria: Minorista, Moda.
					* Caso de Uso: Recomendaciones de productos (Product recommendations)
				* Philips:
					* Industria: Salud, Fabricación.
					* Caso de Uso: Mantenimiento predictivo para lograr cero tiempos de inactividad no planificados (Zero unplanned downtimes with predictive maintenance)
				* United Group:
					* Industria: Medios, Publicidad.
					* Caso de Uso: Publicidad en televisión dirigida (Addressable TV advertising)
				* Taboola:
					* Industria: Medios, Publicidad.
					* Caso de Uso: Compromiso del público (Audience engagement)
				Los líderes confían y ganan con Vertica
				Este fragmento resalta ejemplos de casos de uso y organizaciones que se benefician de las capacidades de Vertica, un sistema de gestión de bases de datos analíticas.

			¿Porque Vertica?
				Las necesidades del cliente y las fortalezas de Vertica
				* Alto rendimiento
				* Configurabilidad/Optimización
				* Capacidad para operar en infraestructura compleja
				* Precios transparentes y predecibles
				* Capacidades combinadas y ecosistema de socios

			Sportium: Quedamos impresionados con la increíble velocidad de carga de datos de Vertica. Podríamos consultar nuestras gigantescas tablas de datos muy rápidamente, filtrando por cualquier columna, sin necesidad de indexar los datos.
				Abel Martínez, BI Manager

			Algunas características "chidas" de Vertica:
				* Automatic Data Marts (Flattened Tables) / Data Marts automáticos (tablas aplanadas)
					ALTER TABLE books
						ADD COLUMN author VARCHAR(50)
						DEFAULT USING (
							SELECT name
								FROM authors
								WHERE id = books.author_id
						);
					Cualquier expresión, no solo una búsqueda desde una dimensión.
					¿Insertar en los hechos? ¡Se completa automáticamente!
					¿Se cambió la tabla de dimensiones?
						SELECT refresh_column(table, cols)
						Actualiza una sola columna, ¡incluso por partición!
				* Pre-Aggregation for Cubes / Preagregación de cubos
					* Acelere ROLAP aún más agregando Live Aggregate Projection
					CREATE PROJECTION clicks_agg AS
						SELECT page_id,
							click_time::DATE click_date,
							COUNT(*) num_clicks
						FROM clicks
						GROUP BY page_id, click_time::DATE
						KSAFE 1;

						El parámetro "KSAFE" se refiere al número de nodos de respaldo en un clúster de Vertica. En este caso, "KSAFE 1" significa que hay un nodo de respaldo.
						En Vertica, la redundancia se logra mediante la replicación de datos en varios nodos del clúster, y "KSAFE" especifica cuántos nodos de respaldo deberían tener los datos. En este caso, "KSAFE 1" indica que cada conjunto de datos en el clúster tendrá un nodo de respaldo.
						El comando "CREATE PROJECTION" se utiliza para crear una proyección en Vertica, que es un mecanismo para preagregar y organizar físicamente los datos para acelerar ciertas consultas. La inclusión de "KSAFE 1" indica que se desea un nodo de respaldo para esta proyección, lo que proporciona redundancia en caso de fallos del nodo principal.

						Acelere las consultas con agregados.
						Evite leer GB de detalles en cada consulta.
						Se utiliza automáticamente cuando corresponde.
						Similar al almacenamiento en caché agregado en OLAP, ¡pero en la base de datos!
				* Find pattern in your data / Encuentra un patrón en tus datos
					* ...
				* Freedom from Underlying Storage (Tiering) / Libertad de almacenamiento subyacente (niveles)
				* All You for IoT & Clickstream
				* UDX - Unlimited Vertica Expansion
				* GeoSpatial analytics

			https://academy.vertica.com/path-player?courseid=vertica-explained-00&unit=6319e121301a3c149e3034dbUnit
		* Modelo de datos:
			Vertica utiliza un modelo de datos columnar para almacenar y gestionar la información. Este enfoque difiere del modelo de datos tradicional basado en filas que se encuentra en la mayoría de las bases de datos relacionales. Aquí hay algunas características clave del modelo de datos columnar en Vertica:
				1. Almacenamiento Columnar:
					* Los datos se almacenan en columnas en lugar de filas.
					* Cada columna se almacena por separado, lo que permite un acceso más eficiente a datos específicos durante las consultas.
				2. Compresión de Datos:
					* Vertica utiliza algoritmos de compresión específicos para columnas.
					* La compresión reduce el espacio de almacenamiento y mejora el rendimiento al reducir la cantidad de datos que se deben leer desde el disco.
				3. Proyecciones:
					* Vertica utiliza el concepto de proyecciones para organizar y optimizar el almacenamiento físico de los datos, para consultas específicas, mejorando así el rendimiento.
					* Las proyecciones son vistas virtuales de los datos que permiten a la base de datos acceder rápidamente a la información necesaria para consultas específicas.
				4. Índices:
					* Aunque Vertica no utiliza índices tradicionales como las bases de datos relacionales, tiene mecanismos para acelerar las consultas, como el uso de proyecciones y técnicas de ordenación.
				5. Particionamiento:
					* Vertica permite el particionamiento de tablas, lo que significa que grandes conjuntos de datos se pueden dividir en particiones más pequeñas, facilitando la administración y mejorando el rendimiento.
				6. Ordenación:
					* Los datos pueden organizarse físicamente en función de una o más columnas, lo que facilita la búsqueda y el filtrado basado en esas columnas.
			El modelo de datos columnar de Vertica está diseñado para optimizar el rendimiento de consultas analíticas y operaciones de análisis en entornos de grandes volúmenes de datos. Este enfoque es especialmente eficaz para casos de uso en los que se realizan consultas complejas y agregaciones sobre conjuntos de datos extensos.
		* ADBMS:
			* La contracción comúnmente utilizada para "analytic database management" es "ADBMS", que significa "Analytic Database Management System". Esta sigla se refiere a sistemas de gestión de bases de datos diseñados específicamente para admitir operaciones analíticas y consultas complejas en grandes volúmenes de datos. Un ejemplo de ADBMS es Vertica, que mencionamos anteriormente.
			* Vertica está diseñado principalmente para cargas de trabajo analíticas y consultas complejas en grandes volúmenes de datos. Aunque mantiene algunos conceptos de bases de datos relacionales, su enfoque es más analítico y orientado al rendimiento.
		* Eon Mode:
			* Opciones de desarrollo:
				* Cuando Vertica se lanzó por primera vez en 2005, fue diseñado y construido para funcionar con hardware de productos básicos en las instalaciones. Este modo de operación sigue una arquitectura de "nada compartido", donde cada nodo en un clúster es independiente y autosuficiente, y no hay un solo punto de discusión. Más específicamente, ninguno de los nodos de memoria o almacenamiento en disco. En ese momento, Vertica fue la base de datos SQL de análisis avanzado de arquitectura abierta más rápida en hardware de productos básicos.
				* Poco después, los clientes querían ejecutar las bases de datos Vertica en la nube. Una forma de hacer que Vertica esté disponible en las nubes, inicialmente con los servicios de Amazon Web (AWS), seguido en breve por la plataforma Google Cloud y Microsoft Azure. Esto significaba que Vertica era la base de datos SQL de análisis avanzado de arquitectura abierta más rápida en las nubes.
				* Solo estar en la nube no significa que estábamos cumpliendo la promesa de la nube; a saber, la capacidad de escalar rápidamente hacia arriba y hacia abajo para satisfacer las cargas de trabajo en constante cambio de una organización. Para abordar esto, Hemos introducido Vertica en el "Eon Mode", inicialmente disponible en AWS. A diferencia del modo Enterprise, El modo Eon separa el cómputo del almacenamiento, esto ahora nos da la base de datos SQL de análisis avanzado de arquitectura abierta más rápida en la nube, capaz de escalar rápidamente para mantener el ritmo de sus cargas de trabajo.
				* Donde los clientes desean aprovechar el modo Eon, pero no quiero desplegar en la nube, ahora tenemos Vertica en modo Eon con Pure Storage FlashBlades, por lo tanto, ahora nos brinda la única base de datos SQL de análisis avanzado del mundo que separa la computación del almacenamiento en centros de datos locales.
				* Cabe señalar que las arquitecturas posteriores no reemplazan a las anteriores; más bien, los complementan. Vertica es un producto que se puede implementar en múltiples nubes y en centros de datos locales en los modos Enterprise y Eon, lo que le da al cliente la más amplia opción de opciones de implementación de cualquier base de datos SQL de análisis avanzado.

				  Vertica en Enterprise Mode    Vertica en Enterprise Mode        Vertica en Eon Mode                 Vertica en Eon Mode
				         On-Premises                   en las nubes                  en las nubes              con almacenamiento puro FlashBlades
				┌───────┐ ┌───────┐ ┌───────┐    ┌─────┐ ┌─────┐ ┌─────┐     ┌───────┐┌───────┐┌───────┐          ┌───────┐┌───────┐┌───────┐
				│ ───── │ │ ───── │ │ ───── │    │ EC2 │ │ EC2 │ │ EC2 │     │  EC2  ││  EC2  ││  EC2  │          │Compute││Compute││Compute│
				│ ───── │ │ ───── │ │ ───── │    └─────┘ └─────┘ └─────┘     │  with ││  with ││  with │          │  Node ││  Node ││  Node │
				│ ───── │ │ ───── │ │ ───── │      🡡       🡡      🡡        │storage││storage││storage│          └───────┘└───────┘└───────┘
				│       │ │       │ │       │      🡣       🡣      🡣        └───────┘└───────┘└───────┘              🡡       🡡        🡡
				│  ┌─┐  │ │  ┌─┐  │ │  ┌─┐  │    ┌─────┐ ┌─────┐ ┌─────┐        🡡       🡡        🡡                  └→⛁     └→⛁      └→⛁
				│  └─┘  │ │  └─┘  │ │  └─┘  │    │ EBS │ │ EBS │ │ EBS │        └→⛁     └→⛁      └→⛁                  🡡       🡡        🡡
				│       │ │       │ │       │    │ ⛁  │ │ ⛁  │ │ ⛁   │          🡡       🡡        🡡                  └────────┼─────────┘
				└───────┘ └───────┘ └───────┘    └─────┘ └─────┘ └─────┘           └───────┼─────────┘                           │
				    🡡        🡡        🡡                                                  │                                ───────────
				    🡣        🡣        🡣                                             ───────────                           \    S3   /
				    ⛁        ⛁        ⛁                                             \   S3   /                             ────────
				    ⛁        ⛁        ⛁                                              ────────
				    ⛁        ⛁        ⛁
				La arquitectura más rápida y     La arquitectura más rápida y     La arquitectura más rápida y    La única base de datos SQL de
				abierta, análisis avanzado       abierta, análisis avanzado       abierta, análisis avanzado      análisis más avanzada del mundo,
				de la base de datos SQL en       de la base de datos SQL en       de la base de datos SQL,        que separa la computación del
				hardware de productos básicos.   la nube.                         capaz de escalar rápidamente    almacenamiento en centros de
				                                                                  para seguir el ritmo de su      datos locales.
				                                                                  carga de trabajo cambiante.
			* Cómo aprovisionar el clúster de Eon Mode:
				* Todo lo que necesita para comenzar es un grupo de nodos informáticos con algo de almacenamiento (más sobre este momento) y un depósito S3 en el que se almacenarán sus datos. En AWS, los nodos de computación normalmente serían instancias EC2; Estoy a favor de las configuraciones de Pure Storage FlashBlade. Hardware informático con recursos similares. Tanto en las soluciones de AWS como en Pure Storage, el depósito S3 lo proporcionan los respectivos proveedores.
				┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute│
				│  Node ││  Node ││  Node │
				│  with ││  with ││  with │
				│storage││storage││storage│
				└───────┘└───────┘└───────┘
				    🡡       🡡        🡡
				    └→⛁     └→⛁      └→⛁
				      🡡       🡡        🡡
				      └────────┼─────────┘
				               │
				          ───────────
				          \S3 Bucket/
				           ─────────
			* Cómo funciona Eon Mode:
				* Eon Mode obtiene su durabilidad del almacenamiento de objetos S3 con sus 911 de confiabilidad. Eso equivale, en promedio, a perder un objeto cada 10.000 años por cada 10 millones de objetos almacenados en S3.
				* Es S3 donde Eon Mode almacena sus copias duraderas de la base de datos y, por lo tanto, satisface la 'D' de cumplimiento "ACID".
				* Aunque es muy duradero, S3 normalmente no tiene buen rendimiento, ciertamente no, mientras que Vertica puede entregar datos rápidamente. Para obtener el rendimiento requerido por Vertica, proporcionamos almacenamiento adjunto localmente en cada una de los nodos informáticas. Este almacenamiento local almacena fragmentos de datos (llamados "shards") del depósito de S3 para que Vertica pueda acceder a estos datos más rápidamente que recuperándolos cada vez desde S3.
				* Compartir en Eon Mode es lo mismo que un segmento en modo Enterprise; el mismo concepto. La diferencia es que al expandir un clúster en modo Enterprise, la base de datos se vuelve a segmentar; mientras que en el modo el fragmento permanece igual y los nodos de computación adicionales aplican servicios adicionales a los fragmentos existentes. Esta capa de almacenamiento en caché se llama depósito.
				┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││Compute│
				│  Node ││  Node ││  Node ││  Node │  Se aprovisionan nodos con almacenamiento de instancias
				│  with ││  with ││  with ││  with │
				│storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡       🡡
				    🡣       🡣        🡣       🡣
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐ Cada nodo almacena en caché un fragmento de la base de datos de S3
				  │ ▲ │    │ ► │    │ ▼ │    │ ◄ │ en su almacenamiento local desde donde puede atender consultas con 
				  └───┘    └───┘    └───┘    └───┘ el increíble rendimiento que espera de Vertica.
				    🡡       🡡        🡡       🡡
				    └────────┴────┬───┴────────┘
				                  │
				             ───────────
				             \S3 Bucket/ ￩ Tus datos estan almacenados en S3 con 911 de confiabilidad.
				              \ ▲►▼◄  /
				               ───────
			* Carga de datos:
				* Dado que los datos de la base de datos residen en S3, una pregunta frecuente es si Vertica es un motor de consultas. Aunque Vertica se puede utilizar como motor de consultas accediendo a datos remotos a través de sus capacidades de tablas externas, Eon Mode no es en sí mismo un motor de consultas. Es una verdadera base de datos relacional y usted carga sus datos en su base de datos de la misma manera que lo haría si estuviera en modo Empresarial. Una vez que los datos se cargan en la base de datos, se almacenan exactamente como en modo Enterprise, en formato ROS, aunque en el depósito S3.
				┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││Compute│
				│  Node ││  Node ││  Node ││  Node │
				│  with ││  with ││  with ││  with │ ⇦===========┐
				│storage││storage││storage││storage│              |
				└───────┘└───────┘└───────┘└───────┘              |       Los datos se cargan en Vertica en Eon Mode
				    🡡       🡡        🡡       🡡                 |        de la misma manera que se cargan en Vertica
				    🡣       🡣        🡣       🡣                 |        en modo Enterprise.
				    ⛁       ⛁       ⛁       ⛁                 |
				    🡡       🡡        🡡       🡡            ────────────
				    └────────┴────┬───┴────────┘             \S3 Bucket/
				                  │                           \ ░ ▒ ▓ /
				            ─────────────                      ───────
				             \S3 Bucket/                Datos cargados desde
				              \ ▲►▼◄  /                 S3 o cualquier otro.
				               ───────
			* Dimensionado del depósito:
				* El depósito tiene una capacidad finita, tal como se definió cuando se construyeron los nodos del clúster. La imagen del centro en el depósito de S3 ilustra que es posible que no tenga todos los datos de un fragmento cargados actualmente en el depósito. Este es un punto importante, y uno por el cual desea duplicar el tamaño de su depósito para que coincida con su conjunto de datos de trabajo activo típico. Por ejemplo, si sus consultas típicas se refieren a los 30 días anteriores o a los últimos 30 minutos, debe dimensionar su depósito en consecuencia.
				┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││Compute│
				│  Node ││  Node ││  Node ││  Node │
				│  with ││  with ││  with ││  with │
				│storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡       🡡
				    🡣       🡣        🡣       🡣
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐
				  │ ▲ │    │ ► │    │ ▼ │    │ ◄ │ ⇦ Un nodo no puede almacenar todo el fragmento en su depósito.
				  └───┘    └───┘    └───┘    └───┘   Cuando una consulta no se puede satisfacer a partir de datos
				    🡡       🡡        🡡       🡡     que ya están en el Depósito, el nodo ejecutará la consulta
				    └────────┴────┬───┴────────┘     directamente en S3 y actualizará el depósito para uso futuro.
				                  │
				      ─────────────────────────
				      \       S3 Bucket       /
				       \       ┌──────┐      /
				        \      │ ○◌●◘ │     /
				         \     │ ┌────┤    /
				          \    │ │▲►▼◄│   /
				           \   └─┴────┘  /
				            ─────────────
			* La escala rápida:
				* La escalabilidad es de lo que se trata Eon Mode y el caso de uso principal por el que se creó.
				* Cuando desee escalar su base de datos, simplemente agregue más nodos. En este ejemplo, estamos duplicando el tamaño del clúster de los 4 nodos originales a 8 nodos.
				* Al agregar más nodos, ¿qué intentamos lograr? Lo que veremos es una ganancia de rendimiento en términos de concurrencia adicional. Esto no significa que sus consultas se ejecutarán más rápido, sino que puede ejecutar más consultas simultáneamente.
				* Si observa más de cerca este grupo ampliado, podrá ver que el nodo 5 de la izquierda está recogiendo el mismo fragmento de datos en el nodo 1; nodo6 lo mismo que nodo2, y así sucesivamente.
				* Entonces, cuando tenga una mayor demanda en su carga de trabajo, puede aumentar el tamaño de su clúster en consecuencia. Cuando la carga de trabajo vuelva a disminuir, la reducirá.
				┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││Compute││Compute││Compute││Compute││Compute│
				│  Node ││  Node ││  Node ││  Node ││  Node ││  Node ││  Node ││  Node │
				│  with ││  with ││  with ││  with ││  with ││  with ││  with ││  with │
				│storage││storage││storage││storage││storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘└───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡       🡡        🡡       🡡        🡡       🡡
				    🡣       🡣        🡣       🡣        🡣       🡣        🡣       🡣
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐     ┌───┐    ┌───┐    ┌───┐    ┌───┐
				  │ ▲ │    │ ► │    │ ▼ │    │ ◄ │     │ ▲ │    │ ► │    │ ▼ │    │ ◄ │
				  └───┘    └───┘    └───┘    └───┘     └───┘    └───┘    └───┘    └───┘
				    🡡       🡡        🡡       🡡        🡡       🡡        🡡       🡡
				    └────────┴────┬───┴────────┘         └────────┴────┬───┴────────┘
				                  ├────────────────────────────────────┘
				      ─────────────────────────                            🡡
				      \       S3 Bucket       /         Puede activar rápidamente nodos adicionales
				       \       ┌──────┐      /          para mantener el rendimiento cuando necesite ejecutar:
				        \      │ ○◌●◘ │     /           	* Más consultas simultáneas
				         \     │ ┌────┤    /            	* Más cargas simultáneas
				          \    │ │▲►▼◄│   /             Quizás a fin de mes o al final del día.
				           \   └─┴────┘  /
				            ─────────────
			* El uso de subgrupos para segregar las cargas de trabajo:
				* Debido a que Eon Mode separa la computación del almacenamiento, puede crear fácilmente subclústeres dentro de su clúster para aislar el trabajo.
				* Por ejemplo, es posible que desee dedicar un subclúster para respaldar un Dashboard; otro para informes mensuales; el 3ero para que los científicos de datos hagan su trabajo. Todos los subclústeres comparten los mismos datos del depósito S3, pero cada subclúster es independiente y tiene sus propios nodos y depósitos. Esto garantiza que el trabajo que se realiza en un subclúster no afecte el trabajo de otro.
				 Dashboard                    Monthly Reports              Data Science
				┌───────────────────────────┐┌───────────────────────────┐┌────────────────────────────────────┐
				│┌───────┐┌───────┐┌───────┐││┌───────┐┌───────┐┌───────┐││┌───────┐┌───────┐┌───────┐┌───────┐│
				││Compute││Compute││Compute││││Compute││Compute││Compute││││Compute││Compute││Compute││Compute││
				││  Node ││  Node ││  Node ││││  Node ││  Node ││  Node ││││  Node ││  Node ││  Node ││  Node ││
				││  with ││  with ││  with ││││  with ││  with ││  with ││││  with ││  with ││  with ││  with ││
				││storage││storage││storage││││storage││storage││storage││││storage││storage││storage││storage││
				│└───────┘└───────┘└───────┘││└───────┘└───────┘└───────┘││└───────┘└───────┘└───────┘└───────┘│
				│    🡡       🡡        🡡   ││    🡡       🡡        🡡   ││    🡡       🡡        🡡       🡡    │
				│    🡣       🡣        🡣   ││    🡣       🡣        🡣   ││    🡣       🡣        🡣       🡣    │
				│  ┌───┐    ┌───┐    ┌───┐  ││  ┌───┐    ┌───┐    ┌───┐  ││  ┌───┐    ┌───┐    ┌───┐    ┌───┐  │
				│  │ ▲ │    │ ► │    │ ▼ │  ││  │ ▲ │    │ ► │    │ ▼ │  ││  │ ▲ │    │ ► │    │ ▼ │    │ ◄ │  │
				│  └───┘    └───┘    └───┘  ││  └───┘    └───┘    └───┘  ││  └───┘    └───┘    └───┘    └───┘  │
				│    🡡       🡡        🡡   ││    🡡       🡡        🡡   ││    🡡       🡡        🡡       🡡    │
				└────│────────│────────│────┘└────│────────│────────│────┘└────│────────│─────────│───────│────┘
				     └────────┴────┬───┘          └────────┴────┬───┘          └────────┴────┬────┴───────┘
				                   └────────────────────────────┼────────────────────────────┘
				                                    ─────────────────────────
				                                    \       S3 Bucket       /
				                                     \       ┌──────┐      /
				                                      \      │ ○◌●◘ │     /
				                                       \     │ ┌────┤    /
				                                        \    │ │▲►▼◄│   /
				                                         \   └─┴────┘  /
				                                          ─────────────
			* La alta disponibilidad:
				* Otra caracteristica de Eon Mode es la alta disponibilidad y la rápida recuperación que se puede lograr.
				* En Eon Mode, cada nodo no solo se suscribe a uno o más fragmentos primarios, sino que también se suscribe a fragmentos secundarios. Si el nodo falla, puede intentar reiniciarlo. Si no se reinicia, simplemente finalícelo, abra un nuevo nodo y únalo al clúster. El nuevo nodo tomará el relevo rápidamente.
				* Mientras el nodo está inactivo, otro nodo en el clúster que cubre el fragmento asume la responsabilidad hasta que se restablece el modo perdido. Esto es similar a K-safety en el modo Vertica Enterprise.

				⇨⇨⇨⇨⇨⇨⇨⇨⇨ De esto ⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨ A esto ⇨⇨⇨⇨⇨⇨⇨⇨⇨
				┌───────┐┌───────┐┌───────┐┌───────┐                   ┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││  EC2  │                   │Compute││Compute││Compute││  EC2  │
				│  Node ││  Node ││  Node ││       │                   │  Node ││  Node ││  Node ││       │
				│  with ││  with ││  with ││  with │                   │  with ││  with ││  with ││  with │
				│storage││storage││storage││storage│                   │storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘                   └───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡       🡡                          🡡       🡡        🡡       🡡
				    🡣       🡣        🡣       🡣                          🡣       🡣        🡣       🡣
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐  Cada nodo es         ┌───┐    ┌───┐    ┌───┐    ┌───┐
				  │ A │    │ B │    │ C │    │ D │  responsable de ⇨ ⇨  │AD │    │BA │    │CB │    │DC │
				  └───┘    └───┘    └───┘    └───┘  múltiples fragmentos.└───┘    └───┘    └───┘    └───┘
				    🡡       🡡        🡡       🡡                          🡡       🡡        🡡       🡡
				    └────────┴────┬───┴────────┘                           └────────┴────┬───┴────────┘
				                  │                                                      │
				      ─────────────────────────                              ─────────────────────────
				      \       S3 Bucket       /                              \       S3 Bucket       /
				       \       ┌──────┐      /                                \       ┌──────┐      /
				        \      │ ○◌●◘ │     /                                  \      │ ○◌●◘ │     /
				         \     │ ┌────┤    /                                    \     │ ┌────┤    /
				          \    │ │ABCD│   /                                      \    │ │ABCD│   /
				           \   └─┴────┘  /                                        \   └─┴────┘  /
				            ─────────────                                          ─────────────

				⇨⇨⇨⇨⇨⇨ Luego del anterior ⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨ A esto ⇨⇨⇨⇨⇨⇨⇨⇨⇨
				┌───────┐┌───────┐┌───────┐┌───────┐                    ┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││  EC2  │                    │Compute││Compute││Compute││  EC2  │
				│  Node ││  Node ││  Node ││       │                    │  Node ││  Node ││  Node ││       │
				│  with ││  with ││  with ││  with │                    │  with ││  with ││  with ││  with │
				│storage││storage││storage││storage│                    │storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘                    └───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡       🡡                           🡡       🡡        🡡       ❌
				    🡣       🡣        🡣       🡣                           🡣       🡣        🡣       ❌
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐ Cuando un nodo deja    ┌───┐    ┌───┐    ┌───┐    ┌───┐
				  │AD │    │BA │    │CB │    │DC │ de funcionar, ⇨ ⇨ ⇨ ⇨│AD │    │BA │    │CB │    │DC │
				  └───┘    └───┘    └───┘    └───┘ las consultas continúan└───┘    └───┘    └───┘    └───┘
				    🡡       🡡        🡡       🡡   siendo satisfechas por  🡡       🡡        🡡       ❌
				    └────────┴────┬───┴────────┘   nodos alternativos       └────────┴────┬───┘
				                  │                responsables del                       │
				      ─────────────────────────    fragmento que se perdió.   ─────────────────────────
				      \       S3 Bucket       /                               \       S3 Bucket       /
				       \       ┌──────┐      /                                 \       ┌──────┐      /
				        \      │ ○◌●◘ │     /                                   \      │ ○◌●◘ │     /
				         \     │ ┌────┤    /                                     \     │ ┌────┤    /
				          \    │ │ABCD│   /                                       \    │ │ABCD│   /
				           \   └─┴────┘  /                                         \   └─┴────┘  /
				            ─────────────                                           ─────────────

				⇨⇨⇨⇨⇨⇨ Luego del anterior ⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨ A esto ⇨⇨⇨⇨⇨⇨⇨⇨⇨
				┌───────┐┌───────┐┌───────┐┌───────┐                    ┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││  EC2  │                    │Compute││Compute││Compute││Compute││  EC2  │
				│  Node ││  Node ││  Node ││       │                    │  Node ││  Node ││  Node ││  Node ││       │
				│  with ││  with ││  with ││  with │                    │  with ││  with ││  with ││  with ││  with │
				│storage││storage││storage││storage│                    │storage││storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘                    └───────┘└───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡      ❌                           🡡       🡡        🡡       🡡       ❌
				    🡣       🡣        🡣      ❌                           🡣       🡣        🡣       🡣       ❌
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐ Un nodo fallido se     ┌───┐    ┌───┐    ┌───┐    ┌───┐    ┌───┐
				  │AD │    │BA │    │CB │    │DC │ puede restaurar o  ⇨ ⇨│AD │    │BA │    │CB │    │   │    │DC │
				  └───┘    └───┘    └───┘    └───┘ reemplazar rápidamente └───┘    └───┘    └───┘    └───┘    └───┘
				    🡡       🡡        🡡      ❌   con un nodo nuevo.      🡡       🡡        🡡       🡡       ❌
				    └────────┴────┬───┘                                     └────────┴────┬───┴────────┘
				                  │                                                       │
				      ─────────────────────────                               ─────────────────────────
				      \       S3 Bucket       /                               \       S3 Bucket       /
				       \       ┌──────┐      /                                 \       ┌──────┐      /
				        \      │ ○◌●◘ │     /                                   \      │ ○◌●◘ │     /
				         \     │ ┌────┤    /                                     \     │ ┌────┤    /
				          \    │ │ABCD│   /                                       \    │ │ABCD│   /
				           \   └─┴────┘  /                                         \   └─┴────┘  /
				            ─────────────                                           ─────────────

				⇨⇨⇨⇨⇨⇨ Luego del anterior ⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨⇨ A esto ⇨⇨⇨⇨⇨⇨⇨⇨⇨
				┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐     ┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐
				│Compute││Compute││Compute││Compute││  EC2  │     │Compute││Compute││Compute││Compute││  EC2  │
				│  Node ││  Node ││  Node ││  Node ││       │     │  Node ││  Node ││  Node ││  Node ││       │
				│  with ││  with ││  with ││  with ││  with │     │  with ││  with ││  with ││  with ││  with │
				│storage││storage││storage││storage││storage│     │storage││storage││storage││storage││storage│
				└───────┘└───────┘└───────┘└───────┘└───────┘     └───────┘└───────┘└───────┘└───────┘└───────┘
				    🡡       🡡        🡡       🡡       ❌           🡡       🡡        🡡       🡡       ❌
				    🡣       🡣        🡣       🡣       ❌           🡣       🡣        🡣       🡣       ❌
				  ┌───┐    ┌───┐    ┌───┐    ┌───┐    ┌───┐        ┌───┐    ┌───┐    ┌───┐    ┌───┐    ┌───┐
				  │AD │    │BA │    │CB │    │   │    │DC │        │AD │    │BA │    │CB │    │DC │<=┐ │DC │
				  └───┘    └───┘    └───┘    └───┘    └───┘        └───┘    └───┘    └───┘    └───┘  │ └───┘
				   🡡       🡡        🡡        🡡       ❌           🡡       🡡        🡡       🡡   ││  ❌
				   └────────┴─────┬──┴─────────┘                     └────────┴────┬───┴────────┘    │
				                  │                                                │                 └El nuevo nodo se inicia rápidamente 
				      ─────────────────────────                        ─────────────────────────      llenando su caché desde nodos pares
				      \       S3 Bucket       /                        \       S3 Bucket       /      o directamente desde S3.
				       \       ┌──────┐      /                          \       ┌──────┐      /       Esto es similar a K-safety en el modo
				        \      │ ○◌●◘ │     /                            \      │ ○◌●◘ │     /        Vertica Enterprise.
				         \     │ ┌────┤    /                              \     │ ┌────┤    /
				          \    │ │ABCD│   /                                \    │ │ABCD│   /
				           \   └─┴────┘  /                                  \   └─┴────┘  /
				            ─────────────                                    ─────────────
			* La hibernación (por ejemplo, para reducir costos):
				* Si puede escalar su clúster hacia arriba y hacia abajo para cumplir con las demandas esperadas, una pregunta que a menudo se hace es si puede hibernar su base de datos; es decir, reducir a cero nodos. La respuesta es absolutamente.
				* Si no necesita su base de datos por un período de tiempo, ¿por qué continuar pagando el costo de ejecutar nodos de cómputo?, ¿o tal vez le gustaría usar sus nodos de cómputo para poner alguna otra carga de trabajo cuando no sea necesario para atender las consultas de Vertica?, sus datos son de seguridad almacenados en S3, así que simplemente apague todo el clúster.
				* Luego, cuando necesite acceder a la base de datos nuevamente, simplemente encienda un nuevo clúster de nodos de cómputo con la misma definición que el que cerró y reviva la base de datos.
				* Cuando revive una base de datos en Eon Mode, el único requisito es que el número de nodos en el clúster sea el mismo. El tipo de instancias puede ser diferente, lo que le permite revivir la base de datos en un clúster con más o menos recursos. El tamaño del depósito puede ser diferente, lo que permite que se cultive o reduzca. Y puede revivir la base de datos en una versión más nueva de Vertica que proporcione una ruta simple para aplicar una actualización de Vertica.
			* La replicación:
		￩→
		* Desnormalización Controlada:
			* A diferencia de la normalización extensiva en las bases de datos relacionales, Vertica a menudo favorece la desnormalización controlada para optimizar el rendimiento analítico. Esto puede incluir redundancias controladas en la estructura de la base de datos para mejorar la eficiencia de las consultas.
		* Alto Rendimiento:
			* Utiliza técnicas como el procesamiento en paralelo y la compresión de datos para proporcionar un alto rendimiento en consultas analíticas complejas.
		* Escalabilidad Horizontal:
			* Permite escalar horizontalmente agregando nodos al clúster, lo que facilita la expansión para manejar grandes volúmenes de datos y cargas de trabajo intensivas.
		* Arquitectura MPP (Procesamiento en Paralelo Masivo):
			* Distribuye la carga de trabajo entre múltiples nodos, permitiendo el procesamiento en paralelo de consultas y operaciones.
			* Como los datos se almacenan en columnas y se pueden leer de forma independiente, es más sencillo dividir la carga de trabajo entre múltiples procesadores o nodos, mejorando así la velocidad de procesamiento.
		* Carga de Datos Rápida:
			* Ofrece métodos eficientes de carga de datos, como la instrucción COPY, para la carga masiva y rápida de grandes conjuntos de datos.
		* Herramientas Integradas de Machine Learning:
			* Proporciona herramientas integradas para realizar análisis avanzado y machine learning, facilitando el trabajo con datos complejos.
		* Integración con Herramientas de BI:
			* Compatible con varias herramientas de Business Intelligence (BI), lo que facilita la creación de informes y dashboards.
		* Seguridad Avanzada:
			* Ofrece características de seguridad avanzada, incluyendo autenticación, autorización y cifrado de datos.
		* Backup y Recuperación Eficientes:
			* Proporciona mecanismos eficientes para realizar copias de seguridad y recuperación de datos, garantizando la integridad y disponibilidad de la información.
		* Soporte para Datos No Estructurados:
			* Puede manejar datos no estructurados, lo que lo hace versátil para una variedad de tipos de datos.
		* Adaptabilidad a Grandes Conjuntos de Datos:
			* Diseñado para rendir bien con grandes conjuntos de datos, especialmente en entornos analíticos donde las consultas pueden ser complejas y abarcar grandes volúmenes de información.
	* Ventajas de utilizar Vertica en comparación con otras bases de datos.
		* ¿Por qué el modelo de columnar es más rápido que el de filas?
			* El modelo de almacenamiento columnar es más rápido que el modelo de almacenamiento por filas en ciertos escenarios, especialmente en el contexto de operaciones analíticas y consultas que implican agregaciones y selecciones de columnas específicas. Aquí hay algunas razones clave por las que el modelo columnar puede ser más eficiente en determinadas situaciones:
				1. Lecturas Selectivas:
					* En operaciones analíticas, es común realizar consultas que seleccionan un subconjunto de columnas en lugar de todas las columnas de una fila. En un modelo columnar, los datos de una columna se almacenan juntos, lo que permite lecturas más eficientes de las columnas específicas necesarias para una consulta.
				2. Compresión Columnar:
					* La compresión de datos es más efectiva en un modelo columnar. Dado que los datos similares suelen agruparse en columnas, se pueden aplicar técnicas de compresión específicas a cada columna, reduciendo el espacio de almacenamiento y mejorando la eficiencia en la transmisión de datos desde el almacenamiento a la memoria.
				3. Proyecciones y Optimización:
					* En un sistema como Vertica, se pueden crear proyecciones específicas para consultas comunes. Estas proyecciones organizan físicamente los datos para mejorar el rendimiento de consultas específicas. Como las proyecciones están orientadas a columnas, el modelo columnar facilita esta optimización.
				4. Operaciones Agregadas Eficientes:
					* Las operaciones analíticas a menudo implican agregaciones, como sumas y promedios, sobre conjuntos de datos. En un modelo columnar, las operaciones de agregación se pueden realizar más eficientemente, ya que los datos están organizados de manera que las operaciones se aplican a columnas completas en lugar de a filas completas.
				5. Menos E/S en Disco:
					* Al seleccionar solo las columnas necesarias para una consulta, se reduce la cantidad de datos que deben leerse desde el disco. Esto minimiza las operaciones de E/S (entrada/salida), lo que puede ser un factor limitante en el rendimiento.
				Es importante destacar que la eficiencia del modelo columnar depende del tipo de consultas y operaciones que se realicen. En entornos analíticos, donde las consultas tienden a ser complejas y selectivas, el modelo columnar puede ofrecer un rendimiento significativamente mejor. Sin embargo, en casos de acceso secuencial o actualizaciones frecuentes, el modelo de filas puede ser más apropiado. La elección entre modelos dependerá de las necesidades específicas del caso de uso.

2. Arquitectura de Vertica
	* Componentes principales: Nodos, Clúster, Slices:
		* La arquitectura de Vertica se basa en un diseño distribuido y en paralelo para proporcionar un alto rendimiento en consultas analíticas en grandes conjuntos de datos. Aquí están los componentes principales de la arquitectura de Vertica:
			1. Nodos:
				* Un nodo en Vertica es una instancia de software que se ejecuta en una máquina física o virtual. Los nodos pueden tener roles diferentes en la arquitectura, como ser nodos de almacenamiento o nodos de consulta.
			2. Clúster:
				* Un clúster de Vertica está formado por varios nodos que trabajan juntos para proporcionar capacidad de almacenamiento y capacidad de procesamiento en paralelo. Los nodos en un clúster pueden escalarse horizontalmente para manejar mayores cargas de trabajo y volúmenes de datos.
			3. Slices:
				* Los slices son unidades fundamentales de procesamiento en Vertica y están asociados con nodos de almacenamiento. Cada nodo de almacenamiento se divide en slices, y cada slice es responsable de una porción específica de los datos almacenados. El procesamiento paralelo se logra distribuyendo consultas entre los slices.
			4. Control de Distribución:
				* En Vertica, se puede especificar cómo los datos se distribuyen entre los nodos y los slices mediante la elección de una columna de control de distribución. Esto asegura que los datos relevantes para una consulta estén disponibles localmente en los nodos de almacenamiento adecuados.
			5. Vertica Catalog:
				* El catálogo de Vertica almacena metadatos sobre la estructura de la base de datos, esquemas, tablas, usuarios, proyecciones y otros objetos. Contiene información crucial para la administración de la base de datos y se comparte entre todos los nodos del clúster.
			6. Herramientas de Administración:
				* Vertica proporciona herramientas de administración para monitorizar y gestionar el clúster. Estas herramientas permiten realizar tareas como la monitorización del rendimiento, la configuración de recursos y la gestión de nodos.
			En resumen, la arquitectura de Vertica se centra en la distribución y el procesamiento en paralelo para lograr un alto rendimiento en entornos analíticos. La capacidad de escalabilidad horizontal mediante la adición de nodos al clúster permite manejar grandes volúmenes de datos y cargas de trabajo intensivas de manera eficiente.
	* Modelo de datos columnar y su impacto en el rendimiento:
		* Impacto en el Rendimiento:
			1. Mayor Rendimiento en Consultas Analíticas:
				* El acceso eficiente a columnas, la compresión de datos y las proyecciones optimizadas contribuyen a un rendimiento más rápido en consultas analíticas, especialmente aquellas que involucran grandes volúmenes de datos.
			2. Escalabilidad Horizontal:
				* La arquitectura columnar facilita la escalabilidad horizontal mediante la adición de nodos al clúster. Esto permite manejar grandes cargas de trabajo y volúmenes de datos a medida que la demanda crece.
			3. Mejora en el Tiempo de Respuesta:
				* Debido a la organización eficiente de los datos en columnas, Vertica puede proporcionar tiempos de respuesta más rápidos en comparación con los modelos de datos basados en filas en entornos analíticos.
	* Tipos de archivos que maneja Vertica:
		Vertica maneja varios tipos de archivos en su funcionamiento, ya que es un sistema de gestión de bases de datos que gestiona datos en un entorno distribuido y columnar. Aquí hay algunos de los tipos de archivos que son relevantes para Vertica:
			1. Archivos de Datos:
				* Los archivos de datos contienen los datos almacenados en Vertica. Estos archivos están organizados de manera columnar para facilitar el acceso eficiente a los datos durante las consultas. El formato de almacenamiento y la compresión utilizados por Vertica son características importantes de estos archivos.
			2. Archivos de Proyección:
				* Vertica organiza los datos en proyecciones, que son vistas virtuales de los datos físicamente almacenados en las tablas. Los archivos de proyección son parte integral de la estructura de almacenamiento de Vertica y contribuyen a la optimización del rendimiento de las consultas.
			3. Archivos de Catálogo:
				* Los archivos de catálogo almacenan información sobre la estructura de la base de datos, esquemas, tablas, índices, usuarios y otros metadatos necesarios para la administración de la base de datos.
			4. Archivos de Registro:
				* Vertica utiliza archivos de registro para mantener un registro de las transacciones y cambios en la base de datos. Estos archivos son importantes para la recuperación en caso de fallos y para garantizar la consistencia de los datos.
			5. Archivos de Configuración:
				* Estos archivos contienen la configuración y ajustes específicos del sistema para Vertica. Incluyen parámetros de configuración que afectan el rendimiento, la seguridad y otros aspectos del sistema.
			6. Archivos de Respaldo (Backup):
				* Cuando se realiza una copia de seguridad de la base de datos, Vertica genera archivos de respaldo que contienen una copia de los datos en ese momento. Estos archivos se utilizan para restaurar la base de datos en caso de pérdida de datos o fallos.
			Estos son solo algunos ejemplos de los tipos de archivos que Vertica maneja internamente. La gestión eficiente de estos archivos es crucial para garantizar el rendimiento y la confiabilidad del sistema.

3. Instalación y Configuración
	* Requisitos del sistema.
	* Proceso de instalación y configuración básica.

4. Creación de Base de Datos y Tablas
	* Crear una base de datos:
		* En Vertica, la creación de una base de datos implica el uso de comandos SQL. Aquí tienes un ejemplo básico de cómo crear una base de datos en Vertica:
			-- Crear una base de datos en Vertica
				CREATE DATABASE nombre_de_tu_base_de_datos;
				Sustituye "nombre_de_tu_base_de_datos" con el nombre que deseas darle a tu base de datos.
			Además, ten en cuenta que para ejecutar comandos SQL en Vertica, necesitas utilizar un cliente SQL compatible con Vertica, como "vsql" (Vertica SQL). Puedes acceder a este cliente a través de la línea de comandos o mediante herramientas de administración de bases de datos compatibles con Vertica.
			Por ejemplo, para conectarte a tu base de datos recién creada usando "vsql", puedes usar el siguiente comando:
				vsql -h nombre_del_host -U nombre_del_usuario -d nombre_de_tu_base_de_datos
				Sustituye "nombre_del_host", "nombre_del_usuario" y "nombre_de_tu_base_de_datos" con los valores apropiados.
			Después de haber creado la base de datos, puedes proceder a crear tablas dentro de ella.
	* Diseño y creación de tablas:
		-- Crear una tabla en Vertica
			CREATE TABLE nombre_de_tu_tabla (
				columna1 TIPO_DE_DATO,
				columna2 TIPO_DE_DATO,
				...,
				CONSTRAINT nombre_de_tu_constraint PRIMARY KEY (columna1)
			);
			Sustituye "nombre_de_tu_tabla", "columna1", "columna2", "TIPO_DE_DATO" y "nombre_de_tu_constraint" con los nombres y tipos de datos apropiados para tu tabla.
			Recuerda que este es solo un ejemplo básico, y puedes personalizar la estructura de la tabla según tus necesidades específicas. Ten en cuenta que Vertica admite diversos tipos de datos, incluyendo tipos de datos específicos de Vertica, como el tipo de datos "TIMESTAMP".
	Una vez que hayas creado la base de datos y las tablas, puedes comenzar a cargar datos, realizar consultas y realizar otras operaciones según tus requisitos específicos.

5. Carga de Datos
	* Métodos de carga de datos: COPY, INSERT, etc.:
		* Vertica ofrece varios métodos para cargar datos en sus tablas, y los dos métodos principales son "COPY" e "INSERT". Aquí se explica cada uno de ellos:
			1. Método "COPY":
				* El método "COPY" es el enfoque preferido para cargar grandes volúmenes de datos de manera eficiente en Vertica. Utiliza archivos de datos externos para realizar la carga en paralelo.
				* Ejemplo de uso del comando "COPY":
					-- Ejemplo de COPY para cargar datos desde un archivo CSV
					COPY nombre_de_tu_tabla FROM '/ruta/del/archivo/data.csv' DELIMITER ',' DIRECT;
					* "nombre_de_tu_tabla": Reemplaza esto con el nombre de la tabla en la que deseas cargar los datos.
					* "/ruta/del/archivo/data.csv": Especifica la ruta del archivo de datos externo que contiene los datos a cargar.
					* "DELIMITER ','": Indica el delimitador utilizado en el archivo, en este caso, una coma (','). Ajusta según el delimitador de tu archivo.
					* "DIRECT": Indica que la carga debe realizarse directamente sin almacenamiento temporal, lo que mejora la eficiencia.
			2. Método "INSERT":
				* El método "INSERT" se utiliza para insertar datos en Vertica de manera más tradicional, fila por fila. Este método puede ser adecuado para cargas más pequeñas o cuando los datos provienen de una consulta o procedimiento almacenado.
				* Ejemplo de uso del comando "INSERT":
					-- Ejemplo de INSERT para cargar datos en una tabla
					INSERT INTO nombre_de_tu_tabla (columna1, columna2, ...) VALUES (valor1, valor2, ...);
					* "nombre_de_tu_tabla": Reemplaza esto con el nombre de la tabla en la que deseas cargar los datos.
					* "columna1, columna2, ...": Enumera las columnas en las que deseas insertar datos.
					* "valor1, valor2, ...": Proporciona los valores correspondientes a las columnas enumeradas.
			* Consejo:
				* Si tienes una cantidad significativa de datos para cargar, se recomienda utilizar "COPY" debido a su capacidad para realizar operaciones en paralelo y su eficiencia en la carga masiva de datos.
			Estos son los métodos principales para cargar datos en Vertica. Además de estos, Vertica también proporciona otras opciones y configuraciones específicas para la carga de datos que pueden adaptarse a tus necesidades particulares.
		* Además de los métodos "COPY" e "INSERT", Vertica proporciona algunas otras opciones y métodos para cargar datos:
			1. External Tables:
				* Vertica permite la creación de tablas externas que apuntan directamente a archivos de datos en el sistema de archivos sin realizar una carga física en la base de datos. Puedes consultar estos archivos externos como si fueran tablas regulares.
					-- Ejemplo de creación de una External Table
					CREATE EXTERNAL TABLE nombre_de_tu_tabla_external (
						columna1 TIPO_DE_DATO,
						columna2 TIPO_DE_DATO
					)
					LOCATION '/ruta/del/archivo/data.csv' 
					FORMAT 'CSV' 
					DELIMITER ',';
			2. "vsql" y "\COPY":
				* El cliente de línea de comandos "vsql" incluye una opción "\COPY" que es similar al comando "COPY" de SQL, pero ejecutado desde el cliente de línea de comandos. Puedes usar esto para cargar datos desde archivos locales en tu máquina a una tabla de Vertica:
					\COPY nombre_de_tu_tabla FROM '/ruta/del/archivo/data.csv' DELIMITER ',';
			3. "INSERT" desde una Consulta:
				* Puedes utilizar una instrucción "INSERT" junto con una consulta para cargar datos desde otra tabla o resultado de una consulta:
					INSERT INTO nombre_de_tu_tabla (columna1, columna2, ...)
					SELECT columna1, columna2, ...
					FROM otra_tabla
					WHERE condición;
			4. "vsql -c":
				* Puedes utilizar el cliente "vsql" con la opción "-c" para ejecutar comandos SQL directamente desde la línea de comandos. Esto puede ser útil para realizar operaciones de carga en scripts:
					vsql -h nombre_del_host -U nombre_del_usuario -d nombre_de_tu_base_de_datos -c "COPY nombre_de_tu_tabla FROM '/ruta/del/archivo/data.csv' DELIMITER ',' DIRECT;"
			Estas son solo algunas opciones adicionales que pueden ser útiles dependiendo de tu situación específica. La elección del método dependerá de factores como la cantidad de datos, la fuente de los datos y tus preferencias operativas.
	* Estrategias de carga masiva y eficiencia:
		Cuando se trata de estrategias de carga masiva y eficiencia en Vertica, es crucial considerar la naturaleza de los datos, el volumen de los mismos y la frecuencia de las operaciones de carga. Aquí hay algunas estrategias y prácticas recomendadas para la carga masiva de datos eficiente en Vertica:
			1. Usar "COPY" para Cargas Masivas:
				* La instrucción "COPY" es la opción preferida para cargar grandes volúmenes de datos en Vertica. Utiliza archivos de datos externos para realizar la carga en paralelo, lo que mejora significativamente la eficiencia.
					COPY nombre_de_tu_tabla FROM '/ruta/del/archivo/data.csv' DELIMITER ',' DIRECT;
				* Ajusta las opciones según tus necesidades, como el delimitador, la ubicación del archivo y la configuración de carga.
			2. Considerar Proyecciones:
				* Antes de cargar datos, asegúrate de tener proyecciones óptimas para las consultas comunes. Puedes crear proyecciones diseñadas específicamente para mejorar el rendimiento de las consultas después de cargar los datos.
					-- Crear proyección
					CREATE PROJECTION nombre_de_tu_proyeccion AS SELECT * FROM nombre_de_tu_tabla;
			3. Desactivar Índices y Restricciones:
				* Temporalmente desactiva índices y restricciones antes de la carga masiva y actívalos nuevamente después. Esto puede mejorar significativamente el rendimiento durante la carga.
					-- Desactivar índices y restricciones
					ALTER TABLE nombre_de_tu_tabla DISABLE INDEX, NO FORCE CONSTRAINTS;
			4. Usar Carga en Paralelo:
				* Aprovecha la capacidad de carga en paralelo de Vertica. Si tienes un clúster con varios nodos, la carga se distribuirá y procesará en paralelo, mejorando la eficiencia.
			5. Carga en Modo Directo:
				* Utiliza la opción "DIRECT" con "COPY" para realizar la carga directa sin almacenamiento temporal. Esto mejora la eficiencia al evitar la creación de archivos temporales.
					COPY nombre_de_tu_tabla FROM '/ruta/del/archivo/data.csv' DELIMITER ',' DIRECT;
			6. Monitorear y Ajustar Configuraciones:
				* Monitorea el rendimiento durante la carga y ajusta las configuraciones según sea necesario. Esto puede incluir ajustar parámetros como "MaxClientSessions", "MaxMemorySize", entre otros.
			7. Planificar Recargas Incrementales:
				* Si es posible, planifica recargas incrementales en lugar de recargas completas. Esto implica cargar solo los datos nuevos o actualizados, lo que puede ser más eficiente.
			8. Utilizar Herramientas de Carga Especializadas:
				* Considera el uso de herramientas especializadas o integraciones que faciliten la carga masiva de datos en Vertica. Algunas herramientas ETL (Extract, Transform, Load) pueden ofrecer características específicas para la carga eficiente en Vertica.
			Estas estrategias y prácticas recomendadas son generalizadas, y la elección específica dependerá de la naturaleza de tu carga de trabajo y de los requisitos de tu aplicación. Realiza pruebas y ajustes para optimizar la carga de datos según tus necesidades específicas.

Nivel Intermedio:

6. Optimización de Consultas
	* Uso de índices y proyecciones.
		En Vertica, la optimización de consultas es esencial para garantizar un rendimiento eficiente en la recuperación y análisis de datos. El uso de índices y proyecciones son dos estrategias clave que Vertica emplea para mejorar el rendimiento de las consultas.
		1. Índices en Vertica:
			* Estructuras de Índices:
				Vertica utiliza estructuras de índices para acelerar la búsqueda y recuperación de datos. Sin embargo, a diferencia de algunos sistemas de bases de datos tradicionales, Vertica utiliza índices principalmente para optimizar la velocidad de carga de datos y no tanto para mejorar la velocidad de las consultas de selección.
			* Indices de Sincronización:
				En lugar de índices tradicionales, Vertica utiliza índices de sincronización que se crean automáticamente para mantener la integridad y consistencia de los datos durante las operaciones de carga.
				Por ejemplo, cuando realizas una operación de carga, Vertica maneja la creación y mantenimiento de estos índices para garantizar la coherencia de los datos.
				Ejemplo:
					Supongamos que tienes una tabla grande en Vertica que almacena datos de transacciones financieras. Puedes utilizar índices de sincronización para acelerar la carga de datos, asegurando la consistencia y la integridad durante las operaciones de inserción.
					-- Crear una tabla con índices de sincronización
					CREATE TABLE transacciones (
						id INT PRIMARY KEY,
						fecha TIMESTAMP,
						monto DECIMAL(10,2),
						-- Otros campos...
					) ORDER BY fecha;
					En Vertica, la terminología puede variar en comparación con otros sistemas de bases de datos. En lugar de índices de sincronización, Vertica utiliza estructuras internas como "Tuple Mover" para gestionar la carga y la eficiencia de las consultas.

					En Vertica, las "Super Proyecciones" y el "Tuple Mover" trabajan de manera conjunta para mantener la eficiencia en la carga y mejorar el rendimiento de las consultas. Los "Super Projections" son proyecciones automáticas creadas por Vertica para optimizar consultas, y el "Tuple Mover" es responsable de la transferencia eficiente de datos durante la carga.

					Entonces, en el ejemplo proporcionado, Vertica gestionaría internamente el proceso de carga y mantenimiento de la consistencia sin necesidad de especificar índices de sincronización manualmente. La optimización de la carga y el rendimiento de las consultas se logra mediante la combinación de proyecciones y procesos internos de Vertica.
		2. Proyecciones en Vertica:
			* Definición de Proyecciones:
				Las proyecciones son una característica clave de Vertica que se utiliza para optimizar las consultas analíticas. Una proyección es una vista física precalculada y almacenada de los datos que está optimizada para consultas específicas.
				Ejemplo:
					Imagina que tienes una tabla de ventas y deseas mejorar el rendimiento de las consultas de análisis. Puedes crear una proyección que esté optimizada para consultas que involucren fechas y montos de venta.
					-- Crear una proyección para optimizar consultas analíticas
					CREATE PROJECTION sales_projection AS
					SELECT fecha, SUM(monto) AS monto_total
					FROM ventas
					GROUP BY fecha;
			* Columnar Storage:
				Vertica almacena datos de manera columnar, y las proyecciones están diseñadas para aprovechar este almacenamiento. Cada proyección se crea teniendo en cuenta patrones de acceso a los datos, lo que mejora significativamente el rendimiento de las consultas.
				En el ejemplo anterior, la proyección almacena la información de la fecha y el monto por separado, lo que facilita la lectura eficiente de estos datos.
			* Proyecciones de Agregación:
				Vertica puede crear proyecciones que incluyan datos agregados para reducir la necesidad de realizar cálculos durante la ejecución de la consulta.
				Ejemplo:
					Si necesitas calcular el total de ventas por producto, puedes tener una proyección que almacene estos totales precalculados.
					-- Crear una proyección de agregación para mejorar consultas de total de ventas por producto
					CREATE PROJECTION product_sales_total AS
					SELECT producto_id, SUM(monto) AS total_ventas
					FROM ventas
					GROUP BY producto_id;
		Estrategias Adicionales en Vertica:
			* Optimización del Plan de Ejecución:
				Vertica realiza una optimización dinámica del plan de ejecución para adaptarse a los cambios en la distribución de datos y las condiciones del sistema.
			* Estadísticas y Perfiles de Consulta:
				Utiliza estadísticas detalladas y perfiles de consulta para analizar el rendimiento de las consultas y ajustar dinámicamente su plan de ejecución.
			* Uso Eficiente de Recursos:
				Gestiona eficientemente los recursos, incluidos los nodos, clústeres y slices, para distribuir la carga de manera equitativa y maximizar el rendimiento.
		En resumen, Vertica emplea varias estrategias, incluyendo índices de sincronización, proyecciones y optimización dinámica del plan de ejecución, para garantizar un rendimiento eficiente en la recuperación y análisis de datos en entornos analíticos.
	* Estrategias para escribir consultas eficientes.
		Optimizar consultas en Vertica implica escribir consultas de manera eficiente para aprovechar al máximo la arquitectura de la base de datos y mejorar el rendimiento. Aquí hay algunas estrategias para escribir consultas eficientes en Vertica:
			1. Seleccionar Columnas Específicas:
				* Evitar el Uso de "SELECT *":
					Selecciona solo las columnas necesarias en lugar de usar "SELECT *". Esto reduce la cantidad de datos transferidos y mejora la eficiencia.
					-- Evitar
					SELECT * FROM tabla;
					-- Preferir
					SELECT columna1, columna2 FROM tabla;
			2. Filtrar Datos Eficientemente:
				* Utilizar Cláusulas "WHERE":
					Filtra los datos en la fase de escaneo utilizando cláusulas "WHERE" para reducir la cantidad de registros procesados.
					SELECT columna1, columna2 FROM tabla WHERE columna3 = 'valor';
			3. Utilizar Índices:
				* Aprovechar Índices de Búsqueda:
					Utiliza índices cuando sea posible para acelerar la búsqueda de datos. Vertica puede crear índices de búsqueda para mejorar el rendimiento.
					CREATE INDEX idx_columna ON tabla(columna);
			4. Agregar Columnas de Forma Eficiente:
				* Utilizar Agregaciones de Columnas:
					Utiliza funciones de agregación para calcular sumas, promedios, y otras operaciones directamente en la base de datos, reduciendo la necesidad de procesamiento adicional en la aplicación.
					SELECT SUM(columna) FROM tabla;
			5. Limitar el Uso de "JOIN":
				* Ser Consciente de las Operaciones JOIN:
					Limita el uso de operaciones "JOIN" cuando sea posible y utiliza otras estrategias como proyecciones optimizadas.
					SELECT t1.columna, t2.columna
					FROM tabla1 t1
					INNER JOIN tabla2 t2 ON t1.id = t2.id;
			6. Utilizar Subconsultas con Moderación:
				* Evitar Subconsultas Innecesarias:
					Evita subconsultas innecesarias que puedan afectar el rendimiento. Considera reescribir la consulta para utilizar "JOIN" o agregaciones directamente.
					-- Evitar
					SELECT columna FROM tabla WHERE id IN (SELECT id FROM otra_tabla);
					-- Preferir
					SELECT t1.columna FROM tabla t1 INNER JOIN otra_tabla t2 ON t1.id = t2.id;
			7. Monitoreo y Ajuste:
				* Analizar el Plan de Ejecución:
					Utiliza herramientas de monitoreo de rendimiento para analizar los planes de ejecución de las consultas y ajustar según sea necesario.
					Ejemplo de Consulta Eficiente:
					-- Ejemplo de consulta eficiente
					SELECT fecha, SUM(monto) AS monto_total
					FROM ventas
					WHERE fecha BETWEEN '2022-01-01' AND '2022-01-31'
					GROUP BY fecha;
					Esta consulta selecciona columnas específicas, filtra datos eficientemente y utiliza una función de agregación para calcular el total de ventas por fecha. Ajusta estas estrategias según las necesidades específicas de tu aplicación y las características de tu base de datos en Vertica.
	* Conversiones de Datos: Utilizando CAST para transformar tipos de datos.

7. Gestión de Usuarios y Permisos
	* Crear y gestionar usuarios.
	* Asignar privilegios y roles.

8. Administración del Sistema
	* Monitoreo de rendimiento.
	* Gestión de recursos y configuración avanzada.

9. Backup y Recuperación
	* Estrategias de backup.
	* Procedimientos de recuperación.

Nivel Avanzado:

10. Particionamiento y Segmentación
	* Optimización avanzada de la estructura de las tablas.
	* Uso de particiones y segmentos.
	* Archivar Segmentos y Eliminar Segmentos en Vertica:
		* Estrategias para archivar y eliminar segmentos en Vertica.

11. Integración con Herramientas de BI
	* Conectar Vertica con herramientas de Business Intelligence.
	* Creación de informes y dashboards.

12. Gestión de Carga de Trabajo
	* Gestión avanzada de la carga de trabajo.
	* Configuración de recursos para optimizar la ejecución de consultas.
	* Conversiones Avanzadas: Exploración detallada del uso de CAST en escenarios complejos.

13. Seguridad Avanzada
	* Configuración de SSL y autenticación avanzada.
	* Estrategias de seguridad para datos sensibles.

14. Desarrollo de UDFs (User-Defined Functions)
	* Crear funciones personalizadas.
	* Integración de funciones definidas por el usuario en consultas.

15. Integración con Big Data
	* Conectar Vertica con entornos de Big Data.
	* Estrategias para trabajar con datos distribuidos.

Temas Adicionales:

16. Stored Procedures en Vertica
	* Creación y uso de Stored Procedures en Vertica.
		* "EXECUTE" VS "PERFORM":
			En Vertica, tanto "EXECUTE" como "PERFORM" son comandos que se utilizan en bloques PL/pgSQL para ejecutar instrucciones SQL dinámicamente. Sin embargo, hay diferencias clave entre ellos:
				1. Retorno de Resultados:
					* "EXECUTE": Se utiliza para ejecutar dinámicamente una instrucción SQL, pero no devuelve el resultado de la consulta. Puede ser útil para ejecutar comandos que no generan un conjunto de resultados, como sentencias "INSERT", "UPDATE" o "DELETE".
					* "PERFORM": Similar a "EXECUTE", pero se usa principalmente con consultas que no generan un conjunto de resultados. "PERFORM" se utiliza cuando estás interesado en si la consulta se ejecutó correctamente, pero no necesitas los resultados.
				2. Manejo de Resultados:
					* "EXECUTE": Puedes capturar los resultados en variables definidas en el bloque PL/pgSQL, pero debes especificar un tipo de registro si estás manejando un conjunto de resultados.
					* "PERFORM": Similar a "EXECUTE", pero generalmente se utiliza cuando no necesitas los resultados de la consulta.
				3. Ejecución Dinámica:
					* "EXECUTE": Permite la ejecución dinámica de instrucciones SQL construidas dinámicamente, lo que significa que puedes construir y ejecutar consultas de forma dinámica.
					* "PERFORM": Se puede usar para ejecutar dinámicamente instrucciones SQL, pero se prefiere cuando estás interesado en si la consulta se ejecutó correctamente.
				Ejemplo de "EXECUTE":
					EXECUTE 'INSERT INTO tabla VALUES ($1, $2)' USING valor1, valor2;
				Ejemplo de "PERFORM":
					PERFORM my_function(param1, param2);
				En resumen, "EXECUTE" se utiliza cuando necesitas ejecutar dinámicamente instrucciones SQL y, opcionalmente, capturar los resultados, mientras que "PERFORM" se utiliza cuando estás interesado en si la consulta se ejecutó correctamente, pero no necesitas los resultados. Ambos comandos son herramientas poderosas en PL/pgSQL y se eligen según los requisitos específicos del código que estás escribiendo.
				--NOTA: En Vertica, cuando se ejecuta una consulta mediante "EXECUTE", el resultado se almacena como texto "VARCHAR" en la variable, independientemente del tipo de datos real de la columna seleccionada. --No se si esto esta mal.
	* Procedures anónimos:
		* Ejecutar procedimientos almacenados sin guardarlos:
			DO [ LANGUAGE 'language-name' ] $$
				source
			$$;
		* Ejemplo:
			DO LANGUAGE PLvSQL $$
			DECLARE
				x int := 3;
				y varchar := 'some string';
			BEGIN
				RAISE NOTICE 'x = %', x;
				RAISE NOTICE 'y = %', y;
			END;
			$$;
			NOTICE 2005:  x = 3
			NOTICE 2005:  y = some string
		* Referencia: https://docs.vertica.com/24.1.x/en/sql-reference/statements/do/

17. Herencia de Objetos en Vertica
	* Concepto y aplicación de la herencia en la modelización de datos.

18. Tablas de Sistema en Vertica
	* Exploración y comprensión de las tablas de sistema de Vertica.

19. Tuple Mover en Vertica
	* Función y uso del Tuple Mover en la gestión de datos en Vertica.

20. ROS (Read Optimized Storage) en Vertica
	* Entendimiento y gestión del formato ROS en Vertica.

21. Query Plans y Query Profiles en Vertica
	* Análisis y optimización de los planes de consulta y perfiles de consulta.

22. Épocas (Closed Epochs) en Vertica
	* Comprensión del concepto de Épocas y su aplicación en Vertica.

23. Database Designer (DBD) en Vertica
	* Uso y optimización del Database Designer en Vertica.

Recuerda que Vertica es una plataforma robusta y compleja, por lo que es recomendable combinar la teoría con la práctica, realizando ejercicios y proyectos para obtener una comprensión profunda de sus capacidades. Además, consulta siempre la documentación oficial de Vertica para obtener información actualizada y detallada.
