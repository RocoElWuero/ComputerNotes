┌-----------------------------------------------------------------------┐
|                       ARCHIVO COMPATIBLE CON BAT                      |
├-----------------------------------------------------------------------┤
| Visualizar con el comando bat                                         |
| (https://www.atareao.es/software/utilidades/bat-un-cat-con-alas/)     |
| y con un tamaño adecuado para que este mensaje no salga distorsionado.|
├-----------------------------------------------------------------------┤
|                     Desarrollado por: RocoElWuero                     |
└-----------------------------------------------------------------------┘

┌────────────────────────────────────────────────────────────────────────────────────────────┐
│ SIMBOLOGÍA LINUX                                                                           │
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







ÍNDICE

1. Introducción a Linux
A). ¿Qué es Linux?
B). Historia de Linux y Unix
C). Distribuciones
D). Instalación
E). Interfaz gráfica
F). Respaldos y recuperaciones

2. Diseño del Sistema Operativo
A). Sistema de Archivos
B). Jerarquía de sistema
C). Ventajas y Desventajas (Diferencias con otros SO)

3. Uso de la Shell
A). ¿Qué es la Shell?
B). Documentación
C). Variables de entorno
D). Comandos más usados
E). Shutdown, reboot, halt, poweroff

4. Gestión de archivos
A). Comandos de gestión de archivos
B). Comandos de compresión y empaquetado de archivos
C). Comandos de linkeos
D). Editores de Texto
i.   Editor Pico
ii.  Editor Nano
iii. Editor VI

5. Filtros e interconexión de comandos
A). Expresiones regulares
B). Comando grep y otros filtros
C). Uso de pipes
D). Entrada y salida estándar
E). Manejo de errores estándar

6. Introducción a la Administración en Linux
A). Ventajas de la administración centralizada en Linux
B). Familia Linux y distribuciones para administración
C). Comandos Básicos de Administración Linux
i.  Software
ii. Hardware
    1. Información en general
    2. Información del procesador
    3. Comandos del disco duro
    4. Comandos de la RAM
    5. Comandos de la SWAP
    X. Comandos de los dispositivos USB

7. Procesos de control y Señales en sistemas UNIX
A). Procesos del Sistema
B). Comandos para control de procesos

8. Servicios en Linux
A). Introducción a los servicios en Linux
B). Servicios por defecto
C). Comandos para servicios

9. Paquetería
A). Conceptos generales de la paquetería Linux
B). Gestores de paquetes para las principales distribuciones Linux
i.      deb
ii.     dpkg
iii.    apt
iv.     apt-add-repository
v.      apt-cache
vi.     apt-cdrom
vii.    apt-clone
viii.   apt-config
ix.     aptd
x.      apt-extracttemplates
xi.     apt-get
xii.    aptitude
xiii.   aptitude-create-state-bundle
xiv.    aptitude-curses
xv.     aptitude-run-state-bundle
xvi.    apt-key
xvii.   apt-mark
xviii.  apt-sortpkgs
xix.    apturl
xx.     apturl-gtk
xxi.    apt-fast
xxii.   tasksel
xxiii.  synaptic
xxiv.   rpm
xxv.    yum
xxvi.   dnf
xxvii.  tgz
xxviii. ebuild
xxix.   pacman
C). Instalación de paquetes desde código fuente
D). Librerías
i.   Estáticas
ii.  Dinámicas o compartidas
iii. Gestión de bibliotecas
     1. Localización de bibliotecas
     2. Resolución de problemas de librerías faltantes
     3. Actualizar Librerías
iv. ¿Como se compilan?
     1. Estáticas
     2. Dinámicas

10. Manejo de Grupos y Usuarios
A). Archivos de configuración
B). Manejo de usuarios
C). Manejo de grupos
D). Comando Su, Sudo (gksudo o kdesudo), Visudo y el archivo Sudoers
E). Comandos extras

11. Sistema de Archivos
A). Uso de permisos básicos
B). Cambio de Permisos de usuario
C). Uso de permisos especiales
D). Máscara de permisos
E). Listas de Acceso (ACL)

12. Niveles de Ejecución
A). ¿Qué son los niveles de ejecución?
B). Cambio de nivel de ejecución del sistema
C). Cambio de nivel de ejecución de un servicio

13. Particiones y Volúmenes Lógicos
A). Particiones y sistema de archivos
B). dmesg, df, fdisk, mkfs, du y dd
C). mount y umount
D). badblocks y e2fsck
E). LVM y GVM
F). Creación y formateo de volúmenes lógicos

14. Programación de Tareas
A). Uso de crontab y at
B). ¿Qué es una bitácora?
C). Administración y ubicación de bitácoras

15. Configuración de Red
A). Conociendo Network Manager
B). Archivo de configuración de interfaces
C). Monitoreo de Red

16. Shell Scripting (BASH)
A).

17. Introducción a los servicios de red
A). Secure Shell (SSH)
i.   Conceptos Generales de PKI
ii.  Demonio de SSH
iii. Configuración y Uso de SSH
     1. Configuración
     2. Conexión simple
     3. Ejecución remota de aplicaciones gráficas
     4. Manejo de archivos en un túnel SSH, con SCP
     5. Ejecutar comandos remotos
B). Domain Name System (DNS)
i.   Zonas Primarias y Secundarias
ii.  Registros de DNS
iii. Uso y configuración de DNS
C). Dynamic Host Configuration Protocol (DHCP)
i.   Conceptos de Subredes y configuración de direcciones lógicas
ii.  Scope de DHCP
iii. Uso y configuración de DHCP

18. Introducción a los servicios Web y transferencia de archivos
A). Apache y Nginx
B). File Transfer Protocol (FTP)
i. Jail root
C). Trivial File Transfer Protocol (TFTP)

19. Servidor de aplicaciones

20. Configuración de firewall
A). Comando iptables

21. Introducción a los servicios de sistemas de archivos
A). NFS
B). Samba







1. INTRODUCCIÓN A LINUX

A). ¿Qué es Linux?

.........................................................................................................
¿GNU? GNU´s Not Unix
	GNU es el acrónimo recursivo de "GNU's Not Unix" (GNU no es Unix),​ nombre elegido debido a que GNU sigue un diseño tipo Unix y se mantiene compatible con éste, pero se distingue de Unix por ser software libre y por no contener código de Unix.
	Wikipedia. (13 may 2020). Software libre. Recuperado de https://es.wikipedia.org/wiki/Portal:Software_libre


¿Proyecto GNU? "El proyecto GNU es un proyecto colaborativo de software libre con el objetivo de crear un sistema operativo completamente libre: el sistema GNU. Fue anunciado por Richard Stallman en 1983."
Wikipedia. (18 nov 2019). Proyecto GNU. Recuperado de https://es.wikipedia.org/wiki/Proyecto_GNU


Linux es un Kernel o Núcleo el cual se utiliza para crear sistemas operativos completos
	El Kernel administra la memoria que utilizan los procesos y las aplicaciones que se ejecutan en tu ordenador. También se encarga de administrar y utilizar los drivers que tiene, de forma que las aplicaciones y programas puedan utilizar correctamente los componentes físicos del equipo como el procesador o la tarjeta gráfica.
	Yubal_FM. (27 Septiembre 2018). Cuál es la diferencia entre Linux y GNU/Linux. Recuperado de https://www.xataka.com/basics/cual-es-la-diferencia-entre-linux-y-gnu-linux

┌───────────────────────┐
│ Software
  ┌──────────────┐┌──────┐
  │ Aplicaciones ││ APIs │
  └──────────────┘└──────┘
┌────────────┐┌─────────────┐
│ Frameworks ││ Bibliotecas │
└────────────┘└─────────────┘
   ┌─────────┐┌─────────┐
   │ Drivers ││ Scripts │
   └─────────┘└─────────┘
   ┌───────────┐┌────────┐
   │ Servicios ││ Tareas │
   └───────────┘└────────┘
  ┌───────────────────────┐
  │          UIs          │
  │┌─────────────┐┌──────┐│
  ││ SHELLs/CLIs ││ GUIs ││
  │└─────────────┘└──────┘│
  └───────────────────────┘
            /\
            ||             ┌───→Sistemas de archivos
            \/             │┌──→Memoria principal
┌───────────────────────────┐──→Memoria secundaria
│          Kernel           │
└───────────────────────────┘──→Despachador
  /\        /\         /\  │└──→Sincronización y comunicación entre procesos
  ││        ││         ││  └───→Manejador de interrupciones
  \/        \/         \/
┌─────────────────────────────┐
│          Hardware           │
│┌─────┐ ┌────────┐ ┌────────┐│
││ CPU │ │ Memory │ │ Device ││
│└─────┘ └────────┘ └────────┘│
└─────────────────────────────┘

Para una mejor visualización de una estructura de una computadora, lo puedes ver en el archivo: 1.drawio

El núcleo es el corazón del sistema operativo, ya que tiene comunicación directa con el microprocesador para ejecutar los procesos críticos y la conexión de todos los componentes del sistema, además regula la operación de otros programas con el microprocesador.

Funciona como intermediario entre el software y el hardware, ya que recibe las órdenes de los elementos del S.O. para enviarlas al procesador u otros elementos del hardware y se ejecuten.

El kernel es la primera capa de software donde tenemos los programas que controlan todos los componentes del hardware como: pantalla, cámara, bluetooth, memoria, USB, Wi-Fi, Audio, Carga, CPU, etc.


¿Qué es GNU/Linux?
Con lleva todas las distros (distribuciones o versiones) del sistema operativo Linux original.
Que siguen la filosofía del Proyecto GNU (software libre y tipo UNIX), pero con software de terceros que no es del proyecto original de Linus Torvalds.


Software Libre vs Software gratuito
El software libre se refiere al que el código fuente esta abierto (disponible) para cualquiera que desea verlo.
El software gratuito es el que no se monetiza para la adquisición del software.


¿Qué es Sistema Operativo?
Conjunto de programas (de aplicación y de Kernel) que controlan el hardware de un sistema de cómputo, integrando una interfaz individual para uno o múltiples usuarios.
	32 bits (x86)
	64 bits



B). Historia de Linux y Unix

.........................................................................................................
Para entender correctamente a Linux y lo que supone es necesario tener claro su origen.

1. La historia de Linux comenzó mucho antes de lo que la mayoría de gente piensa, ya que en 1969, Ken Thompson, de AT&T Bell Laboratories, desarrolló el sistema operativo Unix, adaptándolo a las necesidades de un entorno de investigación, sin saber la importancia que llegaría a tener su trabajo. Un año después Dennis Ritchie (creador del lenguaje de programación C), colaboró con Ken Thompson para pasar el código del sistema Unix a C. Lo que convierto a Unix en un sistema operativo transportable.

Unix creció gradualmente hasta convertirse en un producto de software estándar, distribuido por muchos vendedores tales como Novell e IBM. Sus primeras versiones fueron distribuidas de forma gratuita a los departamentos científicos de informática de muchas universidades de renombre.

En 1972, los laboratorios Bell empezaron a emitir versiones oficiales de Unix y a otorgar licencias del sistema a distintos usuarios. En 1975, Berkeley lanzó su propia versión de Unix (BSD). Esta versión de Unix se convirtió en la principal competidora de la versión de los laboratorios Bell de ATT&T, pero no era la única ya que en 1980, Microsoft desarrolló una versión de Unix para PC llamada Xenix.

En 1991 esta organización desarrolló el SistemaV versión4, que incorporaba casi todas las características que se encuentran en el SistemaV versión3, BSDversión4.3, SunOS y Xenix. Como respuesta a esta nueva versión, varias compañías, tales como IBM y Hewlett Packard, establecieron la Open Software Foundation (OSF) para crear su propia versión estándar del Unix.

Debido a la proliferación de versiones de Unix en las décadas anteriores, el Instituto de Ingenieros Eléctricos y Electrónicos (IIEE) desarrollo un estándar del Unix independiente para el American National Institute (ANSI). Este nuevo estándar ANSI del Unix se llama Portable Operating System Interface for Computer Environments (POSIX). Este estándar define una norma universal a la cual se deben adherir todas las versiones de Unix.

En esa época, los estudiantes utilizaban un programa llamado Minix, que incorporaba diferentes características de Unix. Minix fue creado por el profesor Andrew Tannenbaum. Director del Departamento de Sistemas de la Universidad de Vrije, Amsterdam. Profesor de Arquitectura de Ordenadores y Sistemas Operativos. Licenciado en el MIT, y doctorado en la Universidad de Berkeley, California. En 1992 participó debate con Linus sobre la idea de este utilizar un núcleo monolítico en vez de los basados en un micro núcleo que Tanenbaum creía que serían la base de los sistemas operativos futuros.

2. Era el año 1991 y Linus Torvalds ,que en aquel entonces era un estudiante de informática de la Universidad de Helsinki, empezó a programar las primeras líneas de código de un sistema operativo (finalmente llamado LINUX ) como una afición y sin poderse imaginar la gran repercusión que traería. Hubo una primera versión no oficial de Linux 0.01, pero esta solo incluía el comienzo del núcleo, estaba escrita en lenguaje ensamblador y asumía que uno tenía acceso a un sistema Minix para su compilación.

El 5 de octubre de 1991, Linus anuncio la primera versión oficial de Linux (versión 0.02). Con esta versión Linus pudo ejecutar Bash (GNU Bourne Again Shell) y gcc (El compilador GNU de C). Desde aquel entonces se han hecho muchísimas versiones con ayuda de programadores de todo el mundo.

Linux es un sistema operativo compatible con Unix, sus dos características principales y que los diferencian del resto de los sistemas operativos que encontramos en el mercado son:

	1. Es software libre, esto significa que no tenemos que pagar por el uso del mismo.
	2. El sistema viene acompañado del código fuente (el sistema lo forman el núcleo del sistema kernel)
		mas un gran numero de librerías que hacen posible su utilización).

Las plataformas en las que en un principio se puede utilizar Linux son: Pentium, Pentium Pro, Pentium II/III/IV, Amiga y Atari, también existen versiones para su utilización en otras plataformas, como Alpha, ARM, MIPS, PowerPC y SPARC. En los últimos tiempos, ciertas casas de software comercial han empezado a distribuir sus productos para Linux y la presencia del mismo en empresas aumenta rápidamente por la excelente relación calidad-precio que se consigue con Linux.

3. Tux es el nombre de la mascota oficial de Linux. Creado por Larry Ewing en 1996, es un pequeño pingüino de aspecto risueño y cómico. La idea de que la mascota de kernel Linux fuera un pingüino provino del mismo Linus Torvalds, creador de kernel Linux.

Existen dos versiones sobre el origen de su nombre:
	1. Los pingüinos parecen vestir un esmoquin (que en inglés es tuxedo max, abreviado tux).
	2. Las letras que componen Tux provienen de las palabras Torvalds y Unix.
Hay quien dice que Tux era el nombre de un peluche que tenia Linus que era un pingüino llamado Tux.

El logotipo se puede usar y modificar sin restricciones, siempre que se reconozca la autoría de Larry Ewing, ya que es su trabajo y se debe reconocer su autoría tal y como se indica en su página.

Lo que ha dado lugar a una gran cantidad de llamativos diseños, a continuación se pueden ver algunos ejemplos en el archivo: 2.png

4. Linus Torvalds. Nació  el 28 de diciembre de 1969 en Finlandia, es un ingeniero de software conocido por iniciar y mantener el desarrollo del “kernel”  de Linux, basándose en el sistema operativo libre Minix y en algunas herramientas, varias utilidades y los compiladores desarrollados por el proyecto GNU. En la actualidad es responsable de la coordinación del proyecto.

Para más información: http://histinf.blogs.upv.es/2011/12/23/historia-de-linux/



C). Distribuciones

.........................................................................................................
Principales distribuciones:
[@] Debian
	[@] Ubuntu
		[@] Linux Mint
		[@] Elementary OS
	[@] Kali Linux
	[@] Raspbian
[@] Red Hat
	[@] Fedora
	[@] CentOS
[@] Arch Linux
	[@] Manjaro
[@] Gentoo
[@] Slackware
[@] SUSE
	[@] OpenSuse

Línea del tiempo de UNIX
Éric Lévénez es un (…) y ha dedicado demasiado tiempo en preservar la historia de la computación en general, desde UNIX hasta Windows. En la siguiente URL pueden descargar la línea del tiempo de UNIX y sus derivados: www.levenez.com/unix/unix_a4.pdf
O lo puedes encontrar en el material compartido, el archivo: unix_a4.pdf
www.levenez.com



D). Instalación

.........................................................................................................
Elije una distribución Linux de tu agrado

Hay distribuciones de GNU/Linux para todos los gustos, un mundo de sistemas operativos basados en Debian, Redhat, Slackware, Arch Linux, Gentoo y un largo etcétera, incluso algunas creadas desde cero. En esta guía no se tomará en cuenta alguna en específico.

En realidad, sólo diré que ha sido probada con Debian, Ubuntu y sus derivaciones. Puedes explorar en distrowatch.com y seleccionar alguna que sea de tu agrado.

Ya cuando hayamos descargado la imagen .iso de la “distro” que hayamos seleccionado, buscamos su “hash” y un “hash” en breves palabras es un “string” o cadena de texto, para la comprobación de integridad de datos u archivos.

-------------------
Una función criptográfica hash- usualmente conocida como “hash”- es un algoritmo matemático que transforma cualquier bloque arbitrario de datos en una nueva serie de caracteres con una longitud fija. Independientemente de la longitud de los datos de entrada, el valor hash de salida tendrá siempre la misma longitud.
latam.kaspersky.com/blog/que-es-un-hash-y-como-funciona/2806/
-------------------

El programa que vamos a utilizar es el siguiente: WinMD5.exe
Y su pagina es la siguiente: winmd5.com

En la primera sección arrastramos el archivo a comprobar y el programa automáticamente empezará a generar su hash y lo podremos visualizar en donde dice “Current file MD5 checksum value:”.

Y en la segunda sección “Original file MD5 checksum (…)” pegamos la cadena que previamente obtuvimos de la pagina de la distro.

Le damos en “Verify” y nos arroja “Matched!” significa que nuestra “iso” esta integra y no corrupta.


Cargar la Imagen ISO en un medio de almacenamiento
En esta guía veremos los dos métodos para grabar la imagen, por el clásico CD/DVD y por el USB Booteable.
Primero utilizaremos el método con el disco. Para ello recurriremos al programa de PowerISO el cual esta el instalador para 64bits: PowerISO6-x64-Full.exe
O puedes descargar el de 32bits (x86) en su pagina oficial.

Cuando hayamos instalado PowerISO, lo ejecutamos dándole doble click a la imagen ISO, y si es que no hayamos comprado el software, nos aparecerá algo como esto: 3.png

El programa no es gratuito, pero para grabar imágenes ISO cubre los requisitos necesarios.

Insertamos el CD o DVD y le damos en “Burn”.

Seleccionamos la imagen, y le clickeamos en “Verify written data” para que cuando haya terminado lo compruebe y nuevamente en “Burn”.


Memoria USB Booteable
Una vez seleccionada la distribución Linux de tu agrado, el paso siguiente es configurar una USB con la imagen del sistema operativo. Algunas distribuciones ofrecen su propia herramienta de configuración de arranque, pero cuando no es así, tenemos una gran alternativa.
Configuramos a Rufus con los valores que aparecen o por defecto (si es que no están): 4.png y 4.1.png

Rufus es un programa portable, sencillo y liviano que servirá para configurar una memoria USB como dispositivo de arranque para instalar la distribución Linux seleccionada. Basta con descargar la herramienta, seleccionar la memoria USB a formatear y la imagen de disco que se desea grabar. El resto no dependerá de nosotros.
rufus.akeo.ie

Rufus es especialmente útil en casos donde:
[@] Necesite crear medios de instalación USB a partir de ISOs arrancables (Windows, Linux, UEFI, etc.)
[@] Necesite trabajar en un equipo que no tenga un sistema operativo instalado
[@] Necesite actualizar el firmware o BIOS de un ordenador desde DOS
[@] Quiera ejecutar una utilidad de bajo nivel


Haz espacio para el nuevo inquilino
En cualquier versión de Windows, que todavía se usa en la actualidad, como son 7, 8, 8.1 y 10.
Solo con presionar estas dos teclas y escribir este comando: Windows + R => diskmgmt.msc
Se abre el “Ejecutar” y con este ejecutamos el “Administrador de Discos”: 5.png

Como has de saber, para instalar un sistema operativo se requiere formatear el disco duro. Podríamos decir que instalar Windows en una computadora es el equivalente a instalar un programa en el mismo sistema operativo. Sin embargo, instalar un sistema operativo Linux puede ser de la misma forma, intuitivo, aunque algunos prefieren configurar la tabla de particiones.
6.png

Ahí ubicaremos la partición primaria donde se encuentra instalado Windows. También identificaremos la capacidad de almacenamiento y el espacio libre. Hacemos clic derecho en ella y seleccionamos la opción "Reducir volumen…", la cual abrirá una ventana que nos permitirá especificar el espacio en MB que dejaremos sin formato, necesarios para instalar el nuevo sistema operativo.

Siempre se recomienda dejar más de 15 GB libres, aunque una recomendación sería dejar como mínimo 50 GB de espacio libre, suficientes para configurar una triada de particiones durante la instalación del sistema operativo o instalar sin particionar manualmente, como sea conveniente.


Antes de instalar, prepara tu computadora

Que no te gane el desespero, pues antes deberás configurar la secuencia de arranque de tu computadora. Para ello debemos saber de antemano bajo qué interfaz de firmware trabaja el equipo, ya sea con BIOS o el nuevo estándar, UEFI, el cual tiene habilitado por defecto el modo Secure Boot.

------------------------------------
¿Qué es firmware?
Programa que controla los circuitos electrónicos de un dispositivo. Software que maneja físicamente el Hardware para ejecutar correctamente las instrucciones externas.
------------------------------------

Mientras en una vieja computadora con Windows 7 basta con modificar la secuencia de arranque o seleccionar un dispositivo al inicio, en un equipo UEFI puede ser necesario desactivar la característica Secure Boot, aunque cabe mencionar que algunas distribuciones Linux solucionaron el inconveniente y ya no se requiere realizar esta modificación.

---------------------------------------
Concepto y diferencia entre UEFI y BIOS
Los dos son software de bajo nivel, sin embargo, UEFI (Unified Extensible Firmware Interface) permite discos duros más grandes, tiempos de boot más rápidos, y mejor seguridad. 

BIOS (Basic Input Output System): responsable de iniciar los componentes hardware, asegura su función adecuada y corre el bootloader. BIOS únicamente puede bootear discos de 2.1 TB o menor, y tiene que ver con cómo funciona su MBR.

UEFI (Unified Extensible Firmware Interface): soporta discos duros de 2.2 TB o mayores. Podría llegar a 9.4 zettabytes. Lo anterior debido a que usa sistemas de partición GPT. Es más seguro porque usa SecureBoot, lo que permite checar que no se haya instalado malware en el proceso de boot.
---------------------------------------

En una computadora con UEFI, desactivar Secure Boot es tan fácil como ir al Menú inicio > Inicio/Apagado y mantener presionado el botón Shift seleccionando la opción para Reiniciar.

Aparecerá un menú de opciones avanzadas que oculta las Configuraciones del Firmware UEFI en Solucionar problemas > Opciones Avanzadas. Ya en las configuraciones de UEFI, encontrarás la opción para deshabilitar el Secure Boot.

Para entrar en la UEFI se presiona F2, o F10, o Supr… hay varias teclas que lo permiten, averigua cuál es la correcta en tu ordenador.

A partir de ahora sólo tendrás que configurar la secuencia de arranque para darle prioridad al medio que escogiste o establecerlo como dispositivo de arranque por defecto. En algunas computadoras no es necesario, ya que en el arranque se puede acceder a una lista de dispositivos de la misma manera que se puede ingresar al BIOS o UEFI.

NOTA: Este fue el caso del como debería ser en las laptos modernas “estándar”, en mi caso tengo una computadora HP G240, tiene el Arranque Seguro (Secure Boot) y UEFI. Y a continuación también te lo explicare.

Prendes la laptop y presionas constantemente F2 o F10 directamente

Ya una vez dentro, configuramos el lenguaje

Quitamos todas las contraseñas

Nos vamos a opciones de arranque

Activamos el “Arranque la unidad de CD-ROM”

Y configuramos el orden de arranque de los dispositivos físicos



Gestor de arranque

Es un pequeño programa que cuando el ordenador se enciende o se reinicia, el sistema básico de entrada y salida (BIOS) realiza algunas pruebas iniciales y transfiere el control al registro de arranque master (MBR) donde se aloja el cargador de arranque. Muchos equipos nuevos están equipados con cargadores de arranques para una cierta versión de Microsoft Windows o Mac OS.

Si el equipo va a ejecutar Linux, entonces es necesario instalar un cargador de arranque especial.

Los más conocidos son GRUB y LILO

Aquí hay un enlace para más información:
https://www.ibm.com/developerworks/ssa/linux/library/l-lpic1-v3-102-2/index.html

En mi caso se instalo GRUB pero no me reconocía la partición de Windows, así que tuve que tirar este comando para que me lo reconociera:

~$ sudo update-grub2



E). Interfaz gráfica

.........................................................................................................
Un entorno de escritorio es un conjunto de software para ofrecer al usuario de una computadora una interacción amigable y cómoda.

Los entornos de escritorio son utilizados por una amplia mayoría de sistemas operativos modernos tanto en software privativo ( Windows, Macintosh - Classic y Cocoa -) como también de código abierto o software libre (GNOME, KDE, CDE, Xfce, LXDE o InnovaDE, comúnmente usados en distribuciones Linux o BSD).

A diferencia de Windows y Mac OS, Linux ofrece una variedad de entornos de escritorio para los usuarios. Cada entorno de escritorio tiene su propio estilo y características, y un usuario puede instalar cualquiera de estos entornos de escritorio. Algunos de estos entornos Linux son adecuados para trabajar dependiendo del hardware del equipo, lo que significa que si tienes una computadora con poca capacidad, podas encontrar elegantes entornos de trabajo que usan pocos recursos del computador para poder funcionar.

1. Cinnamon: Cinnamon se basa en archivos de la biblioteca de Gnome, pero fue diseñado para Linux Mint.
	Es un potente entorno de escritorio que es flexible y combina el diseño tradicional con características avanzadas.

	Cinnamon consta de 3 áreas principales: un solo panel situado en la parte inferior, una bandeja del sistema y varias otras funciones situados a la derecha, y el menú de la aplicación en el lado izquierdo de la pantalla. También puede personalizar el menú de la aplicación mediante la adición de aplicaciones de su elección. Para asegurar que esto funciona sin problemas, deberás contar con una tarjeta gráfica potente y controladores actualizados.

2. GNOME 3.X: Hace unos años, GNOME era el entorno de escritorio más popular y ampliamente usado en Linux. La transición de GNOME a la serie GNOME 2.x trajo la simplicidad y facilidad de uso que atrajo a un gran número de usuarios de Linux para moverse a la serie GNOME 2.x.

	GNOME 3.x se introdujo para proporcionar un fácil acceso a todos sus datos mediante la integración con cuentas en línea. Algunas otras características importantes que ofrece GNOME 3.x, es el uso de la información que estés manejando en tu sesión actual.

3. KDE: KDE es uno de los entornos de escritorio Linux populares y también un competidor para GNOME. Se asemeja al escritorio de Windows por lo que si quieres experimentar un escritorio similar al sistema operativo Windows, esta es la mejor opción para ti. Mientras que KDE viene con una interfaz gráfica de usuario visualmente interesante y un montón de características de gran alcance, el combo hace que sea un entorno de escritorio lleno de recursos.

	Un grave problema que ha tenido y hasta la fecha sigue teniendo, es el consumo de recursos de la maquina, así que si lo que necesitas es usar y experimentar todo el potencial de este entorno, debes contar con un buen equipo con grandes recursos.

4. MATE: A pesar de su popularidad con las versiones anteriores, el diseño simplista de GNOME 3 no le sentó demasiado bien con muchos usuarios de GNOME. La comunidad Linux decidió continuar con el desarrollo de GNOME 2, de aquí nace MATE. MATE ofrece un entorno GNOME 2 con nuevas y mejores características para garantizar a los usuarios una experiencia informática mejorada.

5. LXDE: LXDE es un entorno de escritorio rápido y de alto rendimiento. Está diseñado para los sistemas de bajos recursos de hardware (CPU y RAM).

	Aunque se trata de un entorno de escritorio ligero, todavía tiene una interfaz de usuario simple y atractiva. También ofrece soporte multi-idioma y encima de que es compatible con los atajos de teclado estándar y permite la navegación de archivos con pestañas entre otras funciones interesantes.

6. Xfce: Es un entorno de escritorio tradicional y bastante ligero, pero en términos de funciones, es similar a GNOME 2. Xfce tiene sus propios programas ligeros, así como algunos programas de GNOME para proporcionar un equilibrio entre rendimiento y funciones.

7. Unity: Actualmente Unity es el entorno de escritorio nativo para Ubuntu, en reemplazo de GNOME. Viene con una base de aplicaciones que se pueden desplazar si el número de solicitudes supera el área de visualización de la pantalla. También puedes buscar un archivo o una aplicación en particular escribiendo su nombre en la barra de búsqueda. Unity funciona sin problemas en un sistema con una buena configuración de hardware.

8. Openbox: Openbox es un entorno de escritorio más ligero que LXDE y Xfce debido a su diseño y apariencia minimalista. Se trata de un entorno de escritorio altamente configurable y tiene un escritorio completamente plano que hace que el proceso de carga sea bastante rápido. Para abrir el menú basta con dar Clic derecho en cualquier lugar en el escritorio.

	También puede combinar la funcionalidad de GNOME o KDE con la velocidad de Openbox para hacer su escritorio más rápido y limpio. Openbox es ideal para los usuarios de Linux con sistemas de baja potencia.

9. Razor – Qt: Razor – Qt es un entorno de escritorio bastante fácil de usar y ligero para los usuarios de Linux. Puedes encontrar algunas similitudes con KDE, pero está diseñado para ofrecer simplicidad y velocidad. Debería funcionar sin problemas con los sistemas antiguos con configuraciones bajas de hardware.

10. xmonad: Xmonad en realidad es un gestor de ventanas en mosaico, con esto verás ventanas superpuestas en el escritorio. No viene con demasiado de una interfaz de usuario, pero que hace que sea un ambiente de escritorio fácil de usar, rápido y estable.



F). Respaldos y recuperaciones

.........................................................................................................
Antes de cualquier instalación de algún sistema operativo, lo recomendable es que respaldes toda su información, ya que a la hora de hacer particiones, formatear, etc. Puedas perder o dañar tu información.







2. DISEÑO DEL SISTEMA OPERATIVO

A). Sistema de Archivos

.........................................................................................................
Un sistema de archivos son los métodos y estructuras de datos que un sistema operativo utiliza para seguir la pista de los archivos de un disco o partición; es decir, es la manera en la que se organizan los archivos en el disco.

El sistema de archivos o sistema de ficheros es el componente del sistema operativo encargado de administrar y facilitar el uso de las memorias periféricas, ya sean secundarias o terciarias.

Sus principales funciones son la asignación de espacio a los archivos, la administración del espacio libre y del acceso a los datos resguardados. Estructuran la información guardada en un dispositivo de almacenamiento de datos o unidad de almacenamiento (normalmente un disco duro de una computadora), que luego será representada ya sea textual o gráficamente utilizando un gestor de archivos.

La mayoría de los sistemas operativos manejan su propio sistema de archivos.


¿Que sistema de archivos utiliza windows 7?
Se utiliza para Microsoft Windows XP y Microsoft Windows Vista y Windows 7. Los sistemas operativos Windows XP, Vista y 7 de Microsoft reconocen el sistema de archivos FAT, FAT32, NTFS, el CDFS utilizado en CD-ROM, el UDF utilizado en DVD-ROM y el LFS para discos sin registro de arranque maestro.

Yo estoy utilizando para Windows 7 NTFS


Sistemas de archivos soportados por Linux Linux soporta una gran cantidad de tipos diferentes de sistemas de archivos. Para nuestros propósitos los más importantes son:

[@] minix: El más antiguo y supuestamente el más fiable, pero muy limitado en características algunas marcas de tiempo se pierden, 30 caracteres de longitud máxima para los nombres de los archivos) y restringido en capacidad (como mucho 64 MB de tamaño por sistema de archivos).

[@] xia: Una versión modificada del sistema de archivos minix que eleva los límites de nombres de archivos y tamaño del sistema de archivos, pero por otro lado no introduce características nuevas. No es muy popular, pero se ha verificado que funciona muy bien.

Sistema de archivos Ext
Son los utilizados por las distribuciones GNU/Linux. El principal inconveniente es que sólo puede ser utilizado en esta familia de sistemas operativos:
	[@] ext4: Las principales mejoras son: Soporte de volúmenes de hasta 1024 PiB. Soporte añadido de extent. Menor uso del CPU. Mejoras en la velocidad de lectura y escritura.
	[@] ext3: El sistema de archivos ext3 posee todas las propiedades del sistema de archivos ext2. La diferencia es que se ha añadido una bitácora (journaling). Esto mejora el rendimiento y el tiempo de recuperación en el caso de una caída del sistema. Se ha vuelto más popular que el ext2.
	[@] ext2: El más sistema de archivos nativo Linux que posee la mayor cantidad de características. Está diseñado para ser compatible con diseños futuros, así que las nuevas versiones del código del sistema de archivos no necesitará rehacer los sistemas de archivos existentes.
	[@] ext: Una versión antigua de ext2 que no es compatible en el futuro. Casi nunca se utiliza en instalaciones nuevas, y la mayoría de la gente que lo utilizaba han migrado sus sistemas de archivos al tipo ext2.

[@] reiserfs: Un sistema de archivos más robusto. Se utiliza una bitácora que provoca que la pérdida de datos sea menos frecuente. La bitácora es un mecanismo que lleva un registro por cada transacción que se va a realizar, o que ha sido realizada. Esto permite al sistema de archivos reconstruirse por sí sólo fácilmente tras un daño ocasionado, por ejemplo, por cierres del sistema inadecuados.

Adicionalmente, existe soporte para sistemas de archivos adicionales ajenos, para facilitar el intercambio de archivos con otros sistemas operativos. Estos sistemas de archivos ajenos funcionan exactamente como los propios, excepto que pueden carecer de características usuales UNIX , o tienen curiosas limitaciones, u otros inconvenientes.

[@] msdos: Compatibilidad con el sistema de archivos FAT de MS-DOS (y OS/2 y Windows NT).

[@] umsdos: Extiende el dispositivo de sistema de archivos msdos en Linux para obtener nombres de archivo largos, propietarios, permisos, enlaces, y archivos de dispositivo. Esto permite que un sistema de archivos msdos normal pueda utilizarse como si fuera de Linux, eliminando por tanto la necesidad de una partición independiente para Linux.

[@] vfat: Esta es una extensión del sistema de archivos FAT conocida como FAT32. Soporta tamaños de discos mayores que FAT. La mayoría de discos con MS Windows son vfat.

[@] iso9660: El sistema de archivos estándar del CD-ROM; la extensión popular Rock Ridge del estándar del CD-ROM que permite nombres de archivo más largos se soporta de forma automática.

[@] nfs: Un sistema de archivos de red que permite compartir un sistema de archivos entre varios ordenadores para permitir fácil acceso a los archivos de todos ellos.

[@] smbfs: Un sistema de archivos que permite compartir un sistema de archivos con un ordenador MS Windows. Es compatible con los protocolos para compartir archivos de Windows.

[@] hpfs: El sistema de archivos de OS/2.

[@] sysv: EL sistema de archivos de Xenix, Coherent y SystemV/386..


Si vas a compartir archivos de más de 4 GB entre equipos con sistemas operativos Windows, GNU/Linux y macOS, tu mejor opción es formatear en formato exFAT. Esto es especialmente útil, por ejemplo, si quieres hacer copias de seguridad en un disco duro externo.



B). Jerarquía de sistema: 7.jpg

.........................................................................................................
Directorio raíz de toda la jerarquía de archivos del sistema.
/
	bin: Contiene los archivos binarios o comandos esenciales del usuario.
	boot: Contiene los archivos estáticos del selector de arranque.
	dev: Archivos de los dispositivos conectados a nuestra computadora.
	etc: Contiene los archivos de Configuración del Host específico. Directorios requeridos: opt, X11, sgml, xml.
	home: Contiene los Home de cada usuario. El equivalente a la carpeta "Usuarios" de Windows.
	lib: Librerías esenciales compartidas y módulos del Kernel o para el funcionamiento del sistema.
	media: Punto de montaje para los medios de almacenamiento extraíbles. En otras palabras, donde el sistema monta medios extraíbles. Este directorio contiene subdirectorios utilizados para montar medios extraíbles como CD-ROM, disquetes, etc.
	mnt: Punto de montaje temporal para sistemas de archivos. En otras palabras, donde el usuario puede montar cosas. Este directorio generalmente se utiliza para montar archivos de manera temporal cuando sea necesario. También es el predecesor de media.
	opt: Agregados de paquetes de Software y Aplicaciones.
	sbin: Binarios de sistema o comandos que solo root puede ejecutar.
	srv: Datos para los servicios provistos por este sistema.
	tmp: Contiene los archivos temporales del Sistema Operativo.
	usr: Contiene la mayoría de los archivos existentes en un sistema Linux, como documentación, ejecutables, (utilidades y aplicaciones Multiusuario). Jerarquía secundaria, directorios requeridos: bin, include, lib, local, sbin, share.
	var: Contiene información variable, como por ejemplo los logs del sistema (/var/log), correo local, etc.
	root: Es el Home del Superusuario/root/administrador de la computadora.
	proc: Documentación del sistema de archivos virtual de información (condiciones) de procesos (en archivos de texto) y del Kernel.



C). Ventajas y Desventajas (Diferencias con otros SO)

.........................................................................................................
1. Libertad: Podemos modificar todo, literalmente, desde lo visual hasta programas, al ser un S.O. libre (GNU), podemos modificar tanto el código fuente o las configuraciones de los programas y moldearlos a nuestra medida, de esta manera podemos ajustar el sistema exactamente a nuestras necesidades y dejarlo tal cual como queremos.
2. Personalización: Linux es bello visualmente, no es solo una terminal de linea de comandos, podemos cambiar el tema de los iconos, las ventanas, agregar animaciones, barras de doc, cambiar el entorno de escritorio, etc. Y en algunos casos es más atractivo visualmente que Windows o Mac.
3. Distribuciones: Existen un millar de distros para probar, para todo tipo de usuarios, desde programadores y seguridad hasta diseño y videojuegos, y sin tener la restricción de pagar por su uso, por ser gratuito.
4. Gratuito: GNU/Linux es gratis, no necesitas una licencia de uso, cosa que no sucede con Mac o Windows, legalmente.
5. Seguridad: Aquí no diré que no existen Malwares, porque si lo hay, porque no existe un S.O. libre al 100% de ellos, (Ningún sistema es seguro) pero a nivel de usuario existen muy pocas amenazas, las que hay son descubiertas rápidamente por la comunidad para después solo hacer una actualización a nuestro sistema y corregir dichos problemas de seguridad.
6. Actualizaciones: Aquí a diferencia de Windows o Mac, las actualizaciones son cosa de todos los días y esto es muy bueno, pues todos nuestros programas corrigen sus errores y siempre estamos actualizados. Esto se debe a que la mayoría del software es mantenido por la comunidad, es decir por desarrolladores que contribuyen al open source (software libre) y al software gratis.
7. Performance: Uno de los puntos más fuertes es que este sistema no consume muchos recursos.
8. Comunidad: Tiene una comunidad enorme, tanto en Español como Ingles y otros idiomas y esto es una ventaja, pues todos los usuarios nos apoyamos y resolvemos problemas sin la necesidad de consultar el soporte técnico o leer libros de unas 800 paginas (para los que no siempre cuentan con el suficiente tiempo para hacerlo).
9. Terminal: Con Linux puedes hacer todo tipo de cosas y algunas únicas que no puedes hacer en otros sistemas, tiene un gran potencial, sobre todo cuando ya dominas la terminal, te darás cuenta de todo el potencial que tiene y lo que puedes hacer con ella, te dejara con la boca abierta.
10. Se diferente: El hecho que todo el mundo utilice un S.O., no significa que debas usarlo, siéntate libre de usar cosas nuevas y no te cases con una sola opción, en linux ya sea si eres un usuario final, normal o avanzado, tendrás todo lo necesario que en otros sistemas y hacer las mismas tareas, muchos programas de windows también funcionan en Linux y si no lo están, existen alternativas muy buenas a estos.







3. USO DE LA SHELL

A). ¿Qué es la Shell?

.........................................................................................................
¿Qué es un Comando?
Instrucción u orden, mandato, que el usuario proporciona a un sistema informático, desde la línea de
comandos (como una shell) o desde una llamada de programación.


¿Qué es una Shell?
El nombre Shell puede sonar divertido, pero “Kernel” puede ser aún más divertido. La Shell es la pieza que envuelve al kernel. En las computadoras no hay diferencia. La shell es la interfaz de línea de comandos con la que interactúas. Los ejemplos de Shell son BASH, CSH, y ZSH. La cáscara toma comandos escritos a mano y le dice al sistema operativo que debe ejecutarlos, o puede tomar secuencias de comandos e interpretar la lógica dentro de ellos, además da instrucciones al sistema operativo para ejecutar los comandos contenidos en el script.
Shell es el interprete de comandos.


¿Qué es una terminal?
Para entender lo que es un terminal, tenemos que volver a los días de los mainframe. Las computadoras centrales eran ordenadores con muchos usuarios. Eran comunes en las grandes empresas y en los campus universitarios. Pero cuando se tiene decenas de personas que desean utilizar un ordenador al mismo tiempo, ¿cómo hacer para compartirlo? En palabras actuales, queremos dar a cada usuario un monitor, un teclado y un mouse. En la era de las mainframe se utilizaron terminales. Un “terminal”, según la definición de los diccionarios, es o bien el final de algo o un punto de contacto, a veces ambos. Las computadoras centrales tenían estaciones terminales equipadas con una pantalla y un teclado. Esto para que los usuario pudieran acceder a las mainframe.
Una Terminal es un dispositivo electrónico o electromecánico que se utiliza para interactuar con un(a) computador(a).
En GNU/Linux es la aplicación (software) que toma el interprete de cada usuario y lo ejecuta.


¿Qué es una consola?
Hoy en día, las consolas pueden ser completamente en software, pero no siempre fue el caso. Las consolas van de la mano con las terminales. Con respecto a un mainframe, una consola era a la vez el puerto y la conexión digital a la unidad central del sistema operativo de la terminal. Una definición más amplia de una consola es un escritorio o la interfaz desde la que un sistema se controla y/o monitorea. La terminal se conecta físicamente al puerto de la consola en la unidad central de manera que el usuario puede controlar la mainframe. En un sistema Linux puedes pulsar:
ctrl + alt + { F1 | F2 | F3 | ... }
Para acceder a las diferentes consolas. Muchos sistemas todavía tienen puertos de consola basada en administración, tales como equipos de red profesional.



B). Documentación
.........................................................................................................



C). Variables de entorno

.........................................................................................................
Son cadenas que contienen información acerca del entorno para el sistema y el usuario que ha iniciado sesión en ese momento.

El comando (comando del sistema operativo Unix y los sistemas Unix-like) "env" sirve para ver la lista de las variables disponibles en nuestra sesión de usuario.

Sintaxis:
~$ env
~$ env [bandera]... [<nombreVariable>=<valor>]... [<comando> [argumento]...]


Algunas de ellas son las que mostramos en la lista siguiente, junto con su propósito. Es importante aclarar que la disponibilidad de una cierta variable puede depender del uso actual del sistema. Por ejemplo, SSH_CONNECTION no estará presente si no estamos conectados a un servidor SSH remoto.


HISTSIZE		Máxima cantidad de comandos contenidos en el historial (aplica al usuario "loggeado" actualmente).
DISPLAY			Donde aparecen la salidas de X-Windows.
HOME			Directorio personal.
HOSTNAME		Nombre de la máquina.
MAIL			Archivo de correo.
PATH			Lista de directorios donde buscar los programas/ejecutables.
PS1			Prompt.
SHELL			Intérprete de comandos por defecto.
TERM			Tipo de terminal.
USER			Nombre del usuario.
EDITOR			Editor de texto por default.
SSH_CONNECTION		Detalles sobre la conexión SSH iniciada desde el equipo actual. Presenta el siguiente
				formato: <ipDelCliente> <puertoDelCliente> <ipDelServidor> <puertoDelServidor>.

-~-~-~-~-	-~-~-~-~-

With the flag "-i" or "-" or "--ignore-environment", start with an empty environment.
	Clean all environment variables (create a new environment without any environment variable) for a new shell.

With the flag "-0" or "--null" end each output line with NULL, not newline.

With the flag "-u" or "--unset=NAME" remove variable from the environment.

With the flag "--help" display this help and ends.

With the flag "--version" output shows version information and ends.
.........................................................................................................
Con la bandera "-i" o "-" o "--ignore-environment", inicia con un entorno vacío.
	Limpiar todas las variables del entorno (crear un nuevo entorno sin ninguna variable de entorno) para una nueva shell.

Con la bandera "-0" o "--null" finaliza cada línea de salida con NULL, no con una línea nueva.

Con la bandera "-u" o "--unset=NAME" eliminar la variable del entorno.

Con la bandera "--help" muestra esta ayuda y termina.

Con la bandera "--version" salida muestra información de la versión y termina.

-~-~-~-~-	-~-~-~-~-

Exit status:
	0   if no COMMAND is specified and the environment is output
	125 if ‘env’ itself fails
	126 if COMMAND is found but cannot be invoked
	127 if COMMAND cannot be found
	the exit status of COMMAND otherwise
.........................................................................................................
Estatus de salida:
	0   si no se especifica ningún comando y se genera el entorno
	125 si 'env' falla
	126 si se encuentra el comando pero no se puede invocar
	127 si no se puede encontrar el comando
	el estado de salida del comando de lo contrario

-~-~-~-~-	-~-~-~-~-

AUTHOR: Written by Richard Mlynarik and David MacKenzie.

REPORTING BUGS:
		GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
		Report env translation bugs to <http://translationproject.org/team/>

COPYRIGHT:
		Copyright © 2016 Free Software Foundation, Inc. License GPLv3+: GNU GPL
		version 3 or later <http://gnu.org/licenses/gpl.html>.
		This is free software: you are free to change and redistribute it. There
		is NO WARRANTY, to the extent permitted by law.

SEE ALSO:
		Full documentation at: <http://www.gnu.org/software/coreutils/env>
		or available locally via: info '(coreutils) env invocation'
.........................................................................................................
AUTOR: Escrito por Richard Mlynarik y David MacKenzie.

REPORTANDO BUGS:
		Ayuda en línea de GNU coreutils: <http://www.gnu.org/software/coreutils/>
		Informar sobre errores de traducción de env en <http://translationproject.org/team/>

DERECHOS DE AUTOR:
		Derechos de autor  © 2016 Free Software Foundation, Inc.  License GPLv3+: GNU GPL
		version 3 or later <http://gnu.org/licenses/gpl.html>.
		Este es un software libre: puedes cambiarlo y redistribuirlo. NO HAY GARANTÍA,
		en la medida permitida por la ley.

VER TAMBIÉN:
		Documentación completa en: <http://www.gnu.org/software/coreutils/env>
		o disponible localmente a través de: info '(coreutils) env invocation'



D). Comandos más Usados

.........................................................................................................
Primero para iniciar en GNU/Linux como tal se debe recordar que GNU/Linux es un S.O. que es altamente utilizado en casi cualquier servidor de la actualidad, gracias a su eficiencia, su extensa gama de utilidades para su administración, ya sea desde el entorno gráfico o desde la terminal. Pero su fuerte siempre será el uso de la Terminal.

Así que abrimos la terminal lo primero que veremos será algo como esto:

usuario@linux-cliente:~$

Pues esto es el Prompt, es el indicativo que estamos manejando una shell o interprete de comandos, y en ciertas circunstancias puede aparecer un prompt secundario, como a la hora de ingresar unas credenciales (usuario y password), etc.

Este prompt esta compuesto de la siguiente forma:

<usuario>@<nombreDelOrdenador>:<directorioHome><tipoDeUsuario>


---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|             PRINCIPALES             |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------

A man page has several parts.
These are labeled as:
[@] NAME
[@] SINOPSIS
[@] DESCRIPTION
[@] ![EXAMPLES]
[@] ![DETAILED DESCRIPTION]
[q] ![PREDETERMINED VALUES]
[@] OPTIONS
[@] ![EXIT STATUS]
[@] ![ENTORNO]
[@] FILES
[@] BUGS
[@] ![HISTORY]
[@] AUTHOR
[@] ![REPORTING BUGS]
[@] ![COPYRIGHT]
[@] SEE ALSO
.........................................................................................................
El comando "man" sirve para mostrar en terminal el Manual de un Comando/Programa Gráfico.

"man" es el paginador del manual del sistema. Las páginas usadas como argumentos al ejecutar "man" suelen ser normalmente nombres de programas, útiles o funciones. La página de manual asociada con cada uno de esos argumentos es buscada y presentada. Si la llamada da también la sección, "man" buscará sólo en dicha sección del manual. Normalmente, la búsqueda se lleva a cabo en todas las secciones de manual disponibles según un orden predeterminado, y sólo se presenta la primera página encontrada, incluso si esa página se encuentra en varias secciones.

Es una macro configurada para el procesador troff (el principal componente de un sistema de procesamiento de documentos para UNIX).


La siguiente tabla muestra los números de sección del manual y los tipos de páginas que contienen.
	1   Programas ejecutables y guiones del intérprete de órdenes
	2   Llamadas del sistema (funciones servidas por el núcleo)
	3   Llamadas de la biblioteca (funciones contenidas en las bibliotecas del sistema)
	4   Ficheros especiales (se encuentran generalmente en /dev)
	5   Formato de ficheros y convenios p.ej. I/etc/passwd
	6   Juegos
	7   Paquetes de macros y convenios p.ej. man(7), groff(7).
	8   Órdenes de administración del sistema (generalmente solo son para root)
	9   Rutinas del núcleo [No es estándar]
	n   nuevo [obsoleto]
	l   local [obsoleto]
	p   público [obsoleto]
	o   viejo [obsoleto]


Una página de manual tiene varias partes.
Éstas están etiquetadas como:
[@] NOMBRE
[@] SINOPSIS
[@] DESCRIPCIÓN
[@] ![EJEMPLOS]
[@] ![DESCRIPCIÓN DETALLADA]
[q] ![VALORES PREDETERMINADOS]
[@] OPCIONES
[@] ![ESTADO DE SALIDA]
[@] ![ENTORNO]
[@] FICHEROS
[@] BUGS
[@] ![HISTORIA]
[@] AUTOR
[@] ![REPORTANDO BUGS
[@] ![DERECHOS DE AUTOR]
[@] VÉASE TAMBIÉN

Sintaxis:
~$ man <comando>

#man man
~$ man  [-c|-w|-tZT dispositivo] [-adhu7V] [-m sistema[,...]] [-L locale] [-p cadena] [-M ruta] [-P paginador] [-r prompt] [-S lista] [-e extensión] [[sección] pagina ...] ...
~$ man -l [-7] [-tZT dispositivo] [-p cadena] [-P paginador] [-r prompt] fichero ...
~$ man -k [-M ruta] palabra_clave ...
~$ man -f [-M ruta] pagina ...

#man --help
~$ man [OPCIÓN...] [SECCIÓN] PÁGINA...

Salida:
q

-~-~-~-~-	-~-~-~-~-

[English]
.........................................................................................................
La duplicación de opciones sin argumento tanto en la línea de órdenes, en $MANOPT, o en ámbos, no tiene ningún efecto dañino. Para aquellas opciones que requieren un argumento, cada duplicado sobrescribe el valor anterior del argumento.

[English]
.........................................................................................................
Con la bandera "-l" o "--local-file"
	Activa el modo 'local'. Formatéa e imprime las páginas de manual locales en vez de buscarlas entre la colección de manuales del sistema. Cada página de manual argumento se supone fichero fuente en formato nroff. No se genera un fichero cat. Si se añade '-' a la lista de argumentos, se toma la entrada del stdin.

[English]
.........................................................................................................
Con la bandera "-L locales" o "--locale=locales"
	"man" normalmente determina su estado de locales actual mediante una llamada a la función de la biblioteca C setlocale(3) que interroga varias variables de entorno, entre otras $LC_MESSAGES y $LANG.
	Para sobrescribir temporalmente el valor determinado, puede usar esta opción y suplir la cadena de locales directamente a "man". Es necesario notar que el cambio no tendrá lugar hasta que comience la búsqueda propiamente dicha. Salidas como el mensaje de ayuda siempre aparecen según los locales determinados inicialmente.

[English]
.........................................................................................................
Con la bandera "-D" o "--default"
	Esta opción se usa generalmente la primera y restaura el comportamiento de "man" al modo predeterminado. Se usa para restaurar las opciones modificadas mediante $MANOPT. Cualquier opción que siga a -D producirá el efecto usual.

[English]
.........................................................................................................
Con la bandera "-M <ruta>" o "--manpath=<ruta>"
	Especifica una ruta de manual alternativa. De forma predeterminada, "man" utiliza código derivado de manpath para determinar la ruta de búsqueda. Esta opción sobrescribe el valor de la variable de entorno $MANPATH y hace que la opción "-m" sea ignorada.

[English]
.........................................................................................................
Con la bandera "-P <paginador>" o "--pager=<paginador>"
	Especifica que paginador de salida se ha de usar. De forma predeterminada, "man" usa pager. Esta opción sobrescribe el valor de la variable de entorno $PAGER y no se puede usar a la vez que "-f" o "-k".
[English]
.........................................................................................................
Con la bandera "-r <prompt>" o "--prompt=<prompt>"
	Si se usa una versión reciente del paginador "less", "man" intentará fijar el prompt y alguna de sus opciones de forma inteligente. El prompt predeterminado será

              Página de Manual nombre(sección) línea x

              donde  nombre  denota  el  nombre  de la página de manual, sección denota la sección en la que se ha encontrado dicha página y x, el renglón  actual.   Esto  se consigue usando la variable de entorno $LESS.

              Si se suministra una cadena mediante la opción -r se sobrescribe este comportamiento predeterminado. La cadena puede contener el texto $MAN_PN que se convertirá en el nombre de la página de manual presentada y su sección rodeada de '(' y ')'. Así, la cadena que produce el comportamiento predeterminado se podría expresar como

              \ Página\ del\ manual\ \$MAN_PN\ ?ltlínea\ %lt?L/%L.:
              \ byte\ %bB?s/%s..?\ (END):?pB %pB\\%.

              La  cadena  se  presenta  en  dos líneas para facilitar su lectura
              solamente.  Para entender su significado por favor vea  la  página
              de manual de less(1).  La cadena de prompt es evaluada primero por
              la shell. Todas las dobles comillas comillas invertidas  y  barras
              invertidas  del  prompt deben ser precedidas de '\'. Si se termina
              la cadena de prompt con '\$', se podrán añadir posteriormente  más
              opciones  de  less.   De forma predeterminada man usa las opciones
              -ix8.

[English]
.........................................................................................................
Con la bandera "-7" o "--ascii"
	Si está viendo una página de manual en código ascii(7) puro o en una terminal o emulador de
	terminal de 7 bits, algunos caracteres puede que no se impriman correctamente si usa el descriptor
	de dispositivo latin1(7) con GNU nroff. Esta opción permite que las páginas en puro ascii puedan
	ser presentadas en ascii en un dispositivo latin1. No traducirá ningún texto en latin1. La siguiente
	tabla explica las traducciones que se realizan.

	Descripción              Octal   latin1   ascii
	────────────────────────────────────────────────
	guión de continuación     255      ‐        -
	marcador (punto medio)    267      ·        o
	acento agudo              264      ´        '
	signo de multiplicar      327      ×        x

	Si la columna de latin1 se imprime correctamente, su terminal puede ser usada con el conjunto latin1
	de caracteres y esta opción no es necesaria. Si las columnas latin1 y ascii son idénticas, está 
	leyendo la página usando esta opción o bien man no ha formateado la página usando la descripción de
	dispositivo latin1. Si la columna latin1 no existe o está mal impresa, es posible que necesite esta
	opción.

	Esta opción es ignorada cuando se usa a la vez que "-t", "-T" o "-Z" y puede ser completamente
	inútil si el nroff usado es distinto del de GNU.

[English]
'........................................................................................................
Con la bandera "-S <lista>" o "--sections=<lista>"
              Lista es un compendio de secciones separadas por "dos puntos"  que
              determina  el  orden  en  el  que  se  consultan las secciones del
              manual. Esta opción  sobrescribe  el  valor  de  la  variable  de
              entorno $MANSECT.

[English]
.........................................................................................................
Con la bandera "-a" o "--all"
              Por  defecto, man termina después de presentar la página de manual
              que considera más apropiada de entre las encontradas. Si usa  esta
              opción,  forzará  a  man  a  presentar todas las páginas de manual
              cuyos nombres respondan a los criterios de la búsqueda.

[English]
.........................................................................................................
Con la bandera "-c" o "--catman"
              Esta opción no es de uso general y debería  ser  usada  únicamente
              por el programa catman .

[English]
.........................................................................................................
Con la bandera "-d" o "--debug"
              En  vez  de  presentar  páginas  de manual, imprime información de
              depurado.

[English]
.........................................................................................................
Con la bandera "-e <sub-extensión>" o "--extensión=<sub-extensión>"
              Algunos sistemas  como  por  ejemplo  el  paquete  Tcl  incorporan
              grandes  paquetes  de  páginas de manual a la jerarquía principal.
              Para evitar tener dos páginas con un mismo nombre como por ejemplo
              exit(3), las páginas de Tcl han sido por lo general asignadas a la
              sección l.   Esta  solución  es  desafortunada  y  actualmente  es
              posible  poner las páginas en la sección correcta y asignarles una
              'extensión' específica, en este caso, exit(3tcl).  En  condiciones
              normales,  man  preferirá  presentar  exit(3)  a exit(3tcl).  Para
              solventar esta situación y evitar tener que saber  a  que  sección
              pertenece  la  pagina  requerida,  es  posible  darle  a  man una
              extensión  sub-extensión  indicando  a  que  paquete   tiene   que
              pertenecer  dicha  página.  Así  con  el  ejemplo  anterior, basta
              suministrar la opción -e tcl  a  man  para  que  se  restrinja  la
              búsqueda a páginas que tengan *tcl como extensión.

[English]
.........................................................................................................
Con la bandera "-f" o "--whatis"
              Es equivalente a whatis.  Presenta una breve descripción tomada de
              la página de manual cuando ésta está disponible.  Véase  whatis(1)
              para más detalles.

[English]
.........................................................................................................
Con la bandera "-h" o "--help"
              Imprime un mensaje de ayuda y termina.

[English]
.........................................................................................................
Con la bandera "-k" o "--apropos"
              Es  equivalente a apropos.  Realiza una búsqueda de palabras clave
              entre las descripciones breves de las páginas de manual y presenta
              las páginas identificadas. Véase apropos(1) para más detalles.

[English]
.........................................................................................................
Con la bandera -m sistema[,...], --systems=sistema[,...]
              Si  este  sistema  tiene  acceso  a  las páginas de manual de otro
              sistema operativo, se puede  activar  su  búsqueda  mediante  esta
              opción.   Para  buscar en las páginas de NuevoSO, use la opción -m
              NuevoSO.  El sistema especificado puede ser una lista  de  nombres
              de  sistemas  operativos  separada  por  comas.   Para  incluir el
              sistema operativo nativo en la búsqueda  basta  incluir  man  como
              nombre de sistema en la lista de argumentos.

              El  valor  de esta opción sobrescribe el contenido de la variable
              del entorno $SYSTEM.

[English]
.........................................................................................................
Con la bandera -p cadena, --preprocessor=cadena
              Especifica la secuencia de preprocesadores  a  ejecutar  antes  de
              nroff  o  troff/groff.   No  todas  las  instalaciones  tienen  el
              conjunto   completo   de   preprocesadores.    Algunos   de    los
              preprocesadores  y  de las letras usadas para designarlos son: eqn
              (e), grap (g), pic (p), tbl (t), vgrind (v), refer (r).  El  valor
              de  esta  opción  sobrescribe  al  contenido  de  la variable del
              entorno $MANROFFSEQ.   zsoelim  es  ejecutado  siempre  en  primer
              lugar.

[English]
.........................................................................................................
Con la bandera -u, --update
              Los  cachés  de los índices de las bases de datos son actualizados
              'sobre la marcha', es decir, no es necesario que mandb se  ejecute
              periódicamente  para  mantener  la  consistencia. Si la página que
              busca no se encuentra en los cachés o si se emplea la opción -a  ,
              man  automáticamente comprobará la consistencia de los directorios
              para asegurar que los  cachés  son  una  representación  fiel  del
              sistema de ficheros.  Para forzar una comprobación de consistencia
              de los 'inodos' anterior a la búsqueda, use la opción -u.

[English]
.........................................................................................................
Con la bandera -t, --troff
              Usa  groff  -mandoc  para  formatear  las  páginas  de  manual   y
              escribirlas   en   el  stdout.   Esta  opción  es  innecesaria  en
              conjunción con -T o -Z.

[English]
.........................................................................................................
Con la bandera -T dispositivo, --troff-device [=dispositivo]
              Esta opción permite  cambiar  la  salida  generada  por  groff  (o
              incluso  la  de  troff)  de  forma  que  sea más apropiada para un
              dispositivo diferente del predeterminado.  Implica la  opción  -t.
              Posibles  ejemplos (incluidos en Groff-1.17) son, dvi, latin1, ps,
              utf8, X75 y X100.

[English]
.........................................................................................................
Con la bandera -Z, --ditroff
              groff ejecuta troff y  usa  un  post-procesador  para  generar  la
              salida  apropiada  para  el  dispositivo  seleccionado.  Si  groff
              -mandoc es groff, esta opción se pasa a groff evitando el  uso  de
              un post-procesador.  Implica la opción -t.

[English]
.........................................................................................................
Con la bandera -w, --where, --location
              En  vez  de  imprimir  las  páginas de manual, sólo imprime el/los
              lugar(es) en  los  que  se  encuentran  los  ficheros  que  serían
              formateados  o impresos. Si se trata de un fichero cat, se imprime
              también la situación del fichero fuente nroff.

[English]
.........................................................................................................
Con la bandera -V, --version
              Imprime la versión y el autor.

-~-~-~-~-	-~-~-~-~-

Exit status:
	0	La ejecución del programa ha terminado con éxito.
	1	Error de uso, sintaxis o del fichero de configuración.
	2	Error operacional.
	3	Un proceso hijo ha terminado con estatus no-nulo.
	16	Al menos una de las/los páginas/ficheros/palabras clave no existe o no ha producido ninguna
		identificación positiva.

SEE ALSO
       mandb(8), manpath(1),  manpath(5),  apropos(1),  whatis(1),  catman(8),
       less(1),   nroff(1),   troff(1),  groff(1),  zsoelim(1),  setlocale(3),
       man(7), ascii(7), latin1(7), FSSTND.
.........................................................................................................
Estatus de salida:
	0	La ejecución del programa ha terminado con éxito.
	1	Error de uso, sintaxis o del fichero de configuración.
	2	Error operacional.
	3	Un proceso hijo ha terminado con estatus no-nulo.
	16	Al menos una de las/los páginas/ficheros/palabras clave no existe o no ha producido ninguna
		identificación positiva.

-~-~-~-~-	-~-~-~-~-

VÉASE TAMBIÉN
       mandb(8), manpath(1),  manpath(5),  apropos(1),  whatis(1),  catman(8),
       less(1),   nroff(1),   troff(1),  groff(1),  zsoelim(1),  setlocale(3),
       man(7), ascii(7), latin1(7), FSSTND.
--------------------------------------
--------------------------------------
El comando "info" sirve para mostrar información de algún comando
Es un visor de solo texto para archivos en la salida de formato de información de Textinfo (formato
oficial de documentación del proyecto GNU).

Sintaxis:
~$ info <comando>

Salida:
q
--------------------------------------
--------------------------------------
El comando "help" sirve para mostrar información de algún comando. Help es comando propio de Bash,
utiliza estructuras internas de bash para almacenar y recuperar información sobre los comando de bash.

Sintaxis:
~$ help <comando>
--------------------------------------
--------------------------------------
O puedes simplemente acceder a su ayuda que ofrecen los comandos, mediante su bandera "--help".

Sintaxis:
~$ <comando> --help
--------------------------------------
--------------------------------------
El comando "which" sirve para mostrar en pantalla la Localización de un Comando/archivo binario y se
utiliza para saber si existe un comando determinado

Sintaxis:
~$ which <comando>
--------------------------------------
--------------------------------------
El comando "whoami" sirve para mostrar en pantalla el Identificador del usuario con el que estoy
Loggeado

Sintaxis:
~$ whoami

Ejemplo Y Pantalla:
~$ whoami
rocoelwuero
--------------------------------------
--------------------------------------
El comando "echo" sirve para mostrar en la terminal un mensaje

Sintaxis:
~$ echo "<mensaje>"
~$ echo <mensaje>

Ejemplo Y Pantalla:
~$ echo "hola"
hola

-~-~-~-~-	-~-~-~-~-

Con este comando se puede imprimir una variable en especial la cual es '?', ya que en esta variable
se guarda un valor que indica si la ejecución de un comando fue exitosa (devuelve un 0) o no (...)

~$ echo $?
--------------------------------------
--------------------------------------
El comando "history" sirve para mostrar todos los comandos ejecutados desde el inicio

Sintaxis:
~$ history
--------------------------------------
--------------------------------------
El comando "clear" sirve para limpiar la terminal, o "hacer" a un lado el texto escrito en la
terminal

Sintaxis:
~$ clear

El cual también tiene su atajo es presionando: <ctrl> + L
--------------------------------------
--------------------------------------
El comando "exit" sirve para terminar o matar (salir) el proceso o aplicación (de la terminal)
en ejecución o que esta siendo ejecutada.

Sintaxis:
~$ exit
--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|              CARPETAS              |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
El comando "pwd" sirve para mostrar en que carpeta o ruta nos encontramos, de hecho "pwd" es la
contracción de "print working directory".

Sintaxis:
~$ pwd

Ejemplo Y Pantalla:
~$ pwd
/home/rocoelwuero

En UNIX (en general) existen 2 conceptos básicos para el manejo de carpetas o directorios:
ruta absoluta y ruta relativa
[@] La absoluta o completa es desde la carpeta (directorio) raíz (madre u origen) hasta donde se
	encuentra uno posicionado.
[@] La relativa solamente puede ser la carpeta actual (un punto, .) o una atrás (dos puntos, ..),
	en otras palabras es un directorio en especifico.

A lo cual pasaremos al siguiente comando.
--------------------------------------
--------------------------------------
The "ls" command is used to show the contents of the current directory and is a contraction of "list
directory contents"

Syntax:
~$ ls [option]... [file]...

Example y Screen:
~$ ls
Documentos    Imágenes    Plantillas  Vídeos
Descargas     Escritorio  Música      Público

-~-~-~-~-	-~-~-~-~-

Or you can list a file or several.

Example y Screen:
~$ ls archivo1 archivo2
archivo1

archivo2


And it will be more useful to use it with any of the following options.

-~-~-~-~-	-~-~-~-~-

With the option or flag "-a" or "--all", it shows you all the contents of the current directory, whether
they are hidden directories or not.

Example y Screen:
~$ ls -a
.             .bash_logout  .config     .dmrc                      .gconf
..            .bashrc       .dbus       Documentos                 .gksu.lock     Imágenes    .mozilla  .profile    .themes
Aplicaciones  .cache        Descargas   Escritorio                 .ICEauthority  .linuxmint  Música    Público     Vídeos
.icons        .local        Plantillas  .sudo_as_admin_successful  .Xauthority

-~-~-~-~-	-~-~-~-~-

With the "-l" flag, it displays the content in the form of a list and at the same time shows some
metadata.

Example y Screen:
~$ ls -l
total 36
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 14 13:26 Aplicaciones
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 11:00 Descargas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Documentos
drwxr-xr-x 4 rocoelwuero rocoelwuero 4096 jun 15 11:09 Escritorio
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Imágenes
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Música
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Plantillas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Público
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Vídeos

-~-~-~-~-	-~-~-~-~-

And putting these 2 flags together gives a very used combination.

Example y Screen:
~$ ls -la
total 180
drwxr-xr-x 20 rocoelwuero rocoelwuero  4096 jun 15 10:30 .
drwxr-xr-x  3 root        root         4096 jun 15 14:54 ..
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 14 13:26 Aplicaciones
-rw-r--r--  1 rocoelwuero rocoelwuero   220 jun 15 14:54 .bash_logout
-rw-r--r--  1 rocoelwuero rocoelwuero  4000 jun 15 14:54 .bashrc
drwxr-xr-x 12 rocoelwuero rocoelwuero  4096 jun 15 11:25 .cache
drwxr-xr-x 16 rocoelwuero rocoelwuero  4096 jun 15 11:57 .config
drwx------  3 rocoelwuero rocoelwuero  4096 jun 15 09:57 .dbus
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 11:00 Descargas
-rw-r--r--  1 rocoelwuero rocoelwuero    23 jun 15 09:57 .dmrc
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Documentos
drwxr-xr-x  4 rocoelwuero rocoelwuero  4096 jun 15 11:09 Escritorio
drwx------  3 rocoelwuero rocoelwuero  4096 jun 15 10:14 .gconf
-rw-r-----  1 rocoelwuero rocoelwuero     0 jun 15 09:58 .gksu.lock
-rw-------  1 rocoelwuero rocoelwuero   426 jun 15 09:57 .ICEauthority
drwxrwxr-x  2 rocoelwuero rocoelwuero  4096 jun 15 10:10 .icons
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Imágenes
drwxrwxr-x  3 rocoelwuero rocoelwuero  4096 jun 15 09:57 .linuxmint
drwx------  3 rocoelwuero rocoelwuero  4096 jun 15 09:57 .local
drwxr-xr-x  3 rocoelwuero rocoelwuero  4096 jun 15 14:54 .mozilla
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Música
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Plantillas
-rw-r--r--  1 rocoelwuero rocoelwuero   655 jun 15 14:54 .profile
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Público
-rw-r--r--  1 rocoelwuero rocoelwuero     0 jun 15 09:59 .sudo_as_admin_successful
drwxrwxr-x  2 rocoelwuero rocoelwuero  4096 jun 15 10:10 .themes
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Vídeos
-rw-------  1 rocoelwuero rocoelwuero    78 jun 15 09:57 .Xauthority
-rw-------  1 rocoelwuero rocoelwuero 72933 jun 16 00:15 .xsession-errors

-~-~-~-~-	-~-~-~-~-

And finally with "-h" the weight of each file shows it in a format that we can easily understand, but it
must necessarily be accompanied by the "-l" flag.

Example y Screen:
~$ ls -lh
total 36K
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 14 13:26 Aplicaciones
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 11:00 Descargas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Documentos
drwxr-xr-x 4 rocoelwuero rocoelwuero 4.0K jun 15 11:09 Escritorio
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Imágenes
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Música
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Plantillas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Público
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Vídeos
.........................................................................................................
El comando "ls" sirve para mostrar el contenido del directorio actual y es contracción de "list
directory contents"

Sintaxis:
~$ ls [opción]... [archivo]...

Ejemplo Y Pantalla:
~$ ls
Documentos    Imágenes    Plantillas  Vídeos
Descargas     Escritorio  Música      Público

-~-~-~-~-	-~-~-~-~-

O puedes listar un archivo o varios.

Ejemplo Y Pantalla:
~$ ls archivo1 archivo2
archivo1

archivo2


Y sera más útil usarlo con alguna de las siguientes opciones.

-~-~-~-~-	-~-~-~-~-

Con la opción o bandera "-a" o "--all", te muestra todo el contenido del directorio actual, ya sean
directorios ocultos o no.

Ejemplo Y Pantalla:
~$ ls -a
.             .bash_logout  .config     .dmrc                      .gconf
..            .bashrc       .dbus       Documentos                 .gksu.lock     Imágenes    .mozilla  .profile    .themes
Aplicaciones  .cache        Descargas   Escritorio                 .ICEauthority  .linuxmint  Música    Público     Vídeos
.icons        .local        Plantillas  .sudo_as_admin_successful  .Xauthority

-~-~-~-~-	-~-~-~-~-

Con la bandera "-l", muestra el contenido en forma de lista y a la ves que muestra algunos metadatos.

Ejemplo Y Pantalla:
~$ ls -l
total 36
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 14 13:26 Aplicaciones
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 11:00 Descargas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Documentos
drwxr-xr-x 4 rocoelwuero rocoelwuero 4096 jun 15 11:09 Escritorio
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Imágenes
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Música
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Plantillas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Público
drwxr-xr-x 2 rocoelwuero rocoelwuero 4096 jun 15 09:57 Vídeos


Primera columna:
	Tipos de archivo (primer carácter):
		-   Archivo común
		d   Directorio
		l   Enlace simbólico
		s   Socket
		p   Pipe
	Permisos del usuario propietario
	Permisos del grupo perteneciente
	Permisos de otros usuarios

Segunda columna:
	Enlaces al archivo

Tercera columna:
	Usuario propietario

Cuarta columna:
	Grupo perteneciente

Quinta columna:
	Peso del archivo (aunque sea carpeta, solo es como archivo, no incluye su contenido)

Sexta columna:
	Mes de creación ¿O modificación?

Séptima columna:
	Día de creación ¿O modificación?

Octaba columna:
	Hora de modificación

Novena columna:
	Nombre del archivo

-~-~-~-~-	-~-~-~-~-

Y juntando estas 2 banderas da una combinación muy utilizada.

Ejemplo Y Pantalla:
~$ ls -la
total 180
drwxr-xr-x 20 rocoelwuero rocoelwuero  4096 jun 15 10:30 .
drwxr-xr-x  3 root        root         4096 jun 15 14:54 ..
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 14 13:26 Aplicaciones
-rw-r--r--  1 rocoelwuero rocoelwuero   220 jun 15 14:54 .bash_logout
-rw-r--r--  1 rocoelwuero rocoelwuero  4000 jun 15 14:54 .bashrc
drwxr-xr-x 12 rocoelwuero rocoelwuero  4096 jun 15 11:25 .cache
drwxr-xr-x 16 rocoelwuero rocoelwuero  4096 jun 15 11:57 .config
drwx------  3 rocoelwuero rocoelwuero  4096 jun 15 09:57 .dbus
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 11:00 Descargas
-rw-r--r--  1 rocoelwuero rocoelwuero    23 jun 15 09:57 .dmrc
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Documentos
drwxr-xr-x  4 rocoelwuero rocoelwuero  4096 jun 15 11:09 Escritorio
drwx------  3 rocoelwuero rocoelwuero  4096 jun 15 10:14 .gconf
-rw-r-----  1 rocoelwuero rocoelwuero     0 jun 15 09:58 .gksu.lock
-rw-------  1 rocoelwuero rocoelwuero   426 jun 15 09:57 .ICEauthority
drwxrwxr-x  2 rocoelwuero rocoelwuero  4096 jun 15 10:10 .icons
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Imágenes
drwxrwxr-x  3 rocoelwuero rocoelwuero  4096 jun 15 09:57 .linuxmint
drwx------  3 rocoelwuero rocoelwuero  4096 jun 15 09:57 .local
drwxr-xr-x  3 rocoelwuero rocoelwuero  4096 jun 15 14:54 .mozilla
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Música
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Plantillas
-rw-r--r--  1 rocoelwuero rocoelwuero   655 jun 15 14:54 .profile
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Público
-rw-r--r--  1 rocoelwuero rocoelwuero     0 jun 15 09:59 .sudo_as_admin_successful
drwxrwxr-x  2 rocoelwuero rocoelwuero  4096 jun 15 10:10 .themes
drwxr-xr-x  2 rocoelwuero rocoelwuero  4096 jun 15 09:57 Vídeos
-rw-------  1 rocoelwuero rocoelwuero    78 jun 15 09:57 .Xauthority
-rw-------  1 rocoelwuero rocoelwuero 72933 jun 16 00:15 .xsession-errors

-~-~-~-~-	-~-~-~-~-

Y finalmente con "-h" el peso de cada archivo lo muestra en un formato que podamos comprender
fácilmente, pero necesariamente tiene que venir acompañado con la bandera "-l".

Ejemplo Y Pantalla:
~$ ls -lh
total 36K
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 14 13:26 Aplicaciones
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 11:00 Descargas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Documentos
drwxr-xr-x 4 rocoelwuero rocoelwuero 4.0K jun 15 11:09 Escritorio
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Imágenes
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Música
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Plantillas
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Público
drwxr-xr-x 2 rocoelwuero rocoelwuero 4.0K jun 15 09:57 Vídeos


# ls -F : ver los ficheros de un directorio.
# ls -l : mostrar los detalles de ficheros y carpetas de un directorio.
# ls -lh : Mostrar los detalles de archivos y directorios y el tamaño en Kb, Mb, Gb o Tb.
# ls -a : Mostrar los ficheros ocultos.
# ls *[0-9]* : mostrar los ficheros y carpetas que contienen números.
# ls -ltr : Mostrar los archivos ordenados por fecha los mas recientes al final.
# ls -lhSr : Mostrar los archivos por tamaño, los mas grandes al final (en Kb, Mb, Gb o Tb)
# ls -l –full-time : Mostrar detalles de archivos y directorios con la fecha completa
--------------------------------------
--------------------------------------
El comando "getfacl Logs" te muestra solamente ciertos metadatos

Sintaxis:
~$ getfacl {<archivo>|<carpeta>} ...


Ejemplo y pantalla:
~$ ll|grep Logs
drwx------  2 rocoelwuero rocoelwuero  12288 ene 10 15:01 Logs/

~$ getfacl Logs
# file: Logs
# owner: rocoelwuero
# group: rocoelwuero
user::rwx
group::---
other::---
.........................................................................................................
El comando "mkdir" sirve para Crear Directorios y es contracción de "make directory".

Sintaxis:
~$ mkdir [bandera]... <directorio> ...

# mkdir -p /tmp/dir1/dir2: crear la ruta de directorios, cualquiera que no exista se crea.
# mkdir -m 777 dir1 : crear un directorio y asignar los permisos para ese directorio

-~-~-~-~-	-~-~-~-~-

With the flag "-m <ownerPermission><groupPermission><otherPermission>" or
"--mode=<ownerPermission><groupPermission><otherPermission>", change the file permissions.

       -p, --parents
              no error if existing, make parent directories as needed

-~-~-~-~-	-~-~-~-~-

       -v, --verbose
              print a message for each created directory

-~-~-~-~-	-~-~-~-~-

       -Z     set SELinux security context of each created directory to the default type

-~-~-~-~-	-~-~-~-~-

       --context[=CTX]
              like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX

-~-~-~-~-	-~-~-~-~-

       --help display this help and exit

-~-~-~-~-	-~-~-~-~-

       --version
              output version information and exit
.........................................................................................................
Con la bandera "-m <permisoPropietario><permisoGrupo><permisoOtros>" o
"--mode=<permisoPropietario><permisoGrupo><permisoOtros>", cambiar los permisos del archivo.

Ejemplo Y Pantalla:
~$ mkdir -m 000 hola && ll | grep hola
d---------  2 rocoelwuero rocoelwuero      4096 sep 28 14:49 hola/

	NOTA "N1"
			Si aun No has encontrado
			la Parte donde se te
			Indica que Busques esta
			Nota, te recomiendo que
			aun no la Veas, hasta
			que llegues a dicha Parte.
/*
	Esta Nota es para Mostrar la forma de crear
	un directorio ya con permisos establecidos.
	Usando el comando "&&" que "une" la ejecución
	del comando "mkdir" con la de "ll", el cual
	es un alias de "ls -alF", las impresiones en
	la terminal son redirigidas hacia el comando
	"grep".
*/

-~-~-~-~-	-~-~-~-~-

Exit status:
	0
.........................................................................................................
Estatus de salida:
	0

-~-~-~-~-	-~-~-~-~-

AUTHOR:
		Written by David MacKenzie.

REPORTING BUGS:
		GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
		Report mkdir translation bugs to <http://translationproject.org/team/>

COPYRIGHT:
		Copyright © 2016 Free Software Foundation, Inc. License GPLv3+: GNU GPL version 3 or later
			<http://gnu.org/licenses/gpl.html>
		This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the
			extent permitted by law.

SEE ALSO:
		mkdir(2)

		Full documentation at: <http://www.gnu.org/software/coreutils/mkdir>
		or available locally via: info '(coreutils) mkdir invocation'
.........................................................................................................
AUTOR:
		Escrito por David MacKenzie.

REPORTANDO BUGS:
		Ayuda en línea de coreutils de GNU: <http://www.gnu.org/software/coreutils/>
		Reportar errores de traducción mkdir a <http://translationproject.org/team/>

DERECHOS DE AUTOR:
		Derechos de autor © 2016 Free Software Foundation, Inc. Licencia GPLv3 +: GNU GPL versión 3 o
			posterior <http://gnu.org/licenses/gpl.html>
		Este es un software gratuito: eres libre de cambiarlo y redistribuirlo. NO HAY GARANTÍA, en la
			medida en que lo permita la ley.

VER TAMBIÉN:
		mkdir(2)

		Documentación completa en: <http://www.gnu.org/software/coreutils/mkdir>
		o disponible localmente a través de: info '(coreutils) mkdir invocation'
--------------------------------------
--------------------------------------
El comando "rmdir" sirve para Borrar Directorios y es contracción de "remove directory"

Sintaxis:
~$ rmdir <directorio> ...

# rm -rf dir1: eliminar una carpeta llamada ‘dir1’ con su contenido de forma recursiva. (Si lo borro recursivo estoy diciendo que es con su contenido).
# rm -rf dir1 dir2: borrar dos carpetas (directorios) con su contenido de forma recursiva.
--------------------------------------
--------------------------------------
El comando "cd" sirve para cambiar o desplazarse entre directorios del sistema operativo
Es contracción de "change directory"

Sintaxis:
~$ cd {<carpeta>|<rutaAbsoluta>|<rutaRelativa>} ...

Ejemplos:

Entra al escritorio.
~$ cd Escritorio

Entra en el directorio "/home".
~$ cd /home

Retrocede un nivel.
~$ cd ..

Retrocede 2 niveles.
~$ cd ../..

Va al directorio raíz /.
~$ cd /

Va al directorio home del usuario actual /home/$USER/
~$ cd

Va al directorio user1.
~$ cd ~user1

Ir (regresar) al directorio anterior.
~$ cd –
--------------------------------------
--------------------------------------
El comando "tree" muestra los ficheros y carpetas en forma de árbol comenzando por la raíz.

Sintaxis:
~$ tree
--------------------------------------
--------------------------------------
El comando "lstree" muestra los ficheros y carpetas en forma de árbol comenzando por la raíz.



E). Shutdown, reboot, halt, poweroff

Apagar, Reiniciar, Suspender e Hibernar

--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|         ESTADO DEL SISTEMA         |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
El comando "shutdown" sirve para apagar el sistema en un tiempo especificado

Sintaxis:
~$ shutdown <opción> <tiempo> <mensajeDeAviso>

Opciones:
-rkhncft

-~-~-~-~-	-~-~-~-~-

Si deseamos que el equipo se apague inmediatamente

Sintaxis:
~$ shutdown -h now

-~-~-~-~-	-~-~-~-~-

Si deseamos que el equipo se apague en 10 minutos

Sintaxis:
~$ shutdown -h 10

-~-~-~-~-	-~-~-~-~-

Si deseamos desplegar un determinado mensaje

Sintaxis:
~$ shutdown -h 10 “El equipo será apagado, por favor guarde su trabajo”
--------------------------------------
--------------------------------------
El comando "reboot" sirve para reiniciar el equipo

Sintaxis:
~$ reboot
--------------------------------------
--------------------------------------
El comando "halt" sirve para apagar el equipo, de forma inmediata sin posibilidad de impedirlo

Podremos usar el parámetro -f para detener el proceso pero es posible que el sistema presente
inconsistencias.
--------------------------------------
--------------------------------------
El comando "poweroff" sirve para apagar la máquina, pero con la diferencia que tardara mucho más en
escribir los cambios antes de proceder con el apagado del equipo

-~-~-~-~-	-~-~-~-~-

Para forzar el apagado

Sintaxis:
~$ poweroff -f

-~-~-~-~-	-~-~-~-~-

Para registrar la llamada de reinicio en la ruta /var/log/wtmp

Sintaxis:
~$ poweroff -w


Finalmente contamos con la posibilidad de usar la combinación de teclas siguiente las cuales serán
fundamentales en caso que el equipo presente fallas o bloqueos.
Ctrl + Alt + Supr

# Apagar, Reiniciar o Cerrar Sesión (System V o anterior)
# 1.- shutdown -h now: apagar el sistema (1).
# 2.- init 0: apagar el sistema (2).
# 3.- telinit 0: apagar el sistema (3).
# 4.- halt: apagar el sistema (4).
# 5.- shutdown -h hours:minutes &: apagado planificado del sistema.
# 6.- shutdown -c: cancelar un apagado planificado del sistema.
# 7.- shutdown -r now: reiniciar (1).
# 8.- reboot: reiniciar (2).
# 9.- logout: cerrar sesión.

# Apagar, Reiniciar o Cerrar Sesión (Systemd actual)
# 1.- systemctl poweroff : apagar el sistema
# 2.- poweroff : apagar el sistema
# 3.- systemctl halt : Detiene el sistema (no lo apaga)
# 4.- halt : apagar el sistema.
# 5.- systemctl reboot : Reinicia el sistema de forma ordenada.
# 6.- reboot : reiniciar de forma ordenada.
# 7.- echo b > /proc/sysrq-trigger : Reinicia el sistema sin validar ni guardar nada (como un apagado físico al switch de encendido/apagado). Solo para emergencias.
# 8.- logout : cerrar sesión.







4. GESTIÓN DE ARCHIVOS

A). Comandos de gestión de archivos

--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|              ARCHIVOS              |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
El comando "touch" sirve para Crear un Archivo en Blanco o actualiza los metadatos de fecha de un
archivo.

Sintaxis:
~$ touch {<archivoSinExtención>|<archivoConExtención>}

-~-~-~-~-	-~-~-~-~-

Porque no son necesarias las extensiones de archivo en Linux y Mac.

Si vienes de Windows te chocará que en Linux las extensiones de archivos no son necesarias, es decir,
que el sistema operativo sabe de qué tipo de archivo se trata aunque la extensión del archivo esté
borrada. Esto se debe a las extensiones MIME.

Lo primero sería preguntarse ¿qué son las extensiones de los archivos? La mayoría de los archivos
terminan con un punto y una serie de siglas, por ejemplo los archivos PDF acaban en “.pdf” (sin
comillas), los documentos de LibreOffice Writer en “.odt”, etc. Estas extensiones permiten identificar
qué archivo está asociado a qué programa.

¿Qué son las extensiones MIME? Son una serie de especificaciones que estaban dirigidas al intercambio de
todo tipo de archivos (texto, audio, vídeo, etc.) a través de Internet y que fueran reconocidas de
inmediato. Aunque ese fue su origen, se les aplica ahora más utilidades, como es que no sea necesario
trabajar con extensiones de archivo para que estos sean reconocidos.

En concreto se trata de una información que está incrustada directamente en el archivo y que el sistema
operativo lee para elegir el programa con el que va a abrir el archivo. Esto es fácilmente comprobable
en Linux, ya que muchas veces crea el archivo sin extensión y, sin embargo, es totalmente funcional.
¿Por qué usan entonces Linux y Mac las extensiones? Básicamente por compatibilidad, porque si te llevas
un archivo sin extensión a un Windows este último no será capaz de abrirlo...

¿Qué ocurre entonces con Windows? Simplemente Windows ignora las extensiones MIME, confiando en la
extensión del archivo para la ejecución de dicho archivo por un programa u otro. Entonces la siguiente
pregunta que se te puede ocurrir es ¿por qué no veo las extensiones de archivos en Windows? Porque
Windows automáticamente oculta las extensiones de los archivos conocidos, pero eso no quiere decir que
no dependa de ellas.
--------------------------------------
--------------------------------------
El comando "rm" sirve para Borrar Archivos o Carpetas y es contracción de "remove".

Sintaxis:
~$ rm <archivo>

-~-~-~-~-	-~-~-~-~-

Con la bandera "-d" o "--dir" borra un directorio.

Sintaxis:
~$ rm --dir <carpeta>

-~-~-~-~-	-~-~-~-~-

Para borrar Directorios de Manera Forzada y Recursiva es:

Sintaxis:
~$ rm -rf {<directorio>|<directorio>/ }
--------------------------------------
--------------------------------------
El comando "seq" sirve para Genera una Secuencia de Números.

Sintaxis:
~$ seq <númeroDondeInicia> <númeroDondeTermina>
--------------------------------------
--------------------------------------
El comando "cat" sirve para Mostrar el Contenido de un Archivo o Concatena 1 o mas Archivos a la salida
estándar.

Sintaxis:
~$ cat <archivo>

-~-~-~-~-	-~-~-~-~-

Con la Opción de ">" lo Redirecciona a un Nuevo Archivo a Crear o sea se va a Copiar Todo el Contenido
del 1er Archivo al 2do Archivo.

#ESTO_ES_LA_REDIRECCIÓN_OUTPUT

Sintaxis:
~$ cat <archivo> > <nuevoArchivo>

-~-~-~-~-	-~-~-~-~-

Con la Opción de "<" lo Redirecciona al Comando Escrito.

#ESTO_ES_LA_REDIRECCIÓN_INPUT

Sintaxis:
~$ cat < <archivo>

Ejemplo Y Pantalla:
~$ cat < xD.txt
Esta es una Linea de Texto xD

-~-~-~-~-	-~-~-~-~-

Con la Opción de ">>" lo Redirecciona a un Archivo Creado o sea se va a Duplicar Todo el Contenido del
1er Archivo al Final del 2do Archivo.

#ESTO_ES_LA_REDIRECCIÓN_APPENDING

Sintaxis:
~$ cat <1er.Archivo> >> <2do.Archivo>

Ejemplo Y Pantalla:
~$ cat xD.txt >> xD_2.txt
~$ ls -l
-rw-r--r-- l rocoelwuero rocoelwuero 32 jun 13 18:57 xD_2.txt
-rw-r--r-- l rocoelwuero rocoelwuero 16 jun 13 18:57 xD.txt

El Peso de "xD_2.txt" (32bits) es el Doble de "xD.txt" (16bits)
--------------------------------------
--------------------------------------
El comando "tac" sirve para Mostrar el Contenido de un Archivo, pero de manera invertida, el final es lo
primero que se muestra y el principio es lo ultimo que se muestra.

Sintaxis:
~$ tac <archivo>
--------------------------------------
--------------------------------------
El comando "head" sirve para Mostrar las 10 Primeras Lineas del Contenido de un Archivo
#LaCabezeraDelArchivo

#OpuestoDe_Tail

Sintaxis:
~$ head <archivo>

-~-~-~-~-	-~-~-~-~-

Para mostrar de la 1era a la Linea X de Texto del Archivo la Sintaxis es la Siguiente:
 
Sintaxis:
~$ head -n <númeroDeLinea> <archivo>
--------------------------------------
--------------------------------------
El comando "tail" sirve para Mostrar las 10 Ultimas Lineas del Contenido de un Archivo.
#LaColaDelArchivo

#OpuestoDe_Head

Sintaxis:
~$ tail <archivo>
--------------------------------------
--------------------------------------
El comando "wc" sirve para Contar Lineas y se mostrara la información detallada de lo que contiene.

Sintaxis:
~$ wc <archivo>

Pantalla:
<númeroDeLineas> <númeroDePalabras> <númeroDeCaracteres> <archivo>
--------------------------------------
--------------------------------------
El comando "stat" sirve para mostrar información detallada de un archivo.

Sintaxis:
~$ stat <archivo>

Pantalla:
  Fichero: '<Indentificador_Archivo>'
  Tamaño:     <bits>	Bloques: <n>	Bloque E/S: <n>	  fichero regular
Dispositivo:  <NiIdea>	Nodo-i: <n>	Enlaces: <C>
Acceso:       (<n>/<Permisos>)	Uid: ( <n>/<DueñoArchivo>)	Gid: (<n>/<DueñoArchivo>)
Acceso:       <Fecha> <Hora>.<n> -<n>
Modificación: <Fecha> <Hora>.<n> -<n>
Cambio:       <Fecha> <Hora>.<n> -<n>
 Creación: -

Ejemplo Y Pantalla:
~ $  stat xd.txt 
  File: 'xd.txt'
  Size: 292       	Blocks: 8          IO Block: 4096   regular file
Device: 805h/2053d	Inode: 133891      Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/rocoelwuero)   Gid: ( 1000/rocoelwuero)
Access: 2018-06-16 00:41:04.741599190 -0500
Modify: 2018-06-16 00:41:04.745599190 -0500
Change: 2018-06-16 00:41:04.745599190 -0500
 Birth: -
--------------------------------------
--------------------------------------
El comando "more" sirve para Mostrar Todo el Contenido de un Archivo de Texto, solo que no se puede
regresar al Contenido ya Visualizado.

Sintaxis:
~$ more <archivo>
--------------------------------------
--------------------------------------
El comando "less" sirve para Mostrar Todo el Contenido de un Archivo de Texto, además Si se puede
regresar al Contenido ya Visualizado.

Sintaxis:
~$ less <archivo>
--------------------------------------
--------------------------------------
El comando "mv" sirve para Renombrar o Mover el Archivo.

Sintaxis, Renombrar:
~$ mv <nombreDelArchivo> <nombreDelArchivoNuevo>

Sintaxis, Mover:
~$ mv <archivo> {<rutaAbsoluta>|<rutaRelativa>}
--------------------------------------
--------------------------------------
El comando "file" sirve para Mostrar información el Tipo de Archivo que es.

Sintaxis:
~$ file {<archivo>|<rutaAbsolutaDelArchivo>|<rutaRelativaDelArchivo>} ...

Ejemplo Y Pantalla:
~$ file Criptografía.rar
Criptografía.rar: RAR archive data, v5
--------------------------------------
--------------------------------------
El comando "cal" sirve para Mostrar el Calendario.

Sintaxis:
~$ cal

-~-~-~-~-	-~-~-~-~-

Puedes mostrar el almanaque de un año en específico.

Sintaxis:
~$ cal <año>

-~-~-~-~-	-~-~-~-~-

Puedes mostrar el almanaque para el mes julio de 2016.

Sintaxis:
~$ cal <numeroMes> <año>
--------------------------------------
--------------------------------------
El comando "date" sirve para Mostrar la Fecha.
date 041217002011.00 : colocar (declarar, ajustar) fecha y hora.
--------------------------------------
--------------------------------------
El comando "reset" sirve para Resetear el Buffer de la Terminal.
--------------------------------------
--------------------------------------
El comando "find" sirve para Buscar archivos en una Jerarquía de Directorios

Sintaxis:
~$ find <archivo>
~$ find {<rutaAbsoluta>|<rutaRelativa>} -name '<posibleFragmentoDelIndentificadorDelArchivo>'

Ejemplos:
~$ find archivo.txt
~$ find /home/rocoelwuero/Descargas/ -name '*pdf'
--------------------------------------
--------------------------------------
El comando "cp" sirve para Copiar Archivos

Sintaxis:
~$ cp {<archivo>|<rutaAbsolutaDelArchivo>|<rutaRelativaDelArchivo>} <nuevoArchivo>



B). Comandos de compresión y empaquetado de archivos

----------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|   COMPRIMIDOS Y EMPAQUETADOS   |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
----------------------------------
El comando "gzip" sirve para Comprimir en un archivo ".gz".

Sintaxis:
~$ gzip <archivo>

Y te borra el archivo original.

-~-~-~-~-	-~-~-~-~-

Con la Opción "-c" es para Comprimir el Archivo y se Muestra el Terminal los Caracteres "del Binario".

Sintaxis:
~$ gzip -c <archivo>

Y si lo Redirecciona a un Archivo con el Mismo Identificador, pero con la extensión ".gz", YA se crea el
Archivo Comprimido.

Sintaxis:
~$ gzip -c <archivo> > <archivo .gz>

De tal manera que no se borrara el archivo original.

A continuación se Muestra un Ejemplo del Como se Crearía el Archivo .gz Y se Mostrara la Diferencia del
Peso en Mega Bytes del Archivo ".gz".

Ejemplo Y Pantalla:
~$ gzip -c 1_Millon.txt > 1_Millon.txt.gz && ls -lh
total 8.7M
-rw-r--r-- 1 rocoelwuero rocoelwuero 6.6M Dec 2 04:47 1_Millon.txt
-rw-r--r-- 1 rocoelwuero rocoelwuero 2.1M Dec 2 04:47 1_Millon.txt.gz

-~-~-~-~-	-~-~-~-~-

	SECCIÓN "S1"
			Si aun No has encontrado
			la Parte donde se te
			Indica que Busques esta
			Sección, te recomiendo
			que aun no la Veas,
			hasta que llegues a dicha
			Parte.
/*
	Esta Sección es para Mostrar las DOS FORMAS de Crear
	Archivos ".gz",  con BASE a un Archivo ".tar".
*/

Sintaxis con "gzip":
~$ gzip -c <archivo .tar> > <archivo .tar + .gz>

-~-~-~-~-	-~-~-~-~-

Con la Opción "-l", muestra Información del Archivo ".gz".

Sintaxis:
~$ gzip -l <archivo .gz>
--------------------------------------
--------------------------------------
El comando "gunzip" sirve para Descomprimir Archivos ".gz", pero después de la Descompresión, se
eliminara el Archivo ".gz".

Sintaxis:
~$ gunzip <archivo .gz>

-~-~-~-~-	-~-~-~-~-

Si el Archivo Comprimido No tiene la Extensión ".gz", el Comando No lo Reconoce, por lo cual se
especifica el Tipo de Extensión que tiene.

Sintaxis:
~$ gunzip -S <extensión> <indentificadorArchivoComprimido>

Ejemplo Y Pantalla:
~$ gunzip -S .bk 1_Millon.txt.bk && ls -lh
total 6.6M
-rw-r--r-- 1 rocoelwuero rocoelwuero 6.6M Dec 2 04:47 1_Millon.txt
--------------------------------------
--------------------------------------
El comando "bzip2" sirve para Comprimir Archivos en un archivo ".bz2", y de igual forma que "gzip", se
utiliza "-c" y se redirecciona ">" al Archivo ".bz2" a Crear.

Sintaxis:
~$ bzip2 -c <indentificadorArchivo> > <indentificadorArchivo + .bz2>

Ejemplo, Pantalla Y Comparación:
~$ bzip2 -c 1_Millon.txt > 1_Millon.txt.bz2 && ls -lh
total 9.8M
-rw-r--r-- 1 rocoelwuero rocoelwuero 6.6M Dec 2 04:47 1_Millon.txt
-rw-r--r-- 1 rocoelwuero rocoelwuero 1.2M Dec 2 04:47 1_Millon.txt.bz2
-rw-r--r-- 1 rocoelwuero rocoelwuero 2.1M Dec 2 04:47 1_Millon.txt.gz
--------------------------------------
--------------------------------------
El comando "bunzip2" sirve para Descomprimir Archivos ".bz2", pero se Eliminara el Archivo ".bz2".

Sintaxis:
~$ bunzip2 <archivo .bz2>
--------------------------------------
--------------------------------------
El comando "zip" sirve para Comprimir Archivos

Sintaxis:
~$ zip <archivo>.zip <indentificadorArchivo>

Ejemplo, Pantalla Y Comparación:
~$ zip 1_Millon.txt.zip 1_Millon.txt && ls -lh
 adding: 1_Millon.tx (deflated 69%)
total 12M
-rw-r--r-- 1 rocoelwuero rocoelwuero 6.6M Dec 2 04:47 1_Millon.txt
-rw-r--r-- 1 rocoelwuero rocoelwuero 1.2M Dec 2 04:47 1_Millon.txt.bz2
-rw-r--r-- 1 rocoelwuero rocoelwuero 2.1M Dec 2 04:47 1_Millon.txt.gz
-rw-r--r-- 1 rocoelwuero rocoelwuero 2.1M Dec 2 04:47 1_Millon.txt.zip

-~-~-~-~-	-~-~-~-~-

Y con la bandera "-r" puedes comprimir una carpeta junto con su contenido.

Sintaxis:
~$ zip -r <archivo>.zip <archivo>
--------------------------------------
--------------------------------------
El comando "unzip" sirve para Descomprimir Archivos .zip

Sintaxis:
~$ unzip <archivo .zip>

Ejemplo, Pantalla Y Comparación:
~$ unzip 1_Millon.txt.zip && ls -lh
Archive: 1_Millon.txt.zip
 inflating: 1_Millon.txt
total 12M
-rw-r--r-- 1 rocoelwuero rocoelwuero 6.6M Dec 2 04:47 1_Millon.txt
-rw-r--r-- 1 rocoelwuero rocoelwuero 1.2M Dec 2 04:47 1_Millon.txt.bz2
-rw-r--r-- 1 rocoelwuero rocoelwuero 2.1M Dec 2 04:47 1_Millon.txt.gz
-rw-r--r-- 1 rocoelwuero rocoelwuero 2.1M Dec 2 04:47 1_Millon.txt.zip

-~-~-~-~-	-~-~-~-~-

Con la Opción "-l", muestra información detallada del Archivo .zip

Sintaxis:
~$ unzip -l <archivo .zip>

Ejemplo, Pantalla Y Comparación:
~$ unzip -l 1_Millon.txt.zip
Archive: 1_Millon.txt.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
  6888886  2017-07-03 16:19   1_Millon.txt
---------                     -------
  6888886                     1 file
--------------------------------------
--------------------------------------
El comando "tar" sirve para Crear un Archivo y en Su Contenido puede Tener u Otros Archivos o
Directorios, pero esto no tiene Comprensión, aunque se le puede aplicar Comprensión con las
Utilidades/Comandos/Programas/Archivos que Ya se mencionaron

Sintaxis:
~$ tar -cvf <indentificadorArchivoACrear .tar> <Identificador(es)-SeparadosXEspacio-_Archivo(s)_Y/O_Directorio(s)>

//La Opción "c" es para Crear
//La Opción "v" es para Ver el Detalle del Proceso
//La Opción "f" es para Indicar que va a trabajar con un Archivo

-~-~-~-~-	-~-~-~-~-

Y con la Opción "t" es para enlistar el Contenido de un Archivo .tar, con esta Opción NO se Extrae
el Contenido, sino solo se ENLISTA

Sintaxis:
~$ tar -tvf <Indentificador_Archivo .tar>

/*
	Aunque También sirve para Archivos .tar.gz y
	su Demostración se ENCUENTRA en la Parte de Abajo,
	en la SECCIÓN "S2"
*/

-~-~-~-~-	-~-~-~-~-

Con la Opción "x" es para Extraer el Contenido del Archivo .tar Y después de la Extracción del
Contenido, NO se Elimina el Archivo .tar

Sintaxis:
~$ tar -xvf <Indentificador_Archivo .tar>

-~-~-~-~-	-~-~-~-~-

Con la Opción "z" es para "Zipear" o Indicar que va a Trabajar con Archivos .gz, o sea va a Utilizar
la Utilería de "gzip"
NOTA: En la Sintaxis del Comando con sus Parámetros, se puede especificar otra Extensión que No sea
	la de .gz, pero en Realidad seguirá Siendo un Archivo .tar.gz

Sintaxis:
~$ tar -cvzf <Indentificador_Archivo .tar + .gz> <Indentificador_Archivo .tar>

//Aunque También sirve de la MANERA que se ENCUENTRA en la SECCIÓN "S1"

-~-~-~-~-	-~-~-~-~-

	SECCIÓN "S2"
			Si aun No has encontrado
			la Parte donde se te
			Habla sobre Archivos .tar
			Comprimidos con "gzip",
			te recomiendo que aun no
			la Veas, hasta que
			llegues a dicha Parte
/*
	Esta Sección es para Mostrar el Como se Enlista
	el Contenido de un Archivo .tar.gz
*/

Sintaxis:
~$ tar -tvf <Indentificador_Archivo .tar.gz>



C). Comandos de linkeos

-----------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|          ENLACES          |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
-----------------------------

El comando "ln", es para Crear Links Simbólicos

-~-~-~-~-	-~-~-~-~-

"Shork" Link (Link Suave)
Con la Opción "s" , es para crear un "Atajo" o un "Acceso Directo"

Sintaxis:
~$ ln -s <Ubicación + Archivo>

Ejemplo Y Pantalla:
~$ ln -s /home/rocoelwuero/Desktop/Cien_A_Cien.txt && ls -li
total 20
1592099 lrwxrwxrwx 1 rocoelwuero rocoelwuero 35 jul 18 19:11 Cien_A_Cien.txt -> /home/rocoelwuero/Desktop/Cien_A_Cien.txt

NOTA: Este "Cien_A_Cien.txt" que esta en esta Sección, "(...) jul 18 19:11
	Cien_A_Cien.txt -> (...)", deberá aparecer de color Azul Claro, denotando
	que es un Link Suave, además de que con la Flecha "->" se indica que
	apunta al Siguiente Archivo.
	Y por ultimo, Cuando se Lista el Contenido, en la Parte de los Permisos,
	al Principio aparece una "l", indicando que es un Link Simbólico-Suave

-~-~-~-~-	-~-~-~-~-

"Hard" Link (Link Duro)
Y sin alguna Opción, es para crear una "Referencia" o una "Imagen Duplicada" del Archivo en la Misma
Ubicación del Disco Duro. En otras Palabras, el Archivo es "Clonado", NO Copiado, ya que esta en la
Misma Ubicación del Disco Duro.

Sintaxis:
~$ ln <Ubicación + Archivo>

Ejemplo Y Pantalla:
~$ ln /home/rocoelwuero/Desktop/r.txt && ls -li && ls -li /home/rocoelwuero/Desktop
total 20
1589476 -rw-r--r-- 1 rocoelwuero rocoelwuero 12 jul  3 12:43 r.txt
total 20
1589476 -rw-r--r-- 1 rocoelwuero rocoelwuero 12 jul  3 12:43 r.txt

NOTA: Este "Cien_A_Cien.txt" de la Carpeta Actual, YA NO deberá aparecer de
	color Azul Claro, denotando que seria un Link Suave, y tampoco tiene la
	Flecha "->" se indica que apunta a un Archivo X.
	Y por ultimo, Cuando se Lista el Contenido, en la Parte de los Permisos,
	al Principio NO aparece la "l", indicando que sería un Link Simbólico-Suave,
	y también en la parte de la Ubicación se Nota Claramente que tiene la
	Misma Ubicación.
--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|            LOS CHECKSUMS           |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
Son para Verificar la Integridad de los Archivos Puestos en Internet

El Primer comando es "md5sum", es de 128 Bits

El siguiente Comando es "sha256sum", es de 256 Bits

El siguiente Comando es "sha1sum"

El siguiente Comando es "sha224sum"

El siguiente Comando es "sha384sum"

El siguiente Comando es "sha512sum", es de 512 Bits

El siguiente Comando es "shasum"


Escribes el Comando Deseado, SIN PARÁMETROS/ARGUMENTOS/Archivos/alguna ruta de un archivo, y aparecerá el
Cursor Parpadeando, estará Esperando a que le Ingresemos Caracteres para Comprobar su Integridad.
Para Salir solamente Aprieta "Ctrl + D" y te arrojara el Resultado o la Función Alfanumérica de
Comprobación. #SuHashs



D). Editores de Texto

Es un programa que permite crear y modificar archivos de texto, existen 2 tipos principales:
A) Sin formato (Texto plano)
B) Con formato (Para crear documentos)
-------------------------------------------------------------------
i.   Editor Pico

Pico (Pine composer) es un editor de texto para Unix y sistemas basados en Unix. Está integrado con
el cliente de correo electrónico Pine. Fue diseñado por la Oficina de Computación y Comunicaciones de
la Universidad de Washington.

Desde el FAQ de Pine: "El "Pine's message composition editor" está disponible como un programa
separado autónomo (stand-alone), llamado PICO. Pico es muy simple de usar, ofrece justificación de
párrafos, cortar/pegar y corrector ortográfico..."

Pico no soporta el manejo de varios archivos simultáneamente y no puede realizar una búsqueda y
reemplazo a través de múltiples archivos. Tampoco puede copiar texto de una fila a otra, aunque es
posible leer texto dentro del editor desde un archivo en su directorio de trabajo. Pico también
soporta operaciones de búsqueda y reemplazo.

Este comando está en desuso y no está disponible en las versiones recientes de Linux.
-------------------------------------------------------------------
-------------------------------------------------------------------
ii.  Editor Nano

El editor de texto plano "nano"

Nano (oficialmente GNU nano) es un editor de texto para sistemas Unix basado en curses. Es un clon
de Pico, el editor del cliente de correo electrónico Pine. nano trata de emular la funcionalidad y la
interfaz de fácil manejo de Pico, pero sin la integración con Pine.

nano incorpora características incluyendo resaltado colorida de sintaxis, conversión de tipos de
archivos DOS/Mac, revisor de ortografía y codificación UTF-8

Liberado bajo los términos de la GNU General Public License, nano es software libre. Con la
liberación de la versión 2.0.7 la licencia se cambió de GPLv2 a GPLv3.


Checamos si se encuentra su binario: ~$ which nano

Buscamos si se encuentra para instalarlo: ~$ aptitude search nano

Lo instalamos como root: ~# aptitude install nano


Sintaxis:
~$ nano <nombreArchivoACrear/NombreArchivoCreado/"vació">

Ejemplos:
~$ nano archivoNuevo.txt
~$ nano reporte2015.txt
~$ nano

Cuando ejecutamos este editor/comando, se nos abrirá algo como esto
_____________________________________________________________________________________________________
██GNU█nano█2.9.3██████████████████████████████████New█Buffer█████████████████████████████████████████
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯


^G Get Help ^O Write Out ^W Where Is ^K Cut Text   ^J Justify  ^C Cur Pos     M-U Undo  M-A Mark Text
^X Exit     ^R Read File ^\ Replace  ^U Uncut Text ^T To Spell ^_ Go To Line  M-E Redo  M-6 Copy Text
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
New Buffer significa que todo se esta guardando en RAM pero aun no en un archivo en el disco duro
nano inicia con un buffer vacío, normalmente ocupa menos de 1.5 MB de memoria
Sino nos aparecería algo como esto: "File: <archivo>.txt"

Aquí no se mostrarán todas las opciones, pero si las principales y algunas secundarias


Funciones especiales

Los ^ es Sinónimo de la tecla "Ctrl" + la tecla del carácter que le siga
O también se le pueden acceder a través de los F's: F1, F2, F3, etc.

^G Abrir la ayuda (F1)
^X Salir del editor nano (F2)
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
^O Guarda los cambios (F3)
	Puedes guardar el archivo en la ruta o carpeta actual, en la que ejecutaste el editor, o puedes
	especificar alguna ruta relativa o absoluta, junto con el nombre del archivo
_____________________________________________________________________________________________________
File█Name█to█Write:█<nombreDelArchivoACrear/ArchivoCreado>███████████████████████████████████████████
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
^J Justifica, Alinea el texto acorde de la geometría de la ventana de consola (F4)
^R Leer Fichero, Inserta otro archivo dentro de la localización actual del cursor (F5)
^W Busca una cadena de texto (reconoce mayúsculas) o expresión, en el archivo (F6)
^Y Página Anterior, Muestra la pantalla anterior (F7)
^V Página Siguiente, Muestra la siguiente pantalla (F8)
^K Corta texto, Corta y almacena toda la linea actual desde el inicio hasta el final (F9)
^U Pega texto, Pega el contenido cortado a la posición actual del cursor (F10)
^C Posición del cursor,	Muestra la información de linea, columna y carácter de la posición actual de
	cursor (F11)
^T Ortografía, Revisa la ortografía del contenido con el complemento spell, si está disponible (F12)
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
En este caso ( ^\ ) puede que tengas que presionar una tecla más, aparte de "Ctrl" es "alt gr"
De modo que sería: <Ctrl> + <alt gr> + <?, donde esta el \>
<alt gr> es para acceder a la opción Secundaria de la tecla, '\'
Y sirve para reemplazar una cadena que se le especifica por otra

Sintaxis:
_____________________________________________________________________________________________________
Search█(to█replace):█<cadenaABuscarEnElArchivo>██████████████████████████████████████████████████████
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Ingresas la cadena y presiona ENTER
Le mostrará la siguiente opción

Sintaxis:
_____________________________________________________________________________________________________
Replace█with:█<cadenaQueReemplazará>█████████████████████████████████████████████████████████████████
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Aquí solo escribe lo que quieras que lo reemplace y ENTER
_____________________________________________________________________________________________________
Replace█this█instance?███████████████████████████████████████████████████████████████████████████████
-----------------------------------------------------------------------------------------------------
 Y Yes           A All
 N No           ^C Cancel
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Yes: Para reemplazar la primera búsqueda y pasa a la siguiente, si es que hay
No: Para no reemplazar la primera búsqueda y pasa a la siguiente, si es que hay
All: Reemplazará todas las opciones
^C: Cancela la operación
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

Funciones secundarias

Meta+c, Cambia de soporte a la información de linea, columna y posición del carácter (Esc+c)
Meta+i, Cambia de soporte para la auto sangría de las lineas (Esc+i)
Meta+k, Cambia de soporte para el cortado de la linea completa en la posición actual del cursor
	(Esc+k)
Meta+m, Cambia de soporte de mouse para posicionar el cursor, marcación y atajo (Esc+m)
Meta+x, Muestra u oculta la lista de atajos de la parte superior de la pantalla, añadiendo más
	espacio de pantalla (Esc+x)


Reemplazar vi con nano

Aveces los usuarios prefieren usar nano que vi por su simplicidad y uso fácil, y pueden optar por
reemplazar a vi por nano como editor de texto por comandos como visudo.

Ajustando la Variable de entorno EDITOR funcionará para muchas aplicaciones, por ejemplo:
export EDITOR=nano


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
---------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
---------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iii. Editor VI

Vi (Visual) es un programa que entra en la categoría de los editores de texto, pues a diferencia de un procesador de texto no ofrece herramientas para determinar visualmente cómo quedará el documento impreso. Por esto carece de opciones como centrado o justificación de párrafos, pero permite mover, copiar, eliminar o insertar caracteres con mucha versatilidad. Este tipo de programas es frecuentemente utilizado por programadores para escribir código fuente de software.

Vi fue originalmente escrito por Bill Joy en 1976, tomando recursos de ed y ex, dos editores de texto para Unix, que trataban de crear y editar archivos, de ahí, la creación de vi.

Hay una versión mejorada que se llama Vim, pero Vi se encuentra en —casi— todo sistema de tipo Unix, de forma que conocer rudimentos de Vi es una salvaguarda ante operaciones de emergencia en diversos sistemas operativos.

Vim (del inglés Vi IMproved) esta presente en todos los sistemas UNIX.

Su autor (de Vim), Bram Moolenaar, presentó la primera versión en 1991, fecha desde la que ha experimentado muchas mejoras. La principal característica tanto de Vim como de Vi consiste en que disponen de diferentes modos entre los que se alterna para realizar ciertas operaciones, lo que los diferencia de la mayoría de editores comunes, que tienen un solo modo en el que se introducen las órdenes mediante combinaciones de teclas o interfaces gráficas.


Modos

Vim es un editor modal, lo que significa que se puede trabajar en diferentes modos para realizar una tarea determinada. Para ver en qué modo se encuentra Vim se debe de tener activada la opción showmode. A continuación se describen los----seis----modos de Vim. Los tres primeros son los modos del vi original. Los cinco modos adicionales no deben entenderse por separado, sino en combinación con el modo base.

----Modo comandos---- ¡\!
Vim empieza en modo comando, también conocido como modo normal. En este modo se pueden emplear combinaciones de teclas para, por ejemplo, copiar líneas y trabajar en el formato del texto. Éste es el modo central, desde el que se cambia a los otros modos. Si no se sabe qué se está haciendo, pulsando dos veces la tecla Escape siempre se puede volver al modo normal. Si ya se estaba en modo normal y tanto la configuración de Vim como la del terminal lo permiten, Vim emite un pitido.

----Modo inserción---- ¡\!
En modo inserción cuando se pulsan las teclas se edita el texto como en otros editores. Se puede cambiar del modo comandos al modo inserción pulsando la tecla i. Hay un gran abanico de comandos para pasar al modo inserción, que difieren sustancialmente, pues permiten por ejemplo editar al final de la línea, en un punto concreto del texto, editar borrando una palabra, entre muchas otras. Un usuario experto puede sacar un gran provecho de la existencia de esta variedad de órdenes.

En el modo inserción todas las teclas tienen alguna función además de la mera inserción, que se activan pulsando simultáneamente las teclas Tecla control o Mayúsculas. La tecla Esc es muy importante en modo inserción, pues permite cambiar de modo inserción a modo comandos.

Cambiando al modo comandos para realizar ciertas tareas se incrementa en gran medida la eficiencia en la edición, y se puede aprovechar la potencia completa de Vim.

----Modo línea de órdenes----
A este modo se accede pulsando la tecla dos puntos :. Tras los dos puntos se pueden introducir órdenes complejas, como por ejemplo buscar y reemplazar con expresiones regulares. Pulsando la tecla Esc se puede volver al modo órdenes. Las búsquedas se pueden realizar con la orden / (hacia adelante) y ? (hacia atrás). También se pueden filtrar líneas mediante !.

----Modo visual----
Este modo es una mejora respecto a vi. Mediante unas ciertas combinaciones de teclas en combinación con las teclas de movimiento del cursor, se puede marcar un área de texto, ya sea un grupo de líneas o un bloque. Una vez se tiene el texto marcado se pueden usar órdenes del modo comandos para manipularlo. Las operaciones que se pueden realizar en este modo son más simples que las del modo comandos.

----Modo selección----
Este modo empieza como el modo visual, pues hay que seleccionar un bloque de texto. Tras la selección, se puede cambiar al modo selección mediante Control-G. Una vez en el modo, si se pulsa una tecla imprimible, el texto seleccionado se borra, se termina el modo selección y aparece el símbolo correspondiente a la tecla pulsada. La selección se puede extender pulsando mayúsculas y las teclas de flechas, el comportamiento habitual en los programas de Microsoft Windows. Este modo se puede finalizar pulsando la tecla Escape.

----Modo Ex----
Este modo se asemeja al modo línea de órdenes, con la diferencia de que tras la ejecución de una orden no se vuelve al modo comandos. Se entra en este modo pulsando Q y se termina con vi. En este modo Vim imita al editor de UNIX ex, que manipulaba el texto línea a línea debido a las limitaciones de la época, en lugar de editar toda la página.


iii. Editor VI

Vi (Visual) es un programa que entra en la categoría de los editores de texto, pues a diferencia de un procesador de texto no ofrece herramientas para determinar visualmente cómo quedará el documento impreso. Por esto carece de opciones como centrado o justificación de párrafos, pero permite mover, copiar, eliminar o insertar caracteres con mucha versatilidad. Este tipo de programas es frecuentemente utilizado por programadores para escribir código fuente de software.

Vi fue originalmente escrito por Bill Joy en 1976, tomando recursos de ed y ex, dos editores de texto para Unix, que trataban de crear y editar archivos, de ahí, la creación de vi.


Modos

El editor vi tiene dos modos de operación:

Modo de comandos
En el modo de comandos, podemos desplazarnos dentro de un archivo y efectuar operaciones de edición como buscar texto, eliminar texto, modificar texto, etc. Vi suele iniciarse en modo de comandos.

Modo insertar
En el modo insertar, podemos escribir texto nuevo en el punto de inserción de un archivo. Para volver al modo de comandos, presione la tecla esc.


Sintaxis:
~$ vi

Y automáticamente nos enviará al editor de texto, para empezar a escribir solo basta con apretar cualquier tecla, para guardar se presiona la tecla "Shift" o "esc", se escribe ':', 'w' para escribir, y 'q' para salir.
O sea ":wq", y le agregamos el nombre del archivo y presiona ENTER

Ejemplo:
:wq archivo1.txt

Y para abrirlo de nuevo solo basta con escribir el siguiente comando

Sintaxis:
~$ vi <archivo>

Para iniciar a insertar texto, presiona la tecla 'I'

Y guardar es con: ":w"

Para salir sin guardar los cambios es así: ":q!"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
---------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
---------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~







5. FILTROS E INTERCONEXIÓN DE COMANDOS

A). Expresiones regulares

Las expresiones regulares, también conocidas como regex, o regexp (por su nombre en inglés, regular expressions) son secuencias de caracteres que forman un patrón de búsqueda (Es decir sirven para buscar).

El término expresión regular surgió en el contexto histórico de la informática durante el desarrollo posterior a la Segunda Guerra Mundial de la teoría de autómatas, una sub-disciplina de la informática que investiga y desarrolla modos matemáticos de computación, gracias a está disciplina tenemos compiladores.

Las expresiones regulares son sensitiveCase, es decir, distinguen entre mayúsculas y minúsculas.

TOKEN : Compone de una cadena de caracteres que tiene cierto significado por si solo.


Herramientas para usar expresiones regulares en Linux
[@] grep y derivados (egrep ,fgrep, ...)
[@] awk (Es un lenguaje de programación)
[@] sed

La mayoría de los lenguajes de programación soportan expresiones regulares.


Herramientas para usar expresiones regulares en Windows
[@] PowerGrep
[@] EditPad Pro


Caracteres especiales para expresiones regulares
┌───────────────────┬───────────────────────────────────────────────────────────┐
│ Carácter especial │   Significa o representa                                  │
├-------------------┼-----------------------------------------------------------┤
│ \t                │   Tabulador.                                              │
│ \r                │   Retorno de carro (también conocido como "enter").       │
│ \n                │   Nueva línea.                                            │
│ \f                │   Un salto de página.                                     │
│ \d                │   Un dígito del 0 al 9.                                   │
│ \D                │   Cualquier carácter que NO sea un dígito del 0 al 9.     │
│ \w                │   Cualquier carácter alfanumérico.                        │
│ \W                │   Cualquier carácter que NO sea alfanumérico.             │
│ \s                │   Un espacio en blanco.                                   │
│ \S                │   Cualquier carácter que NO sea un espacio en blanco.     │
│ \A                │   Inicio de cadena (No es un carácter sino una posición). │
│ \Z                │   Final de cadena (No es un carácter sino una posición).  │
└───────────────────┴───────────────────────────────────────────────────────────┘

ATENCIÓN, la herramienta que usaremos (grep y sus derivados, egrep, fgrep) no soporta los
metacaracteres de la tabla de arriba, por lo cual no es recomendable usarlos, empero, es posible
usarlos a través de la bandera -p que le indica a grep que estamos accediendo al soporte del Perl 
un lenguaje de programación).

Sintaxis:
~$ grep -P '\d' archivo1


¿Cómo usar grep o egrep?
Comando		caracteres a buscar o expresión regular		Nombre del archivo donde se desea buscar
grep | egrep	"GNU"										archivo1


--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|          PATRONES SIMPLES          |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
Si se desea buscar un conjunto de caracteres en partículas (un palabra) entonces simplemente podemos
escribir lo siguiente: ~$ grep "ever" archivo1

Esto significa "buscar una e seguida de una v, seguida de una e, seguida de una r"
O sea, buscar todo lo que lleve un "ever"
--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|        WILDCARDS (COMODINES)       |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
El punto ".", es un metacaracter que se interpreta como cualquier carácter SIN incluir los saltos de
línea.

Ejemplo:
~$ egrep T.m
--------------------------------------
--------------------------------------
El signo de admiración "!", se utiliza para realizar una "búsqueda anticipada negativa".

Ejemplos:
Los ejemplos para este carácter van necesariamente en conjunto con otros, es decir, no se usa solo.
--------------------------------------
--------------------------------------
El acento circunflejo "^", tiene una doble funcionalidad:
1. Como carácter individual su función es representar el inicio de la cadena.
2. Si se utiliza en conjunto complemento con otros símbolos entonces representará una negación.

Ejemplos:
egrep '^P' texto
--------------------------------------
--------------------------------------
El signo de dólar "$", representa el final de la cadena de caracteres o el final de la línea. NO
representa un carácter en especial sino una posición.

Ejemplos:
~$ egrep 'to$' texto
--------------------------------------
--------------------------------------
La barra "|", sirve para indicar una de varias opciones. Por ejemplo, la expresión regular "a|e"
encontrará cualquier "a" o "e" dentro del texto.

Ejemplo:
~$ egrep 'T(o|O)m' texto
--------------------------------------
--------------------------------------
Los corchetes "[ ]"
Tienen dos funciones:
1) La primera función es que actúan de manera similar a la barra ( "|" ) si dentro de ellos hay una
	simple secuencia de caracteres.
2) Su segunda función es definir rangos mediante el signo de guión "-" a esto se le conoce como
	grupos o clases de caracteres

Ejemplo:
~$ egrep '[0-9]' texto
--------------------------------------
--------------------------------------
Los paréntesis "( )", se utilizan para agrupar multiplés tokens, estos caracteres permiten combinar
tokens con más caracteres de las expresiones regulares, creando así filtros cada vez más específicos.

Ejemplos:
~$ egrep '(este|oeste|norte|sur)' texto
--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|    CARACTERES DE CUANTIFICACIÓN    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
El signo de interrogación "?", su función es definir que el carácter que le precede es opcional, es
decir, puede o no estar en los resultados de la búsqueda.

Ejemplos
~$ egrep 'Tom?y' texto
--------------------------------------
--------------------------------------
El asterisco "*", sirve para encontrar algo que se encuentra repetido 0 o más veces.

Ejemplo:
~$ egrep 'o*d' texto
--------------------------------------
--------------------------------------
El signo de suma "+", se utiliza para encontrar una cadena que se encuentre repetida una o más veces.

Ejemplo:
~$ egrep '[0-9]+' texto
--------------------------------------
--------------------------------------
Las llaves "{ }", estos caracteres son similares al "*" y al "+", pero permiten establecer un rango
más preciso, por ejemplo que un token se encuentre seguido de dos "c" abc{2} o que un token se
encuentre seguido por más de dos "c" abc{2,} o que el token se encuentre seguido de 2 a 5 "c"
abc{2,5}

Ejemplo:
~$ egrep 'abc{2}' texto
--------------------------------------
--------------------------------------
\< Indica el comienzo de una palabra
\> Indica el final de una palabra
--------------------------------------
--------------------------------------
Más ejemplos
Encontrar el patrón que tenga la palabra "lines" seguido de cualquier carácter:
~$ grep "lines.*empty" demo_file

Encontrar las líneas que tienen que ver con las fechas que van del 2002 al 2004
grep '200[2-4]' texto2

Encontrar las líneas que tienen que ver con las fechas con el 2002 y el 2008
grep '200[24]' texto2

Encontrar dos puntos ('':'') y que seguido de ellos NO vaya una diagonal
egrep ':[^/]' texto2

Encontrar todos los números de 4 cifras
grep -E '[0-9]{4}' texto2
egrep '[a-z]{3,6}' texto2 vs grep '\<[a-z]{3,6}\>' texto2

Encontrando fechas
egrep '[0-9]{2}[-/*][0-9][0-9][-/*][0-9]{4}' texto2
egrep '[0-9]{2}[-/*][0-9][0-9][^a-zA-Z0-9][0-9]{4}' texto2


Ejercicios en clase
1. Mostrar todas las carpetas ocultas de su carpeta de usuarios
~$ ls -a | egrep '^\..*'

2. Mostrar las carpetas ocultas del directorio del usuario que tengan la palabra "conf"
~$ ls -a | egrep '^\..*conf*'

3. Encontrar todos los directorios que terminen en vocal
~$ ls -a | egrep '.*[aeiou]$'


Concatenando filtros
ls -a | egrep '.*[aeiou]$' | egrep '^\.'
ls -a | egrep '.*[aeiou]$' | egrep '^\.' | sort -r | head -4



B). Comando grep y otros filtros



C). Uso de pipes

# L A  R E D I R E C C I Ó N  P I P E

Uno de los principios de la filosofía Unix consiste en tener aplicaciones muy pequeñas que hagan
tareas muy puntuales y que usadas en conjunto puedan realizar tareas complejas. Entonces, siguiendo
este principio debe existir una forma para que varias aplicaciones puedan interactuar entre sí, aquí
es donde entran las tuberías (pipe).

Una tubería en Linux no es más que una forma práctica de redireccionar la salida estándar de un
programa hacia la entrada estándar de otro.

El Símbolo a Utilizar para Redireccionar es "|"
En otras palabras, el Resultado del Anterior Comando (texto), Sera el Valor del Siguiente Comando
Las entradas y salidas son texto

Sintaxis:
~$ <comando> ... | <comando> ...


Aquí solo se Mostró el No. de lineas del Archivo debug

Ejemplo Y Pantalla:
~$ cat debug | wc -l
774


Ver los procesos que están corriendo en el sistema usando ps y le redireccionamos la salida a sort
para que los ordene por PID

Ejemplo:
~$ ps -a | sort



Todos estos tipos (D y E: entrada, salida y error estándar) son representados físicamente como
archivos en el sistema, pues como ya deben saber, todo en Linux son archivos.

D). Entrada y salida estándar

# L A  R E D I R E C C I Ó N
Una redirección consiste en trasladar la información de un tipo a otro, por ejemplo de la salida
estándar a la entrada estándar o del error estándar a la salida estándar.

En redirección existen 4 Tipos de Redirecciones:

1ero: Standard In (stdin)

La entrada estándar representa los datos que necesita una aplicación para funcionar, como por ejemplo
un archivo de datos o información ingresada desde la terminal y es representado en la terminal como
el tipo 0. El archivo 0.

En otras palabras es el texto que se ingresa (a un comando) desde el Teclado.

Input/Ingresar/Entrada
		0<
		<


Para contar las líneas que tiene un archivo redireccionando la entrada estándar de wc hacia un
archivo de texto:

Ejemplo:
~$ wc < archivo.txt


Ejemplo:
~$ cat 0< archivo1
--------------------------------------
--------------------------------------
2do: Standard Out (stdout)

La salida estándar es la vía que utilizan las aplicaciones para mostrarte información, allí podemos
ver el progreso o simplemente los mensajes que la aplicación quiera darte en determinado momento y
es representado en la terminal como el tipo 1. El archivo 1.

En otras palabras es el texto que sale (de un comando) hacia la Terminal.

Output/Mostrar/Salida
		1>
		>


Para redireccionar la salida de un comando y volcarla a un archivo nuevo o reemplazará un archivo:

Ejemplo:
~$ ls -la > archivo.txt


Ejemplo:
~$ ls -la 1> archivo.txt
--------------------------------------
--------------------------------------
Usando stdin y stdout al mismo tiempo

Ejemplo:
~$ cat < archivo > otro_archivo
--------------------------------------
--------------------------------------
3ero: Append

Redirige la salida a un archivo que agrega el resultado redirigido al final del archivo
Si queremos agregar la salida del comando al archivo, en lugar de reemplazarla

Append/Agregar/Anexar
		>>

Ejemplo:
~$ ls -la >> archivo.txt
--------------------------------------
--------------------------------------
4to:
		<<


https://superuser.com/questions/1003760/what-does-eof-do
--------------------------------------
--------------------------------------
En Linux, /dev/null es un archivo especial al que se envía cualquier información que quiera ser
descartada.

Se puede descartar el error estándar de un proceso

Sintaxis:
~$ <comando> 2> /dev/null


O incluso descartar su salida estándar:

Sintaxis:
~$ <comando> > /dev/null



E). Manejo de errores estándar

Standard error (stderr)

El error estándar es la forma en que los programas te informan sobre los problemas que pueden
encontrarse al momento de la ejecución y es representado en la terminal como el tipo 2.

Los errores son enviados directamente a la terminal.
Al igual que con stdout, podemos redireccionar stderr

Standard error/Error estándar
		2>

Ejemplo:
~$ ls w 2> myError.txt







6. INTRODUCCIÓN A LA ADMINISTRACIÓN EN LINUX

Tareas que un buen administrador del sistema debe de realizar:

Automatizar todo La mayoría de los administradores de sistemas son superados en numero ó bien sea
por sus usuarios, sus sistemas o ambos. En muchos casos, la automatización es la única forma de
mantenerse al día. En general, cualquier cosa realizada más de una vez se debería examinar como
un posible candidato para automatización.

He aquí algunas de las tareas comúnmente automatizadas:
[@] Verificación e informes de espacio libre en disco
[@] Respaldos
[@] Recolección de datos de rendimiento del sistema
[@] Mantenimiento de cuentas de usuarios (crear, eliminar, etc.)
[@] Funciones especificas al negocio (colocar nuevos datos al servidor web, ejecutar informes
	mensuales, trimestrales o anuales, etc.)


Documentar todo
Si se les da la opción de seleccionar entre instalar un nuevo servidor y escribir un documento
procedimental sobre como realizar copias de seguridad, el administrador promedio escogería
instalar un nuevo servidor. Aunque esto no es para nada inusual, debes documentar lo que se hace.


Comunique tanto como sea posible
Cuando se refiere a sus usuarios, nunca hay demasiado que comunicar. Tenga en cuenta que los
pequeños cambios que puedes pensar son prácticamente insignificantes, pueden confundir
completamente al asistente administrativo de Recursos Humanos.


Conocer sus recursos
La administración de sistemas es mayormente un asunto de balancear los recursos disponibles con
la gente y los programas que utilizan esos recursos. Por lo tanto, su carrera como administrador
de sistemas será corta y llena de stress a menos que entienda completamente los recursos que
tiene a su disposición.

Algunos de estos recursos pueden parecer muy obvios:
• Recursos del sistema, tales como el poder de procesamiento disponible, memoria y espacio en
	disco
• Ancho de banda
• Dinero disponible en el presupuesto para IT

Pero pueden no ser tan obvios:
• Los servicios del personal de operaciones, otros administradores de sistemas o hasta un
	asistente administrativo
• Tiempo (a veces de importancia crítica cuando el tiempo incluye cuestiones tales como la
	cantidad de tiempo durante la que se realizan los respaldos del sistema)
• Conocimiento (bien sea almacenado en libros, documentación del sistema o en el cerebro de una
	persona que ha trabajado en la compañía durante los últimos 20 años)

Lo importante es tomar en cuenta que es de gran valor llevar un inventario completo de los
recursos disponibles y mantenerlo actualizado — una falta de "consciencia situacional" sobre los
recursos disponibles a veces es peor que ninguna consciencia.


Conocer sus usuarios
Aún cuando algunas personas se encrespan con el término "usuarios" (quizás debido a que algunos
administradores de sistemas utilizan el término de forma despectiva), aquí no se utiliza con esa
connotación. Los usuarios son aquellas personas que utilizan esos sistemas y recursos sobre los
que usted tiene responsabilidad — ni más ni menos. Los usuarios son la clave en su habilidad de
administrar exitosamente sus sistemas; sin entender a sus usuarios, cómo puede entender los
recursos que estos requieren?

Por ejemplo, considera un cajero de banco. Un cajero utiliza un conjunto de aplicaciones
definidas de forma estricta y requiere poco desde el punto de vista de recursos del sistema. Por
otro lado, un ingeniero de software, puede utilizar muchas aplicaciones diferentes y siempre va a
apreciar más recursos de sistemas (para tiempos de compilación/ejecución más rápidos). Dos
usuarios completamente diferentes con necesidades completamente diferentes.

Asegúrese de aprender tanto como pueda de sus usuarios.

Informe a sus usuarios sobre lo que va a hacer
Asegúrese de advertir a sus usuarios con tiempo antes de hacer cualquier cosa. La cantidad de preaviso
necesario varía de acuerdo al tipo de cambio (actualizar un sistema operativo requerir· mucho más tiempo
de aviso que el cambio del color predeterminado de la pantalla de inicio de sesión), así como también la
naturaleza de su comunidad de usuarios (los usuarios con más inclinación tecnológica tienden a manejar
los cambios con mayor disposición que aquellos con habilidades mínimas.)

Como mínimo, debería describir:
[@] La naturaleza del cambio
[@] Cuando ocurrirá
[@] Porqué está sucediendo
[@] Aproximadamente cuánto tiempo tomará
[@] El impacto (si existe) que pueden esperar los usuarios debido al cambio
[@] La información de contacto si tienen alguna pregunta o dudas


Conocer el negocio
Bien sea que trabaje para una corporación multinacional o una comunidad pequeña del colegio,
tiene que entender la naturaleza del entorno del negocio en el que trabaja. Esto se puede reducir
a una pregunta:

¿Cuál es el propósito de los sistemas que administra?
El punto clave aquí es entender el propósito de sus sistemas en un sentido más global:

• Aplicaciones que se deben ejecutar en un período de tiempo particular, tal como al final del
	mes, trimestre o año
• Los tiempos durante los que se ha efectuado mantenimientos al sistema
• Nuevas tecnologías que se podrían utilizar para resolver viejos problemas de negocios

Al tomar en consideración la organización de su negocio, notará que sus decisiones diarias serán
mejores para sus usuarios y para usted.


La seguridad no puede ser una ocurrencia posterior
Sin importar lo que usted piense sobre el entorno en el cual se ejecutan sus sistemas, no puede
asumir la seguridad como algo garantizado. Hasta los sistemas independientes que no están
conectados a la Internet están a riesgo (obviamente los riesgos son diferentes de aquellos de un
sistema con conexiones al mundo externo).

Por lo tanto, es extremadamente importante considerar las implicaciones de seguridad en todo lo
que realice. La lista siguiente ilustra los diferentes tipos de problemas que debería considerar.
• La naturaleza de las posibles amenazas a cada uno de los sistemas bajo su cuidado
• La ubicación, tipo y valor de los datos en esos sistemas
• El tipo y la frecuencia del acceso autorizado a los sistemas


Planifique
Los administradores de sistemas que hayan seguido todos estos consejos y que hicieron lo posible
por seguirlo serán excelentes administradores — por un día. Eventualmente el entorno cambiará y
un día nuestro fantástico administrador será tomado por sorpresa. ¿La razón? Nuestro fantástico
administrador falló en planificar con tiempo.

Por supuesto, nadie puede predecir el futuro con un 100% de fidelidad. Sin embargo, con un poco
de consciencia es fácil leer las señales de muchos cambios:

• Un comentario informal durante la aburrida reunión semanal de personal sobre el comienzo de un
	nuevo proyecto, es una señal segura de que en un futuro cercano tendrá que apoyar a nuevos
	usuarios.
• Conversaciones sobre una inminente adquisición significa que probablemente usted será
	responsable de nuevos (y quizás incompatibles) sistemas en una o más ubicaciones remotas

Tener la habilidad de leer estas señales (y de responder efectivamente a ellas) hará su vida y la
de sus usuarios más fácil.


Espere lo inesperado
Mientras que la frase "espere lo inesperado" es trivial, refleja una verdad subyacente que todos
los administradores de sistemas deben entender:

Habrá ocasiones en las que será tomado por sorpresa.

Después de familiarizarse con esta incómoda realidad, ¿qué puede hacer un administrador de
sistemas preocupado? La respuesta recae en flexibilidad; hacer su trabajo de forma tal que le
pueda dar a usted y a sus usuarios la mayor cantidad de opciones. Por ejemplo, el caso de espacio
en disco. Dado que la insuficiencia constante de espacio en disco parece ser una ley física tan
seria como la Ley de Gravedad, es razonable asumir que en algún momento se le presentará la
necesidad desesperada de espacio adicional en disco ya.

¿Qué puede hacer un administrador de sistemas que espera lo inesperado en este caso? Quizás sea
posible mantener unas unidades adicionales en almacén como repuestos en caso de problemas de
hardware. Un repuesto de este tipo puede ser instalado rápidamente de forma temporal para
solucionar a corto plazo la necesidad de espacio de disco, dando tiempo para resolver el problema
de forma permanente (siguiendo el procedimiento estándar para obtener unidades adicionales, por
ejemplo).

Si trata de anticipar los problemas antes de que estos ocurran, usted estará en una mejor
posición para responder rápida y efectivamente que si dejara las cosas para ser sorprendido
cuando surja el momento.



A). Ventajas de la administración centralizada en Linux

[@] Uso gratuito: El software Linux así como las aplicaciones son de código abierto (gratuitos).
[@] Libertad: Los administradores se benefician de las libertades de gestión del sistema
[@] Seguro: Soporta el trabajo cooperativo sin que los usuarios habituales puedan dañar el núcleo
	del programa. Rara vez se ve amenazado por los cibercriminales
[@] Actualizaciones:Errores de seguridad poco habituales que se solucionan rápidamente
[@] Pocos requisitos de hardware: No requieren mucho mantenimiento.
[@] Sistema operativo multiusuario: Esto significa que permite a varios usuarios que utilicen el
	sistema simultáneamente a través de la línea de comandos o conexiones remotas (control a
	distancia).
[@] Control: Linux controla el acceso al equipo y a sus recursos a través de las cuentas de
	usuarios y grupos.
[@] Rápido: Al contar con una plataforma más estable, favorece al desempeño de aplicaciones como:
	bases de datos, aplicaciones XML, multimedia, etc.
[@] Estable: Tiene un único núcleo basado en Unix, por lo tanto es muy estable.
[@] Crecimiento: Crece mucho gracias a miles de programadores en todo el mundo.


Existen varias formas de administrar el sistema que van variando dependiendo de su facilidad o
control sobre el sistema. Básicamente, podemos administrar el sistema a través de tres formas
diferentes:

[@] Interfaces gráficas: Existen diferentes interfaces gráficas que nos permiten administrar el
	sistema de una forma fácil y sencilla. Podemos utilizar la interfaz de administración de
	X-Windows o utilizar la web de administración (webmin). Este método es el más sencillo, pero
	es el que menos control sobre el sistema nos proporciona.

[@] Terminal del sistema: Una de las ventajas de los sistemas GNU/Linux es que podemos
	administrarlo totalmente a través del intérprete de comandos o terminal del sistema. Una de
	las grandes ventajas de utilizar el terminal del sistema es que tenemos una gran flexibilidad
	a la hora de interactuar con el sistema y que podemos crear nuestros propios programas
	(scripts) para simplificar la administración del sistema.

[@] Ficheros de configuración: Por último, la modificación directa de los ficheros de
	configuración es el método que nos permite tener un mayor control del sistema. Como
	desventaja hay que destacar que para administrar el sistema de esta forma hay que conocer
	muy bien el sistema.


Se recomienda sistemas Linux para:
[@] Proyectos que NO requieran el uso de las tecnologías: ASP, ASP.NET, Access.
[@] Proyectos que hagan uso de tecnologías como C, o bien se base en PHP, Perl, o Mysql. Recuerda
	que este tipo de servicios está optimizado para entornos Linux.


La Administración de un Servidor Linux es una tarea compleja que requiere de alta capacitación
profesional.
Una correcta administración de los servidores contribuye al buen rendimiento del mismo, evita
pérdidas de tiempo y gastos innecesarios.


Alguna de las herramientas para la administración de servidores linux son:
[@] Webmin. Es un sistema web para la administración de sistemas operativos Linux o de otro tipo.
	Está escrito en Perl y simplifica las tareas administrativas. También ayuda a la hora de
	configurar Apache, MySQL y SendMail.
[@] Byobu. Se trata de un entorno terminal multitarea similar a screen.
[@] Putty: Es un cliente de acceso remoto a máquinas informáticas de cualquier tipo mediante SSH,
	Telnet o RLogin, para plataformas Windows 32bits y UNIX. (por ejemplo, si estamos en una
	máquina con un sistema Windows y deseamos acceder al prompt de otra máquina con sistema UNIX
	de nuestra red local, PuTTY nos lo permitirá.



B). Familia Linux y distribuciones para administración

Red Hat Enterprise Linux:
	Distribución comercial de Linux desarrollada por Red Hat. Ofrece una estabilidad y flexibilidad
	punteras, lo que la coloca como una de las más recomendadas para empresas y servidores.
	Con un soporte de 10 años para sus principales versiones y un soporte y capacidad de innovación sin
	rival. RHEL está basado en Fedora, de la cual Red Hat es el patrocinador principal.

Debian:
	Muy estable y 100% libre, Debian destaca por su sistema de paquetería .deb y su gestión de paquetes
	APT. Es una de las distribuciones más importantes de GNU/Linux, ya que en ella se basan gigantes
	como Ubuntu.

Ubuntu Server:
	No podía faltar la distribución de Canonical, basada en Debian y que es la más conocida de todas las
	distribuciones existentes, con una instalación muy sencilla y un excelente soporte para todo tipo de
	hardware. La última versión con soporte de larga duración (16.04) llegó en Abril de 2016 e incluye
	cinco años de soporte comercial en la versión Ubuntu Server.

Oracle Linux:
	Esta distribución que nos trae Oracle es una versión especial que parte de RHEL y a la que se le han
	incluido algunos añadidos, como una optimización especial para funcionar con bases de datos de
	Oracle. En cualquier caso la principal diferencia entre estas dos versiones es el precio, ya que
	Oracle ha decidido vender esta versión por la mitad de precio que su equivalente de Red Hat.

Fedora:
	Distribución gratuita creada y mantenida por la empresa Red Hat que utiliza el sistema de paquetería
	RPM (Red Hat Package Manager). Tiene tres versiones diferentes para escritorio, servidores y
	sistemas en la nube, y destaca por su seguridad gracias al sistema SELinux
	("Security-Enhanced Linux").

Arch Linux:
	Una distribución modular en la que empiezas desde cero y tienes que ir añadiéndole los componentes
	que quieras. No es muy apta para principiante, y utiliza pacman, su propio gestor de paquetes. Se
	trata de una Rolling Release, lo que quiere decir que todos sus componentes van actualizándose sin
	necesidad de instalar versiones nuevas del sistema operativo.

openSUSE:
	Es una de las alternativas más potente contra la familia de distribuciones basadas en Debian. Está
	disponible con los entornos de escritorio KDE y Gnome, y cuenta como una de sus mejores armas con la
	robusta herramienta de instalación y configuración YaST y el configurador gráfico SaX.

SUSE Linux Enterprise Server:
	Como en el el caso de RHEL, SUSE también está basado en Fedora y su última versión es la 12 SP2 que
	incluye un framework para Docker, un rollback completo del sistema o la posibilidad de aplicar
	parches al kernel sin necesidad de reiniciar. La empresa también proporciona un soporte 24×7 y un
	SLA para sus clientes de pago.

ClearOS:
	Por último un sistema no tan conocido como los anteriores y que también está basado en RHEL.
	Anteriormente conocido como ClarckConnect, ClearOS ha ganado influencia como una opción válida en
	los servidores de Linux por sus cuidados interfaces de administración y su excelente documentación.
	La última versión 7.2 ofrece en su versión Business soporte para las empresas.

CentOS:
	Nació como un derivado gratuito de la distribución comercial Red Hat Enterprise Linux (RHEL)
	destinada al uso empresarial. Recientemente unió las fuerzas con el propio Red Hat, y sigue siendo
	una apuesta segura para los que busquen un código de gran calidad.

Manjaro:
	Una prometedora distribución que promete llevar todo el potencial de Arch Linux al usuario menos
	experimentado. Para eso, ofrece un sistema operativo ya montado y basado en Arch, con un instalador
	sencillo como el que podemos encontrar en otras distribuciones como Ubuntu. Tiene versiones
	oficiales con los entornos de escritorio XFCE y KDE.



C). Comandos Básicos de Administración Linux
-------------------------------------------------------------------
i.  Software

El comando "uname" sirve para Mostrar Información del Sistema de Computo

-~-~-~-~-	-~-~-~-~-

Sin Opciones/Argumentos/Archivos, el Comando Devuelve el Tipo de Kernel que tiene

Ejemplo Y Pantalla:
~$ uname
Linux

-~-~-~-~-	-~-~-~-~-

Con la Opción "-a", Imprime Toda la Información, de manera Ordenada

Ejemplo Y Pantalla:
~$ uname -a
Linux debian-cliente 3.2.0-4-686-pae #1 SMP Debian 3.2.51-1 i686 GNU/Linux
                                      o
Linux kali 3.12-kali1-686-pae #1 SMP Debian 3.12.6-2kali1 (2014-01-06) i686 GNU/Linux

<kernel> <nombreMaquinaEnLaRed,FQDN> <versiónKernel> <versiónDelSO> <arquitecturaDelProcesador> (...)

-~-~-~-~-	-~-~-~-~-

La bandera "-s" muestra el nombre del sistema.
~# uname -s
Linux

-~-~-~-~-	-~-~-~-~-

La bandera "-n" muestra el nombre por el que se identifica el sistema en la red (el FQDN)
~# uname -n
kali

-~-~-~-~-	-~-~-~-~-

La bandera "-r" muestra información sobre el kernel.
~# uname -r
3.12-kali1-686-pae

-~-~-~-~-	-~-~-~-~-

La bandera "-v" muestra información sobre la versión del Sistema Operativo.
~# uname -v
#1 SMP Debian 3.12.6-2kali1 (2014-01-06)

-~-~-~-~-	-~-~-~-~-

La bandera "-m" o "-p" muestra el tipo de arquitectura del procesador que se esta utilizando.
~# uname -m
i686
--------------------------------------
--------------------------------------
El comando "uptime" sirve para Ver Cuanto tiempo tiene Corriendo el S.O.

Sintaxis:
~$ uptime

Ejemplo Y Pantalla:
~$ uptime
 04:59:55 up 27 min, 2 users, load average: 0.05, 0.03, 0.05
-------------------------------------------------------------------
-------------------------------------------------------------------
ii. Hardware


--------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|    INFORMACIÓN EN GENERAL    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------

    1. Información en general

El comando "lshw" se obtiene información muy detallada sobre el hardware de un nodo. Un comando similar
que muestra solo los dispositivos conectados a los puertos PCI es lspci.

Sintaxis:
~$ lshw
Nos da información de todo el hardware de un nodo.


Con la bandera "-short" muestra información de todo el hardware de un nodo, en modo tabla y más resumida.

Con la bandera "-C processor" muestra información solamente del procesador.

Con la bandera "-C disk" muestra información solamente de los discos.

Con la bandera "-C memory" muestra información solamente de la memoria

Con la bandera "-C sound" muestra información solamente de la tarjeta de sonido

Con la bandera "-C network" muestra información solamente de dispositivos de red.

Sintaxis:
~$ lshw -html > <archivo.html>
Para poder leerlo de forma más cómoda se puede guardar en formato HTML.

-~-~-~-~-	-~-~-~-~-

Ejemplo de la salida del comando lshw -short el cual muestra información en modo abreviado.

root@i7:~# lshw -short
H/W path       Device     Class          Description
====================================================
                          system         Z97X-SOC Force (To be filled by O.E.M.)
/0                        bus            Z97X-SOC Force
/0/0                      memory         64KiB BIOS
/0/3d                     processor      Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
/0/3d/3e                  memory         256KiB L1 cache
/0/3d/3f                  memory         1MiB L2 cache
/0/3d/40                  memory         8MiB L3 cache
/0/42                     memory         16GiB System Memory
/0/42/0                   memory         DIMM [empty]
/0/42/1                   memory         8GiB DIMM DDR3 Synchronous 1600 MHz (0,6 ns)
/0/42/2                   memory         DIMM [empty]
/0/42/3                   memory         8GiB DIMM DDR3 Synchronous 1600 MHz (0,6 ns)
/0/100                    bridge         Haswell DRAM Controller
/0/100/2                  display        Haswell Integrated Graphics Controller
/0/100/3                  multimedia     Haswell HD Audio Controller
/0/100/14                 bus            Intel Corporation
/0/100/16                 communication  Intel Corporation
/0/100/1a                 bus            Intel Corporation
/0/100/1b                 multimedia     Intel Corporation
/0/100/1c                 bridge         Intel Corporation
/0/100/1c.2               bridge         Intel Corporation
/0/100/1c.2/0             bridge         82801 PCI Bridge
/0/100/1c.3               bridge         Intel Corporation
/0/100/1c.3/0  eth0       network        Atheros Communications Inc.
/0/100/1d                 bus            Intel Corporation
/0/100/1f                 bridge         Intel Corporation
/0/100/1f.2               storage        Intel Corporation
/0/100/1f.3               bus            Intel Corporation
/0/1           scsi2      storage        
/0/1/0.0.0     /dev/sda   disk           3TB WDC WD3003FZEX-0
/0/1/0.0.0/1   /dev/sda1  volume         299MiB Windows NTFS volume
/0/1/0.0.0/2   /dev/sda2  volume         99MiB Windows FAT volume
/0/1/0.0.0/3   /dev/sda3  volume         127MiB reserved partition
/0/1/0.0.0/4   /dev/sda4  volume         351GiB Windows NTFS volume
/0/1/0.0.0/5   /dev/sda5  volume         378GiB EXT4 volume
/0/1/0.0.0/6   /dev/sda6  volume         15GiB Linux swap volume
/0/1/0.0.0/7   /dev/sda7  volume         2TiB Windows NTFS volume
/1                        power          To Be Filled By O.E.M.
/2             wlan0      network        Wireless interface

-~-~-~-~-	-~-~-~-~-

Ejemplo de la salida del comando lshw -C disk el cual nos muestra información de los discos conectados.

root@i7:~# lshw -C disk
  *-disk                  
       description: ATA Disk
       product: WDC WD3003FZEX-0
       vendor: Western Digital
       physical id: 0.0.0
       bus info: scsi@2:0.0.0
       logical name: /dev/sda
       version: 01.0
       serial: WD-WCC133ZR98Y4
       size: 2794GiB (3TB)
       capabilities: gpt-1.00 partitioned partitioned:gpt
       configuration: ansiversion=5 guid=2a97b99f-954e-4324-bba3-a78ca53ca028 sectorsize=4096

-~-~-~-~-	-~-~-~-~-

Ejemplo de la salida del comando lshw -short -c volume nos muestra información en forma resumida de los
volúmenes (particiones) de los discos.

root@i7:~# lshw -short -c volume
H/W path       Device     Class          Description
====================================================
/0/1/0.0.0/1   /dev/sda1  volume         299MiB Windows NTFS volume
/0/1/0.0.0/2   /dev/sda2  volume         99MiB Windows FAT volume
/0/1/0.0.0/3   /dev/sda3  volume         127MiB reserved partition
/0/1/0.0.0/4   /dev/sda4  volume         351GiB Windows NTFS volume
/0/1/0.0.0/5   /dev/sda5  volume         378GiB EXT4 volume
/0/1/0.0.0/6   /dev/sda6  volume         15GiB Linux swap volume
/0/1/0.0.0/7   /dev/sda7  volume         2TiB Windows NTFS volume
/0/2/0.0.0/1   /dev/sdb1  volume         14GiB Windows NTFS volume

-~-~-~-~-	-~-~-~-~-

Ejemplo de la salida del comando lshw -C network

lshw -C network
 *-network               
       description: Ethernet interface
       product: 79c970 [PCnet32 LANCE]
       vendor: Hynix Semiconductor (Hyundai Electronics)
       physical id: 1
       bus info: pci@0000:02:01.0
       logical name: eth0
       version: 10
       serial: 00:0c:29:1e:33:b9
       size: 1Gbit/s
       capacity: 1Gbit/s
       width: 32 bits
       clock: 33MHz
       capabilities: bus_master rom ethernet physical logical tp 1000bt-fd
       configuration: autonegotiation=off broadcast=yes driver=vmxnet driverversion=2.0.8.0 duplex=full firmware=N/A
        ip=192.168.1.200 latency=64 link=yes maxlatency=255 mingnt=6 multicast=yes port=twisted pair speed=1Gbit/s
       resources: irq:19 ioport:2000(size=128) memory:dc400000-dc40ffff


Existe un front-end gráfico llamado lshw-gtk
--------------------------------------
--------------------------------------
El comando "inxi" nos da información puntual del equipo que estamos usando. Con "inxi" obtendremos un
resumen del hardware para que sea fácil de entender.

Inxi viene pre instalado en distribuciones como Ubuntu y Linux Mint por lo que no es necesario
instalarlo. Pero aun así como instalarlo, en Debian/Ubuntu y derivados:
~# apt-get install inxi


En Fedora y derivados:
~# yum install inxi

También puedes utilizar inxi en Centos, solo tienes que instalarlo mediante los repositorios EPEL y
podrás obtener la información de tu servidor o del equipo en el que lo tengas funcionando.

Una vez que tengas este repositorio puedes instalar inxi con el siguiente comando:
~# yum install inxi


En Arch y derivados:
~# pacman -S inxi

Sintaxis:
~$ inxi
Nos muestra toda la información, resumida.

-~-~-~-~-	-~-~-~-~-

La bandera "-A" nos muestra información de la tarjeta de sonido.

La bandera "-C" nos muestra información del CPU, incluyendo la velocidad de reloj del CPU.

La bandera "-D" nos muestra información del disco duro, no sólo el modelo.

La bandera "-F" nos muestra salida completa para inxi. Incluye todas las letras en mayúscula.

La bandera "-G" nos muestra información de la tarjeta gráfica (tarjeta, tipo, resolución, procesador
	glx, versión, etc.).

La bandera "-I" nos muestra Información general: procesos activos, tiempo de actividad, memoria, cliente
	de IRC, versión inxi.

La bandera "-l" nos muestra etiquetas de las particiones.

La bandera "-M" nos muestra la marca y modelo de mi motherboard, y la fecha de la versión del bios.

La bandera "-n" nos muestra información avanzada de la tarjeta de red. Igual que -Nn. Muestra la
	interfaz, velocidad, dirección MAC, estado, etc.

La bandera "-N" nos muestra información de las tarjetas de red.

La bandera "-s" nos muestra información sobre los sensores de la computadora.

La bandera "-x" nos muestra PCI BusID, número de puerto.

La bandera "-v7"

-~-~-~-~-	-~-~-~-~-

#Cómo saber que tarjeta gráfica,

#los drivers libres noveau para las tarjetas Nvidia todavía no están a la altura de las privativas. Evidentemente, esto no es culpa de los desarrolladores ya que no tienen casi colaboración por parte de la gran compañía.

#Así que muchos usuarios optan por instalar los driver privativos con los que sacar un rendimiento adecuado a su equipo. No obstante para hacerlo antes debes saber que tarjeta gráfica se tiene, lo cual en muchas ocasiones no es fácil ya que nos olvidamos con facilidad de los modelos que tenemos en nuestros equipos.
#~$ inxi -Gx
--------------------------------------
--------------------------------------
El comando "dmidecode" nos reporta información sobre el hardware del sistema, analizando la información
de la tabla DMI (Desktop Management Interface), de la BIOS. Esta tabla contiene descripción de los
componentes de hardware del sistema, así como información útil, tal como números de serie, la versión
del BIOS, etc. Gracias a esta tabla, se puede acceder a información útil sin tener que abrir el maquina.

Esta tabla contiene una descripción de los componentes hardware del sistema, así como otra información
útil cómo: el numero de serie, información del fabricante, fecha de lanzamiento, versión de la BIOS, etc.

¿Cómo instalar Dmidecode?

Fedora:
~$ dnf install dmidecode

Ubuntu/Debian:
~$ sudo apt-get install dmidecode

RHEL/Centos:
~$ yum install Dmidecode


En primer lugar ejecutaremos el comando “dmidecode” para ver cual es la información de hardware
soportada, lo que mostrara el contenido de la tabla DMI desde el type 0 hasta el type 41.

Sintaxis:
~# dmidecode

-~-~-~-~-	-~-~-~-~-

Con la bandera "-t bios" muestra la información detallada de la BIOS, como la versión, el nombre del
	proveedor, la fecha de lanzamiento, el tamaño del tiempo de ejecución, el tamaño de la ROM, la
	revisión del firmware, y mucho más.

Con la bandera "-t system" combinará los tipos 1, 12, 15, 23 y 32 de DMI (1: información del sistema,
	2: opciones de configuración del sistema, etc.) e imprime la información detallada del sistema como
	el nombre del fabricante, versión, número de serie, UUID, número SKU, etc.

Con la bandera "-t baseboard" combinará los tipos 2, 10, 41  DMI (Base Board, On Board Devices y Onboard
	Device) e imprimirá la información detallada como el nombre del fabricante, nombre del producto,
	versión, número de serie, etc.

Con la bandera "-t chassis" muestra información sobre el chasis en Linux.

Con la bandera "-t processor" muestra información del procesador en Linux.

Con la bandera "-t memory" muestra información de la memoria en Linux.

Con la bandera "-t cache" muestra información de caché en Linux.

-~-~-~-~-	-~-~-~-~-

En conclusión, es una herramienta muy completa y muestra mucha más información que se puede tratar.
Además, para un proceso más sencillo de consulta, en lugar de la opción que compaña a -t, puede utilizar
el identificador (dígito) de la información de acuerdo a la siguiente:

Keyword Types
------------------------------
bios 0, 13
system 1, 12, 15, 23, 32
baseboard 2, 10
chassis 3
processor 4
memory 5, 6, 16, 17
cache 7
connector 8
slot 9

-~-~-~-~-	-~-~-~-~-

# dmidecode -t 16 Solo muestra parametros relacionados con la RAM, como por ejemplo el máximo de memoria RAxe es capaz de soportar nuestro equipo y determinar el número de slots (ranuras de expansión) disponibles, por si queremos ampliar la memoria.

-~-~-~-~-	-~-~-~-~-

La bandera "-q" nos muestra los componentes (hardware) del sistema.
------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|    INFORMACIÓN DEL PROCESADOR    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
------------------------------------

    2. Información del procesador

El comando "lscpu" muestra información del procesador, la arquitectura, frecuencia, los cores, threads
por core, etc ...

Sintaxis:
~$ lscpu

-~-~-~-~-	-~-~-~-~-

Un comando similar seria el siguiente: ~$ cat /proc/cpuinfo

-~-~-~-~-	-~-~-~-~-

Podemos añadir filtros a "lscpu" o a "cat /proc/cpuinfo" para buscar información concreta, por ejemplo,
si buscamos el nombre del modelo de la cpu.

Sintaxis:
~$ cat /proc/cpuinfo | grep -i 'model name'
~$ lscpu | grep -i 'model name'
--------------------------------------
--------------------------------------
El comando "cpufreq-info" obtenemos la información de la frecuencia de la CPU. El comando muestra la
frecuencia actual, la frecuencia mínima y la frecuencia máxima, además de diferentes estadísticas.

Sintaxis:
~$ cpufreq-info

-~-~-~-~-	-~-~-~-~-

Y con la bandera "-c" nos muestra los datos de uno solo core.

Sintaxis:
~$ cpufreq-info -c <noCore>
--------------------------------------
--------------------------------------
El comando "cpuid" nos muestra información muy detallada del cpu.

Sintaxis:
~$ cpuid

Pero se recomienda redireccionarlo a un archivo o utilizar "more" o "less".
--------------------------------------
--------------------------------------
Si tenemos un procesador Intel Core i3, i5 o i7, podemos usar "i7z", una herramienta que muestra datos en
tiempo real sobre cada core.

Sintaxis:
~# i7z
--------------------------------------
--------------------------------------
He dejado el último a hardinfo, un programa con entorno gráfico muy fácil de entender y utilizar. No
sólo proporciona información sobre la CPU, sino también sobre otros componentes hardware.

Sintaxis:
~$ hardinfo
--------------------------------------
--------------------------------------
El comando "arch" nos muestra la arquitectura de la máquina.

Sintaxis:
~$ archivo
---------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|    COMANDOS DEL DISCO DURO    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------

    3. Comandos del disco duro

¿Qué Significan las Siglas SMART?
Para conocer el estado en que se encuentra un disco duro, la mayoría de herramientas hacen uso de la
tecnología de monitorización S.M.A.R.T., soportada por la gran mayoría de discos duros internos SATA o
IDE, y también algunos externos.

SMART son las siglas de Self Monitoring, Analysis and Reporting Technology, y es a grandes rasgos una
tecnología de monitorización de varios parámetros relativos al estado de salud disco duro, como son la
existencia de sectores defectuosos a nivel físico, errores de lectura o escritura, temperatura,
velocidad de los platos, entre otros muchos otros.

Conocer y analizar la información que ofrece SMART relativo al estado de salud de tu disco puede ser de
gran utilidad a la hora de predecir posibles errores futuros, y poder curarse en salud antes de llevarse
sorpresas cuando ya sea demasiado tarde.

Generalmente, la mayoría de discos SATA soportan también SMART, pero para que funcione debe ser
compatible con la BIOS del equipo y estar habilitado.

Como todo en la vida y en la tecnología, nada es 100% seguro, y puede ser que tu disco acabe fallando y
no haya podido ser detectado antes por SMART, pero teniendo en cuenta la cantidad de parámetros que
monitoriza, es una buena garantía.

Ah, y por cierto, los discos SSD soportan igualmente la tecnología S.M.A.R.T., y aunque pueda parecer
que no es relevante, al no poseer estos últimos partes mecánicas, puede servir en muchos casos, si bien
muchos de los parámetros serán diferentes.

Si lo deseas, tienes información mucho más detallada aquí. Dicho esto, vayamos a lo que nos interesa…

hdparm -i /dev/hda : mostrar las características de un disco duro.
hdparm -tT /dev/sda : realizar prueba de lectura en un disco duro.
----------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|    COMANDOS DE LA RAM    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~
----------------------------

    4. Comandos de la RAM

El comando "free" sirve para Mostrar Información de la Memoria RAM

Sintaxis:
~$ free

-~-~-~-~-	-~-~-~-~-

Con la Opción "-h", Imprime Información de la Memoria de Manera "Legible", ya sea en Bytes, Kilos,
Megas, Gigas, Teras.

Ejemplo Y Pantalla:
~$ free -h
			   total	used	free	shared	buffers	cached
Mem:			3.00	388M	2.6G	    0G	    55M	  213M
-/+ buffers/cache:		118M	2.9G
Swap:			465M	  0B	465M
--------------------------------------
--------------------------------------
El comando "vmstat" es la versión más extensa del comando FREE, en el que tenemos el concepto de memoria
inactiva. Este término se usa para hablar de memoria en uso pero no asignada a ningún proceso,
haciéndola a todos los efectos memoria libre.

~$ vmstat -s -S M

Al ejecutar este comando con los parámetros mencionados, podremos obtener la siguiente información
estructurada de esta manera:

2048 M total memory
1582 M used memory
1124 M active memory
 406 M inactive memory
 465 M free memory
   0 M buffer memory
 407 M swap cache
   0 M total swap
   0 M used swap
   0 M free swap
--------------------------------------
--------------------------------------
Se pueden obtener resultados similares haciendo un cat al fichero "/proc/meminfo", aunque es menos
configurable de esta manera y obtendremos la información de una forma mucho menos revisable:

~$ cat /proc/meminfo/

Al ejecutar el comando anterior, obtendremos la siguiente información sobre la memoria RAM del servidor
Linux de la siguiente manera:

MemTotal:        8094948 kB
MemFree:         2066592 kB
MemAvailable:    3912344 kB
Buffers:          140452 kB
Cached:          2442356 kB
SwapCached:            0 kB
Active:          3038516 kB
Inactive:        2633892 kB
Active(anon):    2392896 kB
Inactive(anon):  1276656 kB
Active(file):     645620 kB
Inactive(file):  1357236 kB
Unevictable:          48 kB
Mlocked:              48 kB
SwapTotal:       7810556 kB
SwapFree:        7810556 kB
Dirty:               632 kB
Writeback:             0 kB
AnonPages:       2948040 kB
Mapped:           785036 kB
Shmem:            579956 kB
Slab:             209888 kB
SReclaimable:     132608 kB
SUnreclaim:        77280 kB
KernelStack:       11200 kB
PageTables:        51976 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:    11858028 kB
Committed_AS:    7344332 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
HardwareCorrupted:     0 kB
AnonHugePages:    276480 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
CmaTotal:              0 kB
CmaFree:               0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
DirectMap4k:      173564 kB
DirectMap2M:     6039552 kB
DirectMap1G:     3145728 kB

Si utilizamos un panel de control de hosting o de administración como cPanel, Plesk, VestaCP o Webmin o
cualquier otro panel que aporte una interfaz gráfica, podremos ver los datos de memoria RAM utilizada y
memoria RAM libre y cacheada desde la interfaz, algo que nos facilitará mucho las cosas pero que puede
llegar a mostrarnos datos NO reales dependiendo de los periodos de actualización de los datos.

A la hora de optimizar el uso de memoria en un servidor, debemos entender que la memoria RAM está
pensada para ser utilizada, no para estar “vacía”. Por lo tanto, solo debemos preocuparnos si nuestro
servidor Linux responde con errores por sobre uso de memoria RAM, pero en caso de que el servidor
funcione bien y no tengamos caídas en los servicios (web, BD, correo, etc.), aunque se use el 100% de la
memoria RAM no es algo preocupante (a menos que estemos esperando grandes picos de tráfico).
--------------------------------------
--------------------------------------
El comando "memtester" es para pasar una prueba de stress a la memoria RAM del ordenador para
encontrar errores en los módulos propiamente dichos o en los datapaths (chipset, controladoras de
memoria).


Descripción
Memtest86+ está diseñado para arrancar desde un disquete, CD-ROM, o memoria USB sin que sea necesario
que el ordenador tenga instalado un sistema operativo. Las pruebas que aplica son lo suficientemente
severas como para encontrar problemas en ordenadores que aparentemente funcionan bien. Con soporte para
múltiples chipsets, Memtest86+ permite encontrar errores incluso en memoria con sistemas de corrección
de errores.

Además, desde la versión 1.60 puede generar una lista de regiones de RAM defectuosa en el formato
esperado por el patch BadRAM para el núcleo Linux; usando esta información, un sistema Linux puede usar
con seguridad un módulo de RAM incluso aunque tenga algunos bits defectuosos.

Diseñado por Samuel Demeulemeester, Memtest86+ deriva de Memtest86 cuyo desarrollo se había estancado,
aunque después de varios años de falta de nuevas versiones ambos están otra vez activos. Escrito en C y
ensamblador, el código fuente está liberado bajo la GNU GPL. La versión actual de Memtest86 es la 4.0a
liberada el 20 de agosto de 2011, y la de Memtest86+ es la 4.20, liberada el 25 de enero de 2011. Ambas
versiones soportan los procesadores actuales dual y quad core y sus correspondientes chipsets.


Cómo funciona
Memtest86+ escribe una serie de patrones de prueba a cada dirección de memoria, y luego lee los datos
comparándolos a la búsqueda de errores.

La información acerca del chipset se puede usar para mejorar estas pruebas, especialmente en sistemas
que utilizan overclock. Muchos chipsets pueden informar acerca de la velocidad de la RAM, y alguno
permite el cambio de esta velocidad dinámicamente; de esta manera, con Memtest86+ se puede comprobar
hasta qué punto la memoria continúa sin errores si subimos la velocidad.


Tests
■ Test 0: [Address test, walking ones, no cache]. Test de todos los bits direccionables en todos los
	bancos de memoria usando un patrón de acceso "walking ones".
■ Test 1: [Address test, own address]. Cada dirección es escrita con el valor de su propia dirección y
	luego es probada para detectar diferencias. Este test es complementario y más estricto que el Test 0
	y debería detectar todos los errores de direccionamiento.
■ Test 2: [Moving inversions, ones&zeros]. Este test utiliza el algoritmo Moving inversions con patrones
	de unos y ceros. Es un test rápido que solamente da errores en subsistemas de memoria muy dañados.
■ Test 3: [Moving inversions, 8 bit pattern]. Utiliza el algoritmo Moving Inversions diseñado para
	detectar fallos producidos por interferencia con las células de memoria adyacentes.
■ Test 4: [Moving inversions, random pattern]. Se utiliza el mismo algoritmo del paso 3 pero el patrón
	es un número aleatorio (más bien pseudoaleatorio) y su complemento. Es un test muy efectivo para
	detectar errores de datos, utilizando 60 patrones aleatorios cambiando en cada pasada del test. Por
	ello múltiples pasadas aumentan la eficacia.
■ Test 5: [Block move, 64 moves]. Este test prueba la memoria utilizando la instrucción [movsl] y está
	basado en un antiguo test llamado burnBX de Robert Redelmeier. Experimentalmente es de los test que
	revelan errores más sutiles.
■ Test 6: [Moving inversions, 32 bit pat]. Es un test bastante lento pero muy efectivo para detectar
	errores de datos, ya que hace 32 pasadas para probar todos los patrones.
■ Test 7: [Random number sequence]. Se escribe una serie de números aleatorios en memoria. Es comprobado
	y complementado y vuelto a comprobar.
■ Test 8: [Modulo 20, ones&zeros]. Utiliza el algoritmo Modulo-X, diseñado para evitar interferencia del
	subsistema de caché que podrían enmascarar algunos errores en tests anteriores. Utiliza patrones de
	unos y ceros.
■ Test 9: [Bit fade test, 90 min, 2 patterns]. Se inicializa toda la RAM con un patrón y se deja
	inactiva 90 minutos, entonces se examina en busca de alguna variación. Se pasa dos veces, una con
	ceros y otra con unos. Dura 3 horas y no forma parte del test standard, hay que seleccionarlo a mano
	en el menú.


Sintaxis:
~$ memtester

Escribir el comando sin banderas, devolvería algo como esto:
┌───────────────────────────────────────────────────────────────────────┐
│memtester version 4.3.0 (64-bit)                                       │
│  Copyright (C) 2001-2012 Charles Cazabon.                             │
│  Licensed under the GNU General Public License version 2 (only).      │
│                                                                       │
│  pagesize is 4096                                                     │
│  pagesizemask is 0xfffffffffffff000                                   │
│  need memory argument, in MB                                          │
│                                                                       │
│  Usage: memtester [-p physaddrbase [-d device]] <mem>[B|K|M|G] [loops]│
└───────────────────────────────────────────────────────────────────────┘

Para hacer el test y utilizar el comando lo haremos de la siguiente manera, primero de todo escribiremos
“memtester”, seguido de la cantidad de RAM que tenemos instalada en nuestro equipo, en mi caso es 4096,
el valor que aparece en el pagesize al introducir el comando memtester, seguidamente, introducimos el
número de pasadas que va a realizar la prueba, el comando final quedaría algo así:

Sintaxis:
~$ memtester <memoriaRAMEnMB> <ciclos>

Ejemplo y Pantalla:
~$ memtester 4096 1
(...)
(...)
(...)
  Loop 1/1:
  Stuck Address       : ok         
  Random Value        : ok
  Compare XOR         : ok
  Compare SUB         : ok
  Compare MUL         : ok
  Compare DIV         : ok
  Compare OR          : ok
  Compare AND         : ok
  Sequential Increment: ok
  Solid Bits          : ok         
  Block Sequential    : ok         
  Checkerboard        : ok         
  Bit Spread          : ok         
  Bit Flip            : ok         
  Walking Ones        : ok         
  Walking Zeroes      : ok         
  8-bit Writes        : ok
  16-bit Writes       : ok    

  Done.

Al final de la prueba obtendremos un informe con las pruebas realizadas y su resultado.
-----------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|    COMANDOS DE LA SWAP    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
-----------------------------

    5. Comandos de la SWAP

cat /proc/swaps : mostrar ficheros swap.







7. PROCESOS DE CONTROL Y SEÑALES EN SISTEMAS UNIX

A). Procesos del Sistema

La más simple definición de un proceso podría ser que es una instancia de un programa en ejecución 
corriendo). A los procesos frecuentemente se les refiere como tareas.

De partida todo proceso dispone de una única línea de ejecución. Se puede entender como la vista
dinámica (en ejecución) de un programa.

Los procesos en Linux (o en cualquier sistema operativo) son programas que están en ejecución y se
identifican mediante el PID.
El PID (Process Identificator) es el número que se le asigna a un proceso cuando se inicia. Son
números crecientes y los procesos que se terminan y luego se vuelven a iniciar van a tener un PID
diferente. Por ejemplo, el PID número 1 se le asigna a por norma general a init que es el primer
proceso que inicia el sistema al ser arrancado.

Los procesos pueden ejecutar otros procesos (procesos hijos). Los procesos hijos contienen su propio
PID pero a su vez también contienen otro campo llamado PPID (Parent Process Identificator) que es el
proceso padre al que pertenece el proceso.
Todos los procesos en Linux tienen su proceso padre excepto el proceso 0 que es el que ejecuta el
inicio del sistema (PID 1).


Estados de un proceso
Los procesos durante su ejecución pasan por distintos estados, algunos de ellos:

[@] S (sleeping) el proceso está en espera. Durmiendo. Quiere decir que está en ejecución, pero en
	ese momento no se encuentra ejecutándose ningún código dentro de la CPU.
[@] D (sleeping) proceso que se encuentra bloqueado a la espera de un recurso. Es igual que el
	anterior, pero no es posible interrumpirlo.
[@] R (running) el proceso está en ejecución de forma activa en la CPU.
[@] T (stop) el proceso se encuentra parado. Quiere decir que se ha detenido su ejecución.
[@] Z (zombie) es un proceso que ha	finalizado pero que su proceso padre sigue en ejecución y no se
	ha “dado cuenta” de la circunstancia de su proceso hijo.
	Es un proceso que debería de haber muerto, pero aún tiene dependencias que no es posible
	terminar.
	Hasta que no se eliminen sus dependencias no desaparecerá.
	Se come los recursos del sistema.


Procesos en sistemas operativos tipo Unix
[@]	Todo proceso en un sistema operativo tipo Unix tiene un proceso padre y a su vez puede disponer
	de uno o más procesos hijo.
[@]	Todo proceso en un sistema operativo tipo Unix tiene un propietario, que se trata del usuario
	que ha lanzado dicho proceso.
[@]	El proceso init es el padre de todos los procesos. Es la excepción a la norma general, pues no
	tiene padre. Es el primer proceso que se lanza desde la secuencia de arranque del sistema.
[@]	La información necesaria para administrar un proceso se guarda en una estructura controlada por
	el S.O. llamada Bloque de Control de Procesos o PCB (Process Control Block)
[@]	Para mostrar la relación actual de procesos en el sistema se puede emplear la orden ps.
[@]	Para identificar los procesos el sistema operativo Unix asigna un numero de identificación del
	proceso, o pid (Process IDentification).


Procesos Padre e Hijo
[@]	Todo proceso (padre) puede lanzar un proceso hijo en cualquier momento, para ello el sistema
	operativo nos ofrece una llamada al sistema que se denomina fork.
[@]	Un proceso hijo es un proceso clon del padre. Sin embargo, procesos padre e hijo no comparten
	memoria, son completamente independientes.
[@]	Todo proceso padre es responsable de los procesos hijos que lanza, por ello, todo proceso padre
	debe recoger el resultado de la ejecución de los procesos hijos para que estos finalicen
	adecuadamente. Para ello, el sistema operativo ofrece la llamada wait que nos permite obtener el
	resultado de la ejecución de uno o varios procesos hijo.
[@]	Si un proceso padre no recupera el resultado de la ejecución de su hijo, se dice que el proceso
	queda en estado zombi. Un proceso hijo zombi es un proceso que ha terminado su ejecución y que
	está pendiente de que su padre recoja el resultado de su ejecución.

                     Padre
       ┌---------------┼---------------┐
Proceso Hijo1	Proceso Hijo2	Proceso Hijo3


~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
Llamadas a sistema (System Call)
Se implementan a través de una interfaz (o API) que ofrece el Sistema Operativo. Son mecanismos que el
S.O. pone a disposición de los procesos para solicitar un servicio o recurso. Estas llamadas a sistema
evitan que el proceso acceda directamente a los recursos del hardware.

En el caso de Linux tiene aproximadamente 350 llamadas al sistema en la versión 3.0.0. La mayor parte de
los Sistemas Operativos suelen implementar la API POSIX por razones de portabilidad.
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~


Manejo de Procesos en Linux

Nuevo ══[admitido]══> Preparado ══[planificador]══> Ejecución ══[system call/excepción]══> Terminado
                       ▲  ▲                            ║   ║
                       ║  ╚════════════════════════════╝   ║
                       ║                                   ║
                       ╚════════════Bloqueado <════════════╝
                        [finaliza la          [system call de
                        Operación u           Entrada y Salida
                        ocurre un Evento]     o espera por un
                                              Evento]


B). Comandos para control de procesos

--------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
|     COMANDOS Y PROCESOS BÁSICOS    |
|            DEL SISTEMA             |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
--------------------------------------
Son para mostrar información que sea de utilidad como usuarios para saber el proceso de nuestro
sistema, estos solamente son comandos básicos
--------------------------------------
--------------------------------------
El comando "top" sirve para ver Información del Sistema Que son los Procesos que se están Ejecutando
en el Sistema

Sintaxis:
~$ top

MiniEjemplo Y Pantalla:
~$ top


/*
	Los Significados de esta Sección
	top - <tiempoQueElSis.EstaEncendido> up <#> min,
	<#> Usuarios,
	(...)
	KiB Mem: <totalMemoria> total,
		<cantidadMemoriaUsada> used,
		<cantidadMemoriaDisponible> free,
		<cantidadBuffers> buffers
	KiB Swap: <Total_$Memoria$_Swap> total,
		<Cantidad_¿$Memoria$?_Usada> used,
		<Cantidad_¿$Memoria$?_Disponible> free,
		<cantidadCached> cached
*/
top - 04:51:44 up 19 min, 2 users, load average: 0.06, 0.05, 0.05
Tasks: 119 total, 1 running, 118 sleeping, 0 stopped, 0 zombie
%Cpu(s): 0.6 us, 0.8 sy, 0.0 ni, 96.9 id, 1.4 wa, 0.0 hi, 0.3 si, 0.0 st
KiB Mem:    3114836 total,  395476 used,    2719360 free,   56792 buffers
KiB Swap:    477180 total,	     0 used,     477180 free,  217164 cached

█PID██USER████PR█NI███VIRT█RES███SHR█S█%CPU█%MEM█████TIME+███COMMAND████
   1  root    20  0   2280 732   628 S  0.0  0.0    0:01.94  init
   2  root    20  0      0   2     0 S  0.0  0.0    0:00.00  kthreadd
   3  root    20  0      0   2     0 S  0.0  0.0    0:01.25  ksoftirqd/0
/*
	Los Significados de Cada Columna
	<ID> <Usuario> <> <s> <> <> <> <estadoDelProceso> <%CPU_en_EscalaDe...>
	<%Memoria_en_EscalaDe...> <elTiempoQueTieneEnEjecución> <Nombre/Identificador>
*/

Y para Detener este Proceso, es con "q"
--------------------------------------
--------------------------------------
El comando "ps" sirve para Mostrar los Procesos que estoy Ejecutando como Usuario

Sintaxis:
~$ ps

Ejemplo Y Pantalla:
~$ ps
  PID TTY          TIME CMD
 3979 pts/0    00:00:00 bash
 4039 pts/0    00:00:00 ps

-~-~-~-~-	-~-~-~-~-

Con la Opción "aux", se Muestra Todos los Procesos del Sistema, de Todos los Usuarios, de Todos los
Servicios

Sintaxis:
~$ ps aux

MiniEjemplo Y Pantalla:
~$ ps aux
USER██PID█%CPU█%MEM██VSZ█RSS█TTY████STAT██START███TIME██COMMAND██
root    1  0.1  0.0 2280 732 ?      Ss    04:32   0:01 init [2]
root    2  0.0  0.0    0   0 ?      S     04:32   0:00 [kthreadd]

Con este comando conviene ejecutarlo como root

-~-~-~-~-	-~-~-~-~-

Para ser más precisos se puede buscar un determinado proceso con el que queramos dar, utilizando pipe
y grep

Ejemplo:
~# ps aux | grep ssh

-~-~-~-~-	-~-~-~-~-

Para ver los procesos en Linux de un usuario

Sintaxis:
~# ps -u root

-~-~-~-~-	-~-~-~-~-

Para ver el PPID de los distintos procesos

Sintaxis:
~$ ps -ef

Ejemplo Y Pantalla:
~$ ps -ef
UID████████PID██PPID██C█STIME█TTY██████████TIME█CMD█████
root         1     0  0 10:38 ?        00:00:02 init [2]

Vemos como los procesos del sistema son asignados a la UID del usuario root.

~ ~ ~ ~ ~ ~
En sistemas tipo Unix, los usuarios son representados por un identificador de usuario, normalmente
abreviado como UID o User ID.
~ ~ ~ ~ ~ ~
--------------------------------------
--------------------------------------
El comando "pstree" muestra un árbol de los procesos

Sintaxis:
~$ pstree
--------------------------------------
--------------------------------------
El comando "kill" sirve para Terminar el (los) Proceso(s) Deseado(s)

Sintaxis:
~$ kill <PID>

MiniEjemplo Y Pantalla:
~$ ps aux
█USER██PID█%CPU█%MEM█████VSZ████RSS█TTY████STAT██START███TIME  COMMAND
 root    1  0.1  0.0    2280    732 ?      Ss    04:32   0:01  init [2]
 root    2  0.0  0.0       0      0 ?      S     04:32   0:00  [kthreadd]
(...)
rocoelwuero 4118  0.5  0.4  136100  14024 ?      Sl    04:56   0:00  gcalctool
~$ kill 4118


+*+*+*+*+*+*+*+*+*+*+*+*+*
Señales para los procesos

A los procesos se les manda señales para modificar su comportamiento a través del núcleo. Esto se
realiza mediante el comando kill con sus correspondientes señales e indicando el número de PID.
Algunas de las señales que se pueden mandar a los procesos:
[@] SIGNUP o "-1"
[@] SIGINT o "–2", interrumpe un proceso, equivale a pulsar CTRL+C
[@] SIGQUIT o "-3"
[@] SIGILL o "-4"
[@] SIGTRAP o "-5"
[@] SIGABRT o "-6"
[@] SIGBUS o "-7"
[@] SIGFPE o "-8"
[@] SIGKILL o "–9", mata un proceso y no hay vuelta atrás.
[@] SIGUSR1 o "-10"
[@] SIGSEGV o "-11"
[@] SIGUSR2 o "-12"
[@] SIGPIPE o "-13"
[@] SIGALRM o "-14"
[@] SIGTERM o "–15", es como SIGINT pero de una forma más “ordenada”. Es la señal que se manda por
	defecto si al comando kill no se le indicar ninguna señal.
[@] SIGSTKFLT o "-16"
[@] SIGCHLD o "-17"
[@] SIGCOUNT o "–18", reanudar un proceso que se ha parado por ejemplo con SIGSTOP.
[@] SIGSTOP o "–19", parar un proceso, es igual que pulsar CTRL+Z.
[@] SIGTSTP o "-20"
[@] SIGTTIN o "-21"
[@] SIGTTOU o "-22"
[@] SIGURG o "-23"
[@] SIGXCPU o "-24"
[@] SIGXFSZ o "-25"
[@] SIGVTALRM o "-26"
[@] SIGPROF o "-27"
[@] SIGWINCH o "-28"
[@] SIGIO o "-29"
[@] SIGPWR o "-30"
[@] SIGSYS o "-31"
	[@] SIG "-32"
	[@] SIG "-33"
[@] SIGRTMIN o "-34"
[@] SIGRTMIN+1 o "-35"
[@] SIGRTMIN+2 o "-36"
[@] SIGRTMIN+3 o "-37"
[@] SIGRTMIN+4 "-38"
[@] SIGRTMIN+5 o "-39"
[@] SIG "-40"
[@] SIG "-41"
[@] SIG "-42"
[@] SIG "-43"
[@] SIG "-44"
[@] SIG "-45"
[@] SIG "-46"
[@] SIG "-47"
[@] SIG "-48"
[@] SIG "-49"
[@] SIG "-50"
[@] SIG "-51"
[@] SIG "-52"
[@] SIG "-53"
[@] SIG "-54"
[@] SIG "-55"
[@] SIG "-56"
[@] SIG "-57"
[@] SIG "-58"
[@] SIG "-59"
[@] SIG "-60"
[@] SIG "-61"
[@] SIG "-62"
[@] SIG "-63"
[@] SIG "-64"


Sintaxis con "-9" (SIGKILL):
~$ kill -9 4900

Sintaxis con SIGKILL:
~$ kill -SIGKILL 4900
--------------------------------------
--------------------------------------
El comando "killall" mata todos los procesos

Con el comando killall también se mandan señales, pero actúa sobre el nombre del proceso:

~$ killall -9 sshd
+*+*+*+*+*+*+*+*+*+*+*+*+*
--------------------------------------
--------------------------------------
El comando "nice" otorga prioridad a los procesos

Hay muchas veces, que queremos que un proceso se ejecute con mayor prioridad que otro proceso que
esté en el sistema. Que un proceso tenga prioridad para su ejecución, quiere decir que no tendrá que
esperar sobre otro que tenga menos prioridad cuando requiera de la CPU para realizar su ejecución,
por lo que, debe de ejecutarse más rápido.

Con esto, no obstante, hay que tener mucho cuidado, ya que otorgarle a un proceso pesado una
prioridad muy alta, puede acarrear que el sistema se quede bloqueado, hasta que el proceso libere un
poco al programador de tareas.


Por ejemplo, si queremos realizar un find con prioridad sobre los demás procesos normales, sabiendo
que el número de prioridad por defecto es 10, y que los valores oscilan entre –20 y 19, siendo –20
la prioridad más alta y 19 la más baja, podemos ejecutar:

~# nice -n 5 find -iname <file>

Cuando ejecutamos el comando ps, junto al estado del proceso, que ya se vio antes, aparece un
segundo carácter, que se refiere a la prioridad siendo:

< – High priority 	La prioridad es menor que cero. Es decir, tiene una prioridad alta.
N – Low priority 	La prioridad es positiva, prioridad normal o baja. 
--------------------------------------
--------------------------------------
El comando "renice" permite modificar la prioridad de un proceso en ejecución, asignando mayor o menor
prioridad a los procesos. Cambiar la prioridad de un proceso que ya se esta ejecutando.

Sintaxis:
~# renice <prioridad> [-p pdi...] [-g pgrp...] [-u usuario]


Donde prioridad es un valor que indica la mayor o menor prioridad que se le da al proceso

pdi es el identificador del proceso al que se le aplica este comando
pgrp es el identificador de un grupo de procesos
usuario es el nombre del usuario cuyos procesos se van ha ser modificados.

Opciones
-p: Con esta opción se indica que sólo se quiere cambiar la prioridad a un sólo proceso
-g: Con esta opción se cambia la prioridad de un grupo de procesos
-u: Con esta opción se cambia la prioridad a todos los procesos de un usuario

Ejemplo:
~# renice +10 -u Pepito -p 32


Ejemplo y Pantalla:
~$ renice -10 -p 123
123: old priority 0, new priority -10


También podemos hacer el renice para todos los procesos de un usuario mediante la opción -u:

Ejemplo y Pantalla:
~# renice -10 -u apache
513: old priority 0, new priority -10
--------------------------------------
--------------------------------------
El comando "nohup" impide que el comando se cancele automáticamente cuando cierra la sesión o sale del
shell. Se ejecuta en segundo plano.
nohup significa "sin interrupción". La señal de colgado ( HUP ), que normalmente se envía a un proceso
para informarle que el usuario se ha desconectado (o "colgado"), es interceptada por nohup , lo que
permite que el proceso continúe ejecutándose.

Sintaxis
~$ nohup <comando-argumento>


& Segundo plano

Sintaxis
~$ nohup <comando-argumento> &

Igual que el comando anterior, pero este formulario (cuando se utiliza bash) lo devuelve inmediatamente
al indicador del intérprete de comandos. El símbolo " & " al final del comando indica a bash que ejecute
nohup mycommand en segundo plano.
--------------------------------------
--------------------------------------
bg → background
--------------------------------------
--------------------------------------
En Linux, UNIX y cualquier otro sistema operativo que cumpla POSIX, el comando fg continúa un trabajo
detenido ejecutándolo en primer plano, Foreground, o trabajos en background los pasa a primer plano.

Sintaxis y Ejemplo:
~$ fg

Al escribir fg se reanudará el trabajo suspendido o respaldado más recientemente.


Ejemplo:
~$ fg 1

Trae el trabajo con el ID 1 al primer plano, reanudándolo si se suspendió.
--------------------------------------
--------------------------------------
El comando "jobs" muestra los procesos asociados a la sesión actual
Procesos en Segundo plano
--------------------------------------
--------------------------------------
Procesos en primer y segundo plano

Los procesos en Linux que se ejecutan en primer plano mantienen la terminal ocupada y eso a veces es
un inconveniente. El proceso que se ejecuta en segundo plano libera la terminal para poder ejecutar
otros procesos. Un ejemplo para ver esto:

1. Escribir en la terminal "sleep 100" y para
2. Lo mandamos parar y para ello usamos las teclas "CTRL+Z"
3. Seguidamente escribimos en la terminal "jobs" y veremos en la terminal algo así:

[1]+  Stopped                 sleep 100


Si se quiere retomar este proceso, tendríamos dos opciones, lanzarlo en primer plano:
~$ fg %1

O mandarlo a ejecución en segundo plano:
~$ bg %1

El "%1" equivale a el número de proceso de la lista que nos muestra "jobs", por ejemplo en este caso
[1].

Si lo que se quiere es parar el proceso se usaría:
~$ kill -9 %1
Que equivale como he dicho anteriormente a pulsar CTRL+Z







8. SERVICIOS EN LINUX

A). Introducción a los servicios en Linux

Los servicios, mejor conocidos en Linux como "daemons" son procesos que se ejecutan en segundo plano,
esperando a que ocurran determinados eventos y ofreciendo servicios, así mismo también pueden ser usados
para realizar tareas del sistema de manera automatizada.

Los servicios en Linux (y en UNIX) son proporcionados por los demonios, que no son más que procesos que
no dejan nunca de ejecutarse mientras la computadora está encendida. Estos demonios pueden “levantarse” 
ejecutarse) o “echarse a bajo” en la sesión actual llamando al script correspondiente con el parámetro
adecuado. Típicamente los scripts que levantan y echan abajo los demonios se localizan en el directorio
/etc/init.d.

Los "daemons" surgen en 1960 en los laboratorios del MIT en el proyecto CTSS (Compatible Time-Sharing
System). La palabra "daemon" tiene la misma raíz que la palabra "demon", pero la primera es más antigua y
con significado ligeramente distinto. Los demonios son criaturas de libre pensamiento y voluntad.

Los "daemons" fueron implementados por primera vez en el CTSS, luego pasaron al MUltics, de allí a UNIX y
finalmente a GNU/Linux.

Básicamente hay dos tipos de demonios, los que inician en el boot up y aquellos que inician cuando el
sistema ya ha cargado.



B). Servicios por defecto

Por defecto, tenemos instalados ciertos demonios para que nuestra computadora pueda funcionar. A
continuación se muestra una tabla de los principales demonios que tiene GNU/LINUX por defecto así como
una breve explicación.

┌───────────────────┬──────────────────────────────────────────────────────────────────────────────────┐
│DEMONIO            │ DESCRIPCIÓN                                                                      │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ alsa              │ Guarda el estado de la tarjeta de sonido (alsa-store.service,                    │
│                   │ alsa-restore.service).                                                           │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Autofs            │ Monta automáticamente medios extraíbles o recursos compartidos de red cuando se  │
│                   │ insertan o se accede a ellos.                                                    │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Avahi             │ Permite a los programas encontrar automáticamente servicios de redes locales     │
│                   │ avahi-daemon.service).                                                           │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Bitlbee           │ Aporta mensajería instantánea (XMPP, MSN, Yahoo!, AIM, ICQ).                     │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Bluetooth         │ Protocolo de Bluetooth, marco y subsistema.                                      │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ ConnMan           │ Administrador de conexiones de red cableadas e inalámbricas.                     │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Cron              │ Demonio para programar y temporizar eventos.                                     │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ CUPS              │ Demonio del sistema de impresión CUPS.                                           │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Dhcpcd            │ Demonio de DHCP (dhcpcd@.service).                                               │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Dovecot           │ Servidor IMAP y POP3.                                                            │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Dropbox           │ Archivo multiplataforma de sincronización con control de versión                 │
│                   │ dropbox@.service).                                                               │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Fan speed control	│ Demonio de control del ventilador (fancontrol.service).                          │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ GDM               │ Gestor de pantallas GNOME.                                                       │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Lightdm           │ Gestor de pantallas libre.                                                       │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ Git               │ Demonio de GIT.                                                                  │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ gpm               │ Soporte para el ratón de consola. (Ejemplo de vi).                               │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ hddtemp           │ Demonio para monitorizar la temperatura del disco duro.                          │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ BIND              │ Berkeley Internet Name Daemon (BIND), servidor DNS.                              │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ NetworkManager    │ Demonio de NetworkManager, proporciona la detección y configuración automática de│
│                   │ conexiones de red.                                                               │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ samba             │ Servicios de archivos e impresión para los clientes de Microsoft Windows.        │
├───────────────────┼──────────────────────────────────────────────────────────────────────────────────┤
│ openssh, sshd     │ Demonio de OpenSSH (shell segura).                                               │
└───────────────────┴──────────────────────────────────────────────────────────────────────────────────┘

Superdaemons
Los superdemonios son demonios que se inician en el bootup process y que controlan a otros demonios.

Los superdemonios más famosos son:
[@] inetd (initd)
[@] System-V
[@] Systemd (Además de gestionar servicios, gestiona el sistema)
[@] Upstartd (sudo <start|stop|etc...> <nombre_ servicio>)



C). Comandos para servicios

Ver mis demonios
~$ ls /etc/init.d
~$ service --status-all


Administración de servicios
Los servicios de linux pueden:
[@] Los superdemonios son demonios que se inician en el bootup process y que controlan a otros demonios.
[@] Ver estado (status)
[@] Empezar (start)
[@] Detener (stop)
[@] Reiniciar (restart)
[@] Recargar (reload)
[@] Habilitar (enable)
[@] Deshabilitar (disable)
[@] Enmascarar (mask)
	᮰ [Si no queremos que se pueda iniciar el servicio automáticamente ni manualmente]
[@] Desenmascarar (umask)


Comandos
~$ sudo /etc/init.d/<nombre_servicio> <estado>
~$ sudo service <nombre_servicio> <estado>
~$ systemctl <estado> <nombre_servicio>

Ejemplos:
Levantamos el demonio X
~# /etc/init.d/X start

Echamos a bajo el demonio X
~# /etc/init.d/X stop

Forzamos a que el demonio X resetea los ficheros de configuración
~# /etc/init.d/X restart

Obteniendo información sobre los parámetros de ejecución del demonio X
~# /etc/init.d/X help


Para conseguir que dichos demonios se ejecuten la próxima vez que reiniciemos, deben de incluirse los
enlaces oportunos en los directorios que controlan la carga de dichos demonios. Estos directorios,
desgraciadamente, pueden variar entre distribuciones, así como los comandos y utilidades “gráﬁcas” que
los manipulan.


Debian Linux:
Los directorios que contiene los enlaces a los demonios a activar y desactivar en cada nivel de
ejecución son: /etc/rc.<nivelDeEjecución>.d
La utilidad básica es /usr/sbin/update-rc.d, aunque también es posible utilizar otros programas más
amigables como /usr/bin/rcconf y /usr/bin/services-admin que habría que instalar previamente.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Mostrar los demonios activos
~$ rcconf
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
El comando update-rc.d nos permite automatizar el proceso de creación y borrado de enlaces a los scripts
de inicio, con en fin de iniciar/parar servicios.


Iniciar nuevos servicios en el proceso de arranque
Si queremos crear enlaces usando parámetros por defecto (run-levels), ejecutaremos:
~# update-rc.d <demonio> defaults

Al usar la opción defaults, update-rc.d creará enlaces para arrancar los servicios en los niveles de
ejecución 2345 y parar los servicios en los niveles de ejecución 016. Por defecto, todos los enlaces
tendrán el código de secuencia 20.

Lo que sería equivalente a ejecutar:
~# update-rc.d <demonio> start 20 2 3 4 5 . stop 20 0 1 6 .

O, si así lo preferimos, podemos especificar los niveles en que arranca un proceso, los niveles en los
que para, así como la prioridad.
~# update-rc.d <demonio> start 20 2 5 . stop 20 0 1 2 6 .


Si queremos eliminar servicios del proceso de arranque (desactivar el demonio), no tenemos más que
ejecutar el siguiente comando como root:
~# update-rc.d <demonio> remove
~# update-rc.d -f <demonio> remove


En Debian Linux la instalación de un paquete que contiene un servicio realiza la activación definitiva
de dicho servicio. Por tanto, rara vez necesitaremos utilizar la utilidad update-rc.d.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


Fedora Core Linux:
Al igual que en Debian, los directorios que contiene los enlaces a los demonios a activar y desactivar
en cada nivel de ejecución son: /etc/rc.<nivelDeEjecución>.d
Sin embargo, a diferencia de Debian la utilidad básica es /sbin/chkconfig. Finalmente, también existen
scripts gráﬁcos como /usr/sbin/serviceconf.

Mostrar los demonios activos  
~$ chkconfig --list  

Activar el demonio XXX en los run-levels por defecto  
~# chkconfig --add XXX  

Desactivar el demonio XXX  
~# chkconfig --del sshd

En Fedora Core Linux la instalación de un paquete que contenga un servicio no lo conﬁgura para su
ejecución definitiva (probablemente estará desactivado cuando reiniciemos el host).


Gentoo Linux:
Los enlaces a los demonios se encuentran en /etc/runlevels y la utilidad para manejarlos es
/sbin/rc-update.

Mostrar los demonios activos  
~$ /sbin/rc-update show  
 
Activar el demonio XXX en los run-levels por defecto  
~# rc-update add XXX default  
 
Desactivar el demonio XXX  
~# rc-update del XXX default

En Gentoo Linux la instalación de un paquete con un determinado servicio no implica su activación
deﬁnitiva.







9. PAQUETERÍA

A). Conceptos generales de la paquetería Linux

Son un conjunto de ficheros que contienen instrucciones para la reconstrucción de la aplicación
dentro del sistema nuevo, dentro de estos, podemos encontrar, Paquetes Binarios y Paquetes de
código Fuente.

Los paquetes existentes en GNU/Linux, son dependientes de la distribución en la que se estén
usando; son usados comúnmente para la compresión de aplicaciones en diferentes formatos para
distintos medios de instalación.

Un sistema de gestión de paquetes, también conocido como gestor de paquetes, es una colección de
herramientas que sirven para automatizar el proceso de instalación, actualización, configuración
y eliminación de paquetes de software.

Los Paquetes Binario, contienen, como se menciona, la información necesaria para reconstruir una
aplicación en un sistema nuevo, sin necesidad de encontrarse en la misma computadora; los más
comunes son:



B). Gestores de paquetes para las principales distribuciones Linux
-------------------------------------------------------------------
i.      deb

	Contienen ejecutables, archivos de configuración, páginas de información, derechos de copyright y
	otras documentaciones, los paquetes Debian se colocan en archivos .deb.

	El nombre del paquete debe de ser:
	<númeroDeVersión>-<versiónDeDebian>-<arquitecturaDeDebian>.deb

	Una desventaja de este tipo de paquetes, es su sistema de actualización, debido a que, se necesita
	tener todos los archivos, como si se tratase una nueva instalación. Estos paquetes también son
	usados por distribuciones basadas en la distribución Debian, algunas de estas, son: Ubuntu, Kubuntu,
	ZorinOS, Linux Mint, entre otras.
-------------------------------------------------------------------
-------------------------------------------------------------------
ii.     dpkg

	El programa dpkg es la base del sistema de gestión de paquetes de Debian GNU/Linux.
	Fue creado por Ian Jackson en 1993. Se utiliza para instalar, quitar, y proporcionar información
	sobre los paquetes .deb.

	dpkg es en sí misma una herramienta de bajo nivel; se necesita un frontal de alto nivel para traer
	los paquetes desde lugares remotos o resolver conflictos complejos en las dependencias de paquetes
	Debian cuenta con apt para esta tarea.

	Si tiene paquetes .deb, dpkg es lo que permite instalar o analizar sus contenidos. Pero este
	programa sólo tiene una visión parcial del universo Debian: sabe lo que está instalado en el sistema
	y lo que sea que se le provee en la línea de órdenes, pero no sabe nada más de otros paquetes
	disponibles. Como tal, fallará si no se satisface una dependencia. Por el contrario, herramientas
	como apt crearán una lista de dependencias para instalar todo tan automáticamente como sea posible.


	Instalación de paquetes
	dpkg es, sobre todo, la herramienta para instalar un paquete Debian ya disponible (porque NO
	DESCARGA nada). Para hacer esto utilizamos su opción -i o --install.

	Sintaxis:
	~# dpkg -i <paquete.deb>

	Ejemplo y Pantalla:
	~# dpkg -i man-db_2.7.0.2-5_amd64.deb
	(Reading database ... 86425 files and directories currently installed.)
	Preparing to unpack man-db_2.7.0.2-5_amd64.deb ...
	Unpacking man-db (2.7.0.2-5) over (2.7.0.2-4) ...
	Setting up man-db (2.7.0.2-5) ...
	Updating database of manual pages ...
	Processing triggers for mime-support (3.58) ...

	Podemos ver los diferentes pasos que realiza dpkg; sabemos, por lo tanto, en qué punto podría haber
	ocurrido un error. La instalación también puede realizarse en dos etapas:
	1) primero desempaquetado
	2) luego configuración.
	apt-get lo aprovecha limitando la cantidad de invocaciones de dpkg (ya que cada llamada es costosa
	debido a la carga de la base de datos en memoria, especialmente la lista de archivos ya instalados).

		Desempaquetado y configuración separados

		Sintaxis:
		~# dpkg --unpack <paquete.deb>
		~# dpkg --configure <archivo>

		Ejemplo y Pantalla:
		~# dpkg --unpack man-db_2.7.0.2-5_amd64.deb
		(Reading database ... 86425 files and directories currently installed.)
		Preparing to unpack man-db_2.7.0.2-5_amd64.deb ...
		Unpacking man-db (2.7.0.2-5) over (2.7.0.2-5) ...
		Processing triggers for mime-support (3.58) ...
		~# dpkg --configure man-db
		Setting up man-db (2.7.0.2-5) ...
		Updating database of manual pages ...

	A veces dpkg fallará intentando instalar un paquete y devolverá un error; si el usuario le ordena
	ignorarlo sólo generará una advertencia; es por esta razón que tenemos las diferentes opciones
	--force-*. La orden dpkg --force-help, o su documentación, proveerá una lista completa de estas
	opciones. El error más frecuente, con el que seguramente te encontraras tarde o temprano, es una
	colisión de archivos. Cuando un paquete contiene un archivo que ya está instalado por otro paquete,
	dpkg se negará a instalarlo. Aparecerá el siguiente mensaje:
	______________________________________________________________________________________
	Unpacking libgdm (from .../libgdm_3.8.3-2_amd64.deb) ...
	dpkg: error processing /var/cache/apt/archives/libgdm_3.8.3-2_amd64.deb (--unpack):
	 trying to overwrite '/usr/bin/gdmflexiserver', which is also in package gdm3 3.4.1-9
	──────────────────────────────────────────────────────────────────────────────────────
	En este caso, si piensa que reemplazar este archivo no es un riesgo significativo para la
	estabilidad de su sistema (que es el caso frecuentemente), puede utilizar la opción
	--force-overwrite que le indica a dpkg que ignore dicho error y sobrescriba el archivo.

	Si bien hay muchas opciones --force-* disponibles, probablemente sólo utilice regularmente
	--force-overwrite. Estas opciones sólo existen para situaciones excepcionales y es mejor evitarlas
	siempre que sea posible para respetar las reglas impuestas por el mecanismo de empaquetado. No
	olvide que estas reglas aseguran la consistencia y estabilidad de su sistema.

	┌───────────────────────────────────────────────────────────────────────────────────────────────────┐
	│ PRECAUCIÓN Uso efectivo de --force-*                                                              │
	├───────────────────────────────────────────────────────────────────────────────────────────────────┤
	│ Si no es cuidadoso, utilizar una opción --force-* puede llevar a un sistema en el que la familia  │
	│ de programas APT se negarán a funcionar. De hecho, algunas de estas opciones permitirán instalar  │
	│ un paquete cuando no se cumple una de sus dependencias o cuando existe un conflicto. El resultado │
	│ será un sistema inconsistente desde el punto de vista de dependencias y los programas APT se      │
	│ negarán a efectuar cualquier acción excepto aquellas que le permitan devolver el sistema a un     │
	│ estado consistente (que generalmente consiste en instalar la dependencia faltante o eliminar un   │
	│ paquete problemático). Esto resulta en mensajes como el siguiente, obtenido luego de instalar una │
	│ nueva versión de rdesktop ignorando su dependencia en una nueva versión de libc6:                 │
	│ ╔═══════════════════════════════════════════════════════════════════════════════════════════════╗ │
	│ ║ # apt full-upgrade                                                                            ║ │
	│ ║ [...]                                                                                         ║ │
	│ ║ You might want to run 'apt-get -f install' to correct these.                                  ║ │
	│ ║ The following packages have unmet dependencies:                                               ║ │
	│ ║   rdesktop: Depends: libc6 (>= 2.5) but 2.3.6.ds1-13etch7 is installed                        ║ │
	│ ║ E: Unmet dependencies. Try using -f.                                                          ║ │
	│ ╚═══════════════════════════════════════════════════════════════════════════════════════════════╝ │
	│ Un administrador valiente que está seguro de la correctitud de su análisis podría elegir ignorar  │
	│ una dependencia o conflicto y utilizar la opción --force-* correspondiente. En este caso, si desea│
	│ poder continuar utilizando apt o aptitude, deberá editar /var/lib/dpkg/status para borrar o       │
	│ modificar la dependencia o conflicto que desea invalidar.                                         │
	└───────────────────────────────────────────────────────────────────────────────────────────────────┘


	Eliminación de un paquete
	Ejecutar dpkg con la opción -r o --remove seguida del nombre de un paquete eliminará dicho paquete.
	Esta eliminación, sin embargo, no es completa: se mantendrán todos los archivos de configuración,
	scripts del encargado, archivos de registros (registros de sistema) y otros datos de usuarios que
	gestiona el paquete. De esta forma, puede desactivar el programa fácilmente al desinstalarlo pero es
	posible reinstalarlo rápidamente con la misma configuración. Para eliminar completamente todo lo
	asociado con un paquete, utilice la opción -P o --purge seguida del nombre del paquete.

	Sintaxis:
	~# dpkg -r <paquete>
	~# dpkg -P <paquete>

	Eliminación y purgado del paquete debian-cd
	Ejemplo y Pantalla:
	~# dpkg -r debian-cd
	(Reading database ... 97747 files and directories currently installed.)
	Removing debian-cd (3.1.17) ...
	~# dpkg -P debian-cd
	(Reading database ... 97401 files and directories currently installed.)
	Removing debian-cd (3.1.17) ...
	Purging configuration files for debian-cd (3.1.17) ...

	https://debian-handbook.info/browse/es-ES/stable/sect.manipulating-packages-with-dpkg.html
	5.4.3. Consulta de la base de datos de dpkg e inspección de archivos .deb


	Archivo de registro de dpkg
	dpkg mantiene un registro de todas sus acciones en /var/log/dpkg.log. Este registro es
	extremadamente detallado ya que incluye cada una de las etapas por las que pasa un paquete
	gestionado por dpkg. Además de ofrecer una forma de rastrear el funcionamiento de dpkg, sobre todo
	ayuda a mantener un historial del desarrollo del sistema: uno puede encontrar el momento exacto en
	el que se instaló o actualizó un paquete, y esta información puede ser extremadamente útil cuando se
	intenta entender un cambio de comportamiento reciente. Además, como se registran todas las
	versiones, es sencillo verificar y referenciar información con el archivo changelog.Debian.gz del
	paquete en cuestión o inclusive con reportes de error online.


	https://debian-handbook.info/browse/es-ES/stable/sect.manipulating-packages-with-dpkg.html
	(...)


	Para mostrar todas las dependencias o archivos de configuración, etc., de algún programa.

	Sintaxis:
	~# dpkg -L <programa>


	Herramientas Dpkg
	Debian posee una serie de herramientas que es necesario llamar para construir un paquete:

	• "dpkg-source" Empaqueta y desempaqueta los archivos fuentes de un paquete Debian.
	• "dpkg-gencontrol" Lee la información de un árbol fuente Debian desempaquetado y genera un
		paquete binario de control, generando una entrada para éste en el fichero debian/files.
	• "dpkg-shlibdeps" Calcula las dependencias de ejecutables respecto a bibliotecas.
	• "dpkg-genchanges" Lee la información de un árbol fuente Debian desempaquetado y ya
		construido, generando un fichero de control de los últimos cambios (un.changes).
	• "dpkg-buildpackage" Es un script de control que se puede utilizar para automatizar la
		construcción del paquete.
	• "dpkg-distaddfile" Añade una entrada de un fichero a debian/files.
	• "dpkg-parsechangelog" Lee el fichero de cambios changelog, de un árbol fuente Debian
		desempaquetado y genera una salida con la información de estos cambios, convenientemente
		preparada.
-------------------------------------------------------------------
-------------------------------------------------------------------
iii.    apt

	apt (Advanced Packaging Tool): Herramienta Avanzada de Empaquetado, abreviado APT, es un
	sistema de gestión de paquetes creado por el proyecto Debian. APT simplifica en gran medida
	la instalación y eliminación de programas en los sistemas GNU/Linux.

	Lo que hace a Debian tan popular entre administradores es lo sencillo que resulta instalar software
	y lo fácil que se puede actualizar el sistema completo. Esta ventaja única es en gran parte debido
	al programa APT, que los administradores de Falcot Corp estudiaron con entusiasmo.

	Lo que hace este programa «avanzado» es su enfoque sobre paquetes. No sólo los evalúa
	individualmente sino que los considera como un todo y produce la mejor combinación posible de
	paquetes dependiendo de lo que esté disponible y sea compatible (según dependencias).

	-----------------------------------------------
	VOCABULARIO Origen del paquete y paquete fuente
	En inglés se utiliza la misma palabra para «origen» y «fuente»: «source». Por lo tanto es sencillo
	confundir un paquete fuente («source package») que contiene el código fuente de un programa con un
	«origen de paquetes» («package source»), es decir: un repositorio (sitio web, servidor FTP, CD-ROM,
	directorio local, etc.) que contiene paquetes.
	-----------------------------------------------

	Se necesita proveerle a APT una «lista de orígenes de paquetes»: el archivo /etc/apt/sources.list
	contendrá una lista de diferentes repositorios («sources») que publican paquetes Debian. APT
	importará la lista de paquetes publicada por cada una de estos repositorios. Realiza esta operación
	descargando los archivos Packages.xz (en el caso de paquetes binarios) o una variante que utiliza
	otro método de compresión (como Packages.gz o .bz2) y archivos Sources.xz o una variante (en el
	caso de un origen de paquetes fuente) y analizando sus contenidos. Cuando ya posee una copia
	antigua de estos archivos, APT puede actualizarla sólo descargando las diferencias.
	https://debian-handbook.info/browse/es-ES/stable/apt.html

	No existe un programa apt en sí mismo, sino que APT es una biblioteca de funciones C++ que se emplea
	por varios programas de línea de comandos para distribuir paquetes. En especial, apt-get y apt-cache.

	Existen también programas que proporcionan un frontispicio para APT, generalmente basados en apt-get,
	como aptitude con una interfaz de texto ncurses, Synaptic con una interfaz gráfica GTK+, o Adept con
	una interfaz gráfica Qt. Existe un repositorio central con más de ~25.000 paquetes apt utilizados
	por apt-get y programas derivados para descargar e instalar aplicaciones directamente desde
	Internet, conocida como una de las mejores cualidades de Debian.

	APT fue rápidamente utilizado para funcionar con paquetes .deb, en los sistemas Debian y
	distribuciones derivadas, pero desde entonces ha sido modificado para trabajar con paquetes RPM, con
	la herramienta apt-rpm, y para funcionar en otros sistemas operativos, como Mac OS X (Fink) y
	OpenSolaris (distribución Nexenta OS). Cabe mencionar que a partir de la versión 1.0, esta incluye
	una barra de progreso que muestra el porcentaje de instalación.


	APT es un proyecto gigante y su plan original incluia una interfaz gráfica. Está basado en una
	biblioteca que contiene la aplicación central y apt-get fue la primera interfaz — basada en la línea
	de comandos — desarrollada dentro del proyecto. apt es un segundo frontend de linea de comandos
	proporcionado por APT el cual soluciona algunos errores de diseño de la orden apt-get.

	Varias otras interfaces gráficas aparecieron luego como proyectos externos: synaptic, aptitude (que
	incluye tanto una interfaz en modo texto como una gráfica — aún cuando no esté completa), wajig,
	etc. La interfaz más recomendada, apt es la que utilizaremos en los ejemplos de esta sección. Note,
	sin embargo, que la sintaxis de línea de comandos de apt-get y de aptitude son muy similares.
	Detallaremos cuando existan grandes diferencias entre apt, apt-get y aptitude.


	Inicialización
	Para cualquier trabajo con APT necesita actualizar la lista de paquetes; puede hacer esto
	simplemente con "apt update". Dependiendo de la velocidad de su conexión esta operación puede demorar
	ya que involucra descargar una cantidad de archivos Packages/Sources/Translation-codigo-idioma que
	han crecido gradualmente a medida que se desarrolló Debian (más de 10 MB de datos para la sección
	main). Por su puesto, instalar desde un CD-ROM no requiere descarga alguna — en ese caso esta
	operación es muy rápida.


	Instalación y eliminación
	Con APT puede agregar o eliminar paquetes del sistema, con "apt install <paquete>" y
	"apt remove <paquete>" respectivamente. En ambos casos APT automáticamente instalará las
	dependencias necesarias o eliminará los paquetes que dependen del paquete que está siendo eliminado.
	La orden ap purge paquete realiza una desinstalación completa — se eliminan también los archivos de
	configuración.

~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
NOTA ¿dpkg o apt?
Se debe ver a dpkg como una herramienta de sistema (tras bambalinas) y apt como una herramienta
más cerca del usuario que evita las limitaciones del primero. Estas herramientas trabajan
juntas, cada una con sus particularidades, adecuadas para tareas específicas.
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
-------------------------------------------------------------------
-------------------------------------------------------------------
iv.     apt-add-repository
-------------------------------------------------------------------
-------------------------------------------------------------------
v.      apt-cache
-------------------------------------------------------------------
-------------------------------------------------------------------
vi.     apt-cdrom
-------------------------------------------------------------------
-------------------------------------------------------------------
vii.    apt-clone
-------------------------------------------------------------------
-------------------------------------------------------------------
viii.   apt-config
-------------------------------------------------------------------
-------------------------------------------------------------------
ix.     aptd
-------------------------------------------------------------------
-------------------------------------------------------------------
x.      apt-extracttemplates
-------------------------------------------------------------------
-------------------------------------------------------------------
xi.     apt-get
-------------------------------------------------------------------
-------------------------------------------------------------------
xii.    aptitude: Depende de dpkg
-------------------------------------------------------------------
-------------------------------------------------------------------
xiii.   aptitude-create-state-bundle
-------------------------------------------------------------------
-------------------------------------------------------------------
xiv.    aptitude-curses
-------------------------------------------------------------------
-------------------------------------------------------------------
xv.     aptitude-run-state-bundle
-------------------------------------------------------------------
-------------------------------------------------------------------
xvi.    apt-key
-------------------------------------------------------------------
-------------------------------------------------------------------
xvii.   apt-mark
-------------------------------------------------------------------
-------------------------------------------------------------------
xviii.  apt-sortpkgs
-------------------------------------------------------------------
-------------------------------------------------------------------
xix.    apturl
-------------------------------------------------------------------
-------------------------------------------------------------------
xx.     apturl-gtk
-------------------------------------------------------------------
-------------------------------------------------------------------
xxi.    apt-fast

	apt-fast is a shellscript wrapper for apt-get and aptitude that can drastically improve apt download times by downloading packages in parallel, with multiple connections per package.

	(...)

	Installation
	~$ sudo add-apt-repository ppa:apt-fast/stable
	~$ sudo apt-get update
	~$ sudo apt-get -y install apt-fast

	Ubuntu PPA
	You can use the Ubuntu PPA to get a graphical configuration file setup and automatic updates, for details see:
	ppa:apt-fast/stable (https://code.launchpad.net/~apt-fast/+archive/ubuntu/stable)

	Debian and derivates
	Some distros, such as PCLinuxOS include apt-fast in their repositories. However if not included like in Debian or Kali Linux, then the PPA can be manually added by creating a new file /etc/apt/sources.list.d/apt-fast.list:
	┌───────────────────────────────────────────────────────────────────────┐
	│deb http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main        │
	│deb-src http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main    │
	└───────────────────────────────────────────────────────────────────────┘

	To install apt-fast execute following commands as root:
	~# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2166B8DE8BDC3367D1901C11EE2FF37CA8DA16B
	~# apt-get update
	~# apt-get install apt-fast
	Note that the PPA version bionic might need to be updated with the recent Ubuntu LTS codename to stay up-to-date.

	Interaction-free installation
	To install apt-fast without interaction execute the following commands as root after adding the package sources to the sources.list:
	┌──────────────────────────────────────────────────────────┐
	│(...)                                                     │
	│DEBIAN_FRONTEND=noninteractive apt-get install -y apt-fast│
	│(...)                                                     │
	└──────────────────────────────────────────────────────────┘
	DEBIAN_FRONTEND=noninteractive apt-get install -y apt-fast
	To update specific configuration values use the debconf command line interface as root, e.g.:
	~# echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
	~# echo debconf apt-fast/dlflag boolean true | debconf-set-selections
	~# echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections

	Quick install
	You can quickly install apt-fast by running:
	~# /bin/bash -c "$(curl -sL https://git.io/vokNn)"

	Manual
	A manual install can be performed as such:
	~# cp apt-fast /usr/local/sbin/
	~# chmod +x /usr/local/sbin/apt-fast
	~# cp apt-fast.conf /etc
	You need to have aria2c installed:
	~# apt-get install aria2
	Then simply run apt-fast instead of apt-get or aptitude.
	
	(...)

	Man page installation
	~# mkdir -p /usr/local/share/man/man8/
	~# cp ./man/apt-fast.8 /usr/local/share/man/man8
	~# gzip -f9 /usr/local/share/man/man8/apt-fast.8
	~# mkdir -p /usr/local/share/man/man5/
	~# cp ./man/apt-fast.conf.5 /usr/local/share/man/man5
	~# gzip -f9 /usr/local/share/man/man5/apt-fast.conf.5

	Configuration
	The apt-fast configuration file is located at: /etc/apt-fast.conf

	Package manager
	_APTMGR=apt-get
	Change package manager used for installation. Supported are apt-get, aptitude, apt.

	(...)

	ilikenwf. (16 may 2020). apt-fast 1.9. Recovered from https://github.com/ilikenwf/apt-fast

My recommendation for this package is that you install it manually with "git clone", configure it to implement aptitude and occasionally update the installation. Always try to see and analyze the code and / or the behavior of all the packages that you use.
.........................................................................................................
Apt-fast es un script de la shell bash que puede implementar tanto el comando apt-get y aptitude, el cual mejora drásticamente los tiempos de descarga, descargando paquetes en paralelo, con múltiples conexiones por paquete (creando hilos/threads).

Formas de instalación:

1. Agregando apt-fast a los repositorios de Debian:
~$ sudo add-apt-repository ppa:apt-fast/stable
~$ sudo apt-get update
~$ sudo apt-get -y install apt-fast

Ubuntu PPA
Puede usar el PPA de Ubuntu para obtener una configuración de archivo de configuración gráfica y actualizaciones automáticas, para más detalles, consulte:
ppa:apt-fast/stable (https://code.launchpad.net/~apt-fast/+archive/ubuntu/stable)

Debian y derivados
Algunas distribuciones, como PCLinuxOS incluyen apt-fast en sus repositorios. Sin embargo no son incluidos como en Debian o Kali Linux, para eso PPA agregra manualmente creando un nuevo archivo "/etc/apt/sources.list.d/apt-fast.list" con el siguiente contenido:
┌───────────────────────────────────────────────────────────────────────┐
│deb http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main        │
│deb-src http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main    │
└───────────────────────────────────────────────────────────────────────┘

Para instalar apt-fast debe ejecutar los siguientes comandos como root:
~# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2166B8DE8BDC3367D1901C11EE2FF37CA8DA16B
~# apt-get update
~# apt-get install apt-fast

Tenga en cuenta que la versión de PPA bionic podría necesitar actualizarse con el nombre de código reciente de Ubuntu LTS para mantenerse actualizado.

2. Instalación sin interacción
Para instalar apt-fast sin interacción, ejecute los siguientes comandos como root, después de agregar las fuentes del paquete a sources.list:
┌──────────────────────────────────────────────────────────┐
│(...)                                                     │
│DEBIAN_FRONTEND=noninteractive apt-get install -y apt-fast│
│(...)                                                     │
└──────────────────────────────────────────────────────────┘
Para actualizar los valores de configuración específicos, usar la interfaz de línea de comandos debconf como root, por ejemplo:
~# echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
~# echo debconf apt-fast/dlflag boolean true | debconf-set-selections
~# echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections

3. Instalación rapida
Puedes instalar apt-fast rapidamente, ejecutando:
~# /bin/bash -c "$(curl -sL https://git.io/vokNn)"

4. Instalación manual
Una instalación manual se puede realizar como tal:
~# cp apt-fast /usr/local/sbin/
~# chmod +x /usr/local/sbin/apt-fast
~# cp apt-fast.conf /etc
Necesitas tener instalado aria2c:
~# apt-get install aria2
Luego, simplemente ejecute apt-fast en lugar de apt-get o aptitude.
	
(...)

5. Instalación de la página del manual
~# mkdir -p /usr/local/share/man/man8/
~# cp ./man/apt-fast.8 /usr/local/share/man/man8
~# gzip -f9 /usr/local/share/man/man8/apt-fast.8
~# mkdir -p /usr/local/share/man/man5/
~# cp ./man/apt-fast.conf.5 /usr/local/share/man/man5
~# gzip -f9 /usr/local/share/man/man5/apt-fast.conf.5


Configuración
El archivo de configuración de apt-fast esta localizado en /etc/apt-fast.conf

Gestor de paquetes
_APTMGR=apt-get
Cambiar el administrador de paquetes utilizado para la instalación. Se admiten apt-get, aptitude, apt.

(...)

ilikenwf. (16 may 2020). apt-fast 1.9. Recovered from https://github.com/ilikenwf/apt-fast

Mi recomendación de este paquete es que lo instales manualmente con "git clone", lo configures para que implemente aptitude y de vez en cuando actualices la instalación. Trata de siempre de ver y analizar el código y/o el comportamiento de todos los paquetes que vallas a utilizar.
-------------------------------------------------------------------
-------------------------------------------------------------------
xxii.   tasksel
-------------------------------------------------------------------
-------------------------------------------------------------------
xxiii.  synaptic
-------------------------------------------------------------------
-------------------------------------------------------------------
xxiv.   rpm


	Por sus siglas en inglés Redhat Package Manager, este tipo de paquetería para Linux fue desarrollado para la distribución de Red Hat. RPM Package Manager (o RPM, originalmente llamado Red Hat Package Manager, pero se convirtió en acrónimo recursivo) es una herramienta de administración de paquetes pensada básicamente para GNU/Linux. Originalmente desarrollado por Red Hat para Red Hat Linux, en la actualidad muchas distribuciones GNU/Linux lo usan, dentro de las cuales las más destacadas son Fedora, Mandriva, Mageia, PCLinuxOS, openSUSE, SuSE Linux. También se ha portado a otros sistemas operativos.

	Es capaz de crear, instalar, actualizar, desinstalar, verificar y solicitar programas. RPM es el formato de paquete de partida del Linux Standard Base.

	Actualmente todas las distribuciones basadas en Red Hat ocupan los paquetes RPM, algunas de ellas son: Fedora y openSuSe. Una poderosa ventaja, sobre este tipo de paquetes sobre otros, es su forma de actualización para las aplicaciones, estos, no necesitan tener los mismos datos que el instalador original, solamente puede incluir (si se desea) los archivos que se actualizarán, esto reduce altamente el peso del paquete.


	Características
	Para el administrador de sistemas que realice mantenimiento y actualización de software, el uso de gestor de paquetes en vez de construirlos manualmente tiene ventajas como simplicidad, consistencia y la capacidad de que aquellos procesos se automaticen.

	Entre las características de RPM están:

	■ Los paquetes pueden ser cifrados y verificados con GPG y MD5.
	■ Los archivos de código fuente (por ejemplo .tar.gz, .tar.bz2) están incluidos en SRPMs, posibilitando una verificación posterior.
	■ PatchRPMs y DeltaRPMs, que son equivalentes a ficheros parche, pueden actualizar incrementalmente los paquetes RPM instalados.
	■ Las dependencias pueden ser resueltas automáticamente por el gestor de paquetes.

	Algunos Comandos:
	Muestra paquetes instalados.
	~$ rpm -qa

	Instala un paquete
	~$ rpm -ivh "localFile.rpm"
-------------------------------------------------------------------
-------------------------------------------------------------------
xxv.    yum

-------------------------------------------------------------------
-------------------------------------------------------------------
xxvi.   dnf

	Es un gestor de paquetes escrito en python, que usa curl, en este momento se encuentra en etapa de prueba “mismo que ya se integra por defecto al instalar Fedora 21”, el proyecto Fedora ha propuesto que será el sucesor de YUM y que apartir de Fedora 22, sera el gestor de paquetes por defectos.

	Recordemos que DNF apareció disponible por primera vez en Fedora 18 y desde entonces a mejorado notablemente en sus funciones, a tal grado que son muy pocas las funciones que aun no se han migrado del viejo YUM.

	Los usuarios que empiezan a utilizar DNF, en ocasiones se sorprenden con el comportamiento del nuevo gestor de paquetes, pues este presenta mejor rendimiento al realizar las descargas y la instalación de paquetes.

	Entre las grandes mejoras nos encontramos que los paquetes se almacenan por defecto en el cache del sistema y el uso de meta datos, teniendo así un especie de función aprueba de errores, facilitando la descarga de los paquetes a instalar o actualizar, en caso de que ocurra algún problema externo podemos recuperar nuestra instalación a partir del ultimo paquete descargado.

	Sintaxis:
	~# dnf [options] <command> [<args>...]

	Las principales opciones:

	Con la opción "autoerase" Elimina paquetes con problemas que pueden dañar nuestro sistema

	Con la opción "check-update" Verifica la existencia de paquetes actualizados

	Con la opción "clean" Elimina los datos del caché

	Con la opción "distro-sync" Sincroniza los paquetes instalados a las últimas versiones disponibles

	Con la opción "downgrade" Desactualiza un paquete a una versión anterior

	Con la opción "erase" Elimina uno o varios paquetes de su sistema

	Con la opción "group" Muestra, o usa, la información de grupos

	Con la opción "help" Muestra un mensaje de ayuda del uso

	Con la opción "history" Mostrar, o utilizar, el historial de la transacción

	Con la opción "info" Muestra detalles acerca de un paquete o de un grupo de paquetes

	Con la opción "install" Instala uno o varios paquetes en su sistema

	Con la opción "list" Muestra un paquete o grupos de paquete

	Con la opción "makecache" Genera el caché de metadatos

	Con la opción "provides" Localiza el paquete que ofrezca el valor indicado

	Con la opción "reinstall" reinstalar un paquete

	Con la opción "repolist" Muestra los repositorios de software configurados

	Con la opción "repository-packages" Ejecuta comandos por encima de todos los paquetes en un repositorio dado.

	Con la opción "search" Busca detalles en los paquetes para la cadena indicada

	Con la opción "updateinfo" Muestra avisos acerca de un paquete

	Con la opción "upgrade" Actualiza uno o varios paquetes en su sistema

	Con la opción "upgrade-to" Actualizar un paquete en su sistema a la versión especificada

-------------------------------------------------------------------
-------------------------------------------------------------------
xxvii.  tgz

	Es un archivo de paquetes específico para Unix, comprimido con el compresor Gnu Zip. Es un paquete de código fuente, ocupado para contener aplicaciones, y su código fuente, para no tener que crear un tipo de paquete específico para cada distribución. A diferencia de los paquetes .deb, o .rpm, este no contiene instrucciones particulares de instalación para cada distribución, por lo que la instalación del contenido deberá ser compilado por el usuario.
-------------------------------------------------------------------
-------------------------------------------------------------------
xxviii. ebuild

	Ebuild: Paquete usado solo por la distribución Gentoo, consiste en un script bash, ejecutable solo en un entorno específico. Sus archivos, deben de ser archivos de texto con la extensión .ebuild

	El nombramiento de este paquete debe obedecer la siguiente regla: nombre-versión.ebuild
	El contenido del nombre solo puede contener letras minúsculas sin acentuar, dígitos del cero al nueve, guiones, guiones bajos o el signo de adición; también, si se desea, se puede agregar alguno de los siguientes sufijos:

	Sufijo		Significado
	_alpha		Liberación alpha
	_beta		Liberación beta
	_pre		Liberación previa a liberación candidata final
	_rc			Liberación candidata final
	Sin sufijo	Versión normal.
	_p			Versión con parches
-------------------------------------------------------------------
-------------------------------------------------------------------
xxix.   pacman

	Combina un paquete binario simple, con un sistema de fácil construcción. La meta de pacman es el facilitamiento de la instalación de paquetes, sea que estén dentro de los repositorios oficiales de Arch, o creaciones de los mismos usuarios.



C). Instalación de paquetes desde código fuente



D). Librerias

Según vamos haciendo programas de ordenador, nos damos cuenta que algunas partes del código se utilizan en muchos de ellos. Por ejemplo, podemos tener varios programas que utilizan números complejos y las funciones de suma, resta, etc son comunes. También es posible, por ejemplo, que nos guste hacer juegos y nos damos cuenta que estamos repitiendo una y otra vez el código para mover una imagen (un marcianito o a Lara Croft) por la pantalla.

Sería estupendo poder meter esas funciones en un directorio separado de los programas concretos y tenerlas ya compiladas, de forma que podamos usarlas siempre que queramos. Las ventajas enormes de esto son:
■ No tener que volver a escribir el código (o hacer copy-paste).
■ Nos ahorraremos el tiempo de compilar cada vez ese código que ya está compilado. Además, ya sabemos que mientras hacemos un programa, probamos y corregimos, hay que compilar entre muchas y "más muchas" veces.
■ El código ya compilado estará probado y será fiable. No las primeras veces, pero sí cuando ya lo hayamos usado en 200 programas distintos y le hayamos ido corrigiendo los errores.

La forma de hacer esto es hacer librerías. Una librería son una o más funciones que tenemos ya compiladas y preparadas para ser utilizadas en cualquier programa que hagamos. Hay que tener el suficiente ojo cuando las hacemos como para no meter ninguna dependencia de algo concreto de nuestro programa. Por ejemplo, si hacemos nuestra función de mover la imagen de Lara Croft, tendremos que hacer la función de forma que admita cualquier imagen, ya que no nos pegaría nada Lara Croft dando saltos en un juego estilo "space invaders".

Tradicionalmente, las hemos podido encontrar en los siguientes directorios
■ /lib: librerías esenciales para el funcionamiento del sistema.
■ /lib64: igual que para el anterior, para sistemas de 64 bits.

Sin embargo, en distribuciones modernas que utilizan systemd "/lib" y "/lib64" son en realidad enlaces simbólicos a "/usr/lib" y "/usr/lib64", respectivamente. En estos directorios también encontramos las librerías de programas de usuario. Si bien son importantes, estas últimas no son críticas para la operación del sistema.

En Linux tenemos dos tipos de bibliotecas (o librerías, hacemos referencia a lo mismo): estáticas y dinámicas/compartidas.
-------------------------------------------------------------------
-------------------------------------------------------------------
i.   Estáticas

Bibliotecas estáticas, con extensión *.a:

~$ sudo find / -name '*.a'
[sudo] password for usuario: 
/usr/lib/x86_64-linux-gnu/libc_nonshared.a
/usr/lib/x86_64-linux-gnu/libfl.a
/usr/lib/x86_64-linux-gnu/libBrokenLocale.a
/usr/lib/x86_64-linux-gnu/libc.a
(...)

Una librería estática se “encastra” dentro de nuestro ejecutable lo que significa que podemos llevarlo a otro ordenador sin temer a que nos falten librerías. O sea se copia parte de la librería en los programas cuando se compilan. Dicho de otra manera, la biblioteca se “embebe” en el contenido del programa.

Esto tiene varias consecuencias:
■ El programa ocupa más espacio en disco, ya que las librerías necesarias se encuentran en el propio programa.
■ Como ventaja tenemos lo podemos llevar de un sistema a otro sin necesidad de migrar también las librerías (ya que están incluidas).
■ Pero si las librerías tienen un bug y aparece una versión que arregla ese fallo tienes que recompilar el código.
■ El programa en sí consume más RAM en ejecución, ya que las librerías están embebidas. Sin embargo, se ejecuta en principio más rápido ya que todo lo necesario está incluido en el propio programa. O sea las funciones están dentro del ejecutable y no tenemos que buscarlas.
■ Si una biblioteca que se utilizó durante la compilación se actualizara, sería necesario recompilar el programa para que incluyera los cambios que se han realizado en esa biblioteca.
-------------------------------------------------------------------
-------------------------------------------------------------------
ii.  Dinámicas o compartidas

Para empezar, en Linux las librerías compartidas aparecen en forma de archivos .so (de shared objects, u objetos compartidos). Hoy en día son las que se utilizan por norma general:

~$ sudo find / -name '*.so'
[sudo] password for usuario:
/usr/lib/libMonoSupportW.so
/usr/lib/ecryptfs/libecryptfs_key_mod_passphrase.so
/usr/lib/x86_64-linux-gnu/cifs-utils/idmapwb.so
/usr/lib/x86_64-linux-gnu/alsa-lib/libasound_module_pcm_vdownmix.so
/usr/lib/x86_64-linux-gnu/alsa-lib/libasound_module_ctl_oss.so
/usr/lib/x86_64-linux-gnu/alsa-lib/libasound_module_pcm_oss.so

Una librería dinámica no se “encastra” dentro de nuestro ejecutable por lo que nuestro ejecutable sera mas pequeño pero si nos llevamos nuestro ejecutable a otra maquina las librerías tienes que ir con el.

Las librerías compartidas en Linux consisten en archivos individuales que contienen una lista de funciones. Este conjunto suele recibir el nombre de API (Application Programmable Interface) y está disponible para cualquier programa que lo necesite. De esta manera, no hace falta volver a escribir las funciones en cuestión para cada uno de ellos. Vale la pena aclarar que varios programas pueden acceder a una librería compartida al mismo tiempo. Por otro lado, si una librería dada no está disponible, cualquier programa que la necesite no podrá funcionar.

En el caso de las bibliotecas dinámicas, el programa sólo incluye en su código referencias a las bibliotecas, que se localizan en otra parte. Las consecuencias de esto son:
■ Programas de tamaño reducido, ya que sólo incluyen referencias a las bibliotecas y nada embebido.
	Menor ocupación también en RAM.
■ El programa puede sacar partido de las actualizaciones de las bibliotecas sin necesidad de recompilar.
■ Si existe un bug en la librería se actualiza y arreglado en todos los ejecutables que la usan.

Pero por otro lado, surgen otra serie de requisitos y problemas:
■ La ejecución es mas lenta a causa de tener que ir a buscar la librería fuera del ejecutable.
■ Si hay un cambio en una función (mas parámetros, cambio de comportamiento ..) tenemos que volver a compilar todo.
■ En ocasiones las actualizaciones de bibliotecas no son compatibles con los programas que las utilizan.
	Por ello hay un sistema de versionado en las bibliotecas compartidas:

ej.: libsocket.so.1

Donde 1 es la versión de la biblioteca compartida libsocket

Para evitar conflicto, muchas veces se actualiza una biblioteca y también se deja como respaldo la versión anterior.

■ Para que los programas localicen las bibliotecas compartidas, será necesario definir una serie de variables de entorno y ficheros de configuración globales.
■ Un problema en una librería compartida afecta a todos los programas que hacen uso de ella.
■ Gran cantidad de dependencias entre librerías compartidas. Si hacemos uso de un programa de gestión de paquetes como yum o apt-get, puede ser menos doloroso por decirlo de alguna manera … si tenemos que resolver las dependencias manualmente, prefiero no hablar.

Con todo, la tendencia es a utilizar librerías compartidas. Las estáticas han quedado relegadas a funciones extrañas, programas antiguos y sistemas de emergencia que obviamente, llevan las bibliotecas embebidas.
-------------------------------------------------------------------
-------------------------------------------------------------------
iii. Gestión de bibliotecas

     1. Localización de bibliotecas

Normalmente, problemas en que los programas puedan localizar una biblioteca. Para solucionarlo, podremos proceder de distintas formas:

■ Fichero de configuración global
■ Variables de entorno. Si la biblioteca está disponible, quizá el programa afectado no pueda localizarla. Podríamos añadirla a la variable "LD_LIBRARY_PATH".
■ Si la biblioteca está disponible pero en el sistema recibe un nombre distinto al que espera el programa, tendríamos que hacer un enlace simbólico al nombre de biblioteca al que hace referencia el programa.
■ Comprobar que la biblioteca esté instalada con find. Si no lo está, la instalamos. Ya sea descargando, manualmente la librería y/o utilzar alguno de los gestores de paquetes.



Fichero de configuración global
-------------------------------
/etc/ld.so.conf

Contendrá:
include ld.so.conf.d/*.conf

Es decir, incluye todos los ficheros (*) de configuración específicos del directorio "/etc/ld.so.conf.d/"

Cualquier cambio en estas rutas de bibliotecas, y especialmente si instalamos bibliotecas a partir de código fuente, tendremos que ejecutar el comando "ldconfig".

El comando "ldconfig" crea la caché de biblioteca: un fichero binario localizado en "/etc/ld.so.cache" y utilizado por los programas que hacen uso de bibliotecas compartidas.


Variables de entorno
-------------------------------
Para ello se utilizará la variable "LD_LIBRARY_PATH"

~$ export LD_LIBRARY_PATH=/usr/local/pruebalib:/usr/local/programa/lib
De esta manera se incluirá en los directorios de búsqueda de bibliotecas a "/usr/local/pruebalib" y "/usr/local/programa/lib"


Enlace simbólico
-------------------------------
Ejemplo:Siendo prueba.so.5.2 la biblioteca instalada y prueba.so.5 a la que hace referencia el programa (podemos verlo con "ldd")

~$ ln -s prueba.so.5.2 prueba.so.5


Find
-------------------------------
~$ sudo find / -name 'libc.a'
/usr/lib/x86_64-linux-gnu/libc.a

     2. Resolución de problemas de librerías faltantes

Una forma de resolver los problemas es con el comando "ldd", ya que muestra las librerías compartidas de un programa o comprueba las librerías que utiliza un programa y que sin el no funcionaria.

Sintaxis:
~$ ldd <rutaAbsolutaDeUnPrograma>

Ejemplo y pantalla:
~$ ldd /usr/bin/ssh
...
linux-vdso.so.1 =&amp;gt;  (0x00007fff4d7c4000)
libselinux.so.1 =&amp;gt; /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f55cb434000)
libgssapi_krb5.so.2 =&amp;gt; /usr/lib/x86_64-linux-gnu/libgssapi_krb5.so.2 (0x00007f55ca7e2000)
libc.so.6 =&amp;gt; /lib/x86_64-linux-gnu/libc.so.6 (0x00007f55ca423000)
/lib64/ld-linux-x86-64.so.2 (0x00007f55cb8d5000)
...

A la derecha, entre paréntesis también podemos apreciar la dirección de memoria en la que está cargada
cada librería.

Donde:
■ linux-vdso.so.1 (la primer línea) =>: Muestra que no ha encontrado la biblioteca, no indica ninguna ubicación en disco debido a que se trata de una librería residente en el kernel. Se la conoce con el nombre de virtual dynamic shared object.
■ libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1: La biblioteca necesaria libselinux.so.1 se encuentra (referenciada con => ) en /lib/x86_64-linux-gnu/libselinux.so.1.
■ /lib64/ld-linux-x86-64.so.2: ruta completa a la librería requerida.
■ Los números hexadecimales (ej .: 0x00007fff4d7c4000) son direcciones de carga de las librerías en memoria. Son aleatorias y no estables, por lo que si volvemos a ejecutar ldd /usr/bin/ssh observaremos que el número ha cambiado.

     3. Actualizar Librerias

ldconfig actualiza las librerías utilizadas por el sistema, recomendable ejecutarlo cada vez que se instale un programa.

Recuerden ejecutarlo como root.
~# ldconfig

#ldconfig crea los enlaces necesarios y la memoria caché (para uso del enlazador en tiempo de ejecución,
#ld.so) a las bibliotecas compartidas más recientes encontradas en los directorios especificados en la
#línea de comandos, en el archivo /etc/ld.so.conf , y en los directorios de confianza (/usr/lib y /lib).

#Usa el enlazador dinámico para ello.

#Se necesita usar ldconfig para crear, actualizar y eliminar los enlaces y caché necesarios que usa el enlazador en tiempo de ejecución ld.so de las bibliotecas dinámicas más recientes encontradas en los directorios especificados en la linea de comandos, en el archivo /etc/ld.so.conf, y en los directorios de confianza /usr/lib, /lib64 y /lib.

#El comando ldconfig chequea las cabeceras y nombres de los ficheros de las bibliotecas que encuentra cuando determina cual es la versión que deberían tener sus enlaces actualizados. Este comando también crea un archivo llamado /etc/ld.so.cache que se usa para acelerar el enlazado (linking)

#https://www.lifewire.com/ldconfig-linux-command-4093742
-------------------------------------------------------------------
-------------------------------------------------------------------
iv. ¿Como se compilan?

     1. Estáticas

1.- Crear los ficheros objeto (.o) a partir de nuestro codigo fuente (.c)
gcc -c fuente.c -o fuente.o

2.- Crear las librerías (.a)
ar -rv libnombre.a fuente1.o fuente2.o … fuenten.o

Revisar la foto: 8.jpg

     2. Dinámicas

1.- Crear los ficheros objeto
gcc -c fuente.c -o fuente.o

2.- Crear las librerias dinamicas
ld -o liblibreria.so objeto1.o objeto2.o … -shared

Revisar la foto: 9.jpg







10. MANEJO DE GRUPOS Y USUARIOS

El objetivo principal de la gestión de usuarios y grupos en Linux, es permitir que múltiples usuarios hagan uso del sistema, pero de una forma ordenada y segura.

A). Archivos de configuración

Estos dos Archivos son Importantes en Relación con el Almacenamiento de Datos de los Usuarios:
/etc/passwd
/etc/shadow


passwd

Cualquiera que sea el tipo de usuario, todas las cuentas y registros se encuentran definidas en el archivo de configuración 'passwd', ubicado dentro del directorio /etc. Este archivo es de texto tipo ASCII, se crea al momento de la instalación con el usuario root y las cuentas especiales, más las cuentas de usuarios normales que se hayan indicado al momento de la instalación. Siempre el Primero será el "root".

La estructura de Cada Sentencia del Archivo es esta:
<NameUser>:x:<UserID/UID>:<GroupID/GID>:<CampoDescripciónDelUser>:<RutaCarpetaDeLaHome>:<ShellAsignada>
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
Campo 1: Es el nombre del usuario, identificador de inicio de sesión (login). Tiene que ser único.

Campo 2: La 'x' indica la contraseña encriptada del usuario, además también indica que se está haciendo uso del archivo /etc/shadow, si no se hace uso de este archivo, este campo se vería algo así como: 'ghy675gjuXCc12r5gt78uuu6R'.

Campo 3: Número de identificación del usuario (UID). Tiene que ser único. 0 para root, generalmente las cuentas o usuarios especiales se numeran del 1 al 100 y las de usuario normal del 101 en delante, en las distribuciones mas recientes esta numeración comienza a partir del 500.

Campo 4: Numeración de identificación del grupo (GID). El que aparece es el número de grupo principal de usuario, pero puede pertenecer a otros, esto se configura en /etc/groups.

-------Los UserID y los GroupID de los Usuarios que Fueron creados Manualmente, comienza desde 1000------

Campo 5: Comentarios o el nombre completo del usuario.

Campo 6: Directorio de trabajo (Home) donde se sitúa al usuario después del inicio de sesión.

Campo 7: Shell que va a utilizar el usuario de forma predeterminada.
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

Ejemplo:
root:x:0:0:root:/root:/bin/bash


shadow

Anteriormente (en sistemas Unix) las contraseñas cifradas se almacenaban en el mismo /etc/passwd. El problema es que 'passwd' es un archivo que puede ser leído por cualquier usuario del sistema, aunque solo puede ser modificado por root. Con cualquier computadora potente de hoy en día, un buen programa de descifrado de contraseñas y paciencia es posible "crackear" contraseñas débiles (por eso la conveniencia de cambiar periódicamente la contraseña de root y de otras cuentas importantes). El archivo 'shadow', resuelve el problema ya que solo puede ser leido por root. Considérese a 'shadow' como una extensión de 'passwd' ya que no solo almacena la contraseña encriptada, sino que tiene otros campos de control de contraseñas.

Siempre el Primero será el "root"

La estructura de Cada Sentencia del Archivo es esta:
<NameUser>:
<PasswordCifrado>:
<DiasDesdeEl_UNIX.EPOCH_QueElPasswordFueCambiado>:
<DiasQueTranscurrenAntesDeQuePasswordSeaCambiado>:
<TiempoQueUserPuedeUsarElPassword>:
<AdvertenciaAntesDeQueElPasswordExpire>:
<DiasQueDespuesElPasswordExpiraParaDesabilitarCuenta>:
<DiasDesde_UNIX.EPOCH_QueLaCuentaHaSidoDesabilitada>:
<CampoReservado>
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
Campo 1	Nombre de la cuenta del usuario.

Campo 2	Contraseña cifrada o encriptada, un '*' indica cuenta de 'nologin'.

Campo 3	Días transcurridos desde el 1/ene/1970 (Unix Epoch) hasta la fecha en que la contraseña fue cambiada por última vez.

Campo 4	Número de días que deben transcurrir hasta que la contraseña se pueda volver a cambiar.

Campo 5	Número de días tras los cuales hay que cambiar la contraseña. (-1 significa nunca). A partir de este dato se obtiene la fecha de expiración de la contraseña. Si en los Dias que se puede Usar el Password es "99999", Significa que lo puede usar Infinito

Campo 6	Número de días antes de la expiración de la contraseña en que se le avisará al usuario al inicio de la sesión.

Campo 7	Días después de la expiración en que la contraseña se inhabilitara, si es que no se cambio.

Campo 8	Fecha de caducidad de la cuenta. Se expresa en días transcurridos desde el 1/Enero/1970 (epoch).

Campo 9	Reservado.
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

Ejemplo:
root:$6$jSj8gMTBPtbxfnFBXGtJMD(...)3ZNgQG.:17697:0:99999:7:::


group

Este es un archivo que almacena datos de los grupos creados: /etc/group

Este archivo guarda la relación de los grupos a los que pertenecen los usuarios del sistema, contiene una línea para cada usuario con tres o cuatro campos por usuario

La estructura de Cada Sentencia del Archivo es esta:
<nombreDelGrupo>:<>:<>:<>
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
El campo 1 indica el usuario.

El campo 2 'x' indica la contraseña del grupo, que no existe, si hubiera se mostraría un 'hash' cifrado.

El campo 3 es el Group ID (GID) o identificación del grupo.

El campo 4 es opcional e indica la lista de grupos a los que pertenece el usuario
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

Ejemplos:
root:x:0:root
ana:x:501:
sergio:x:502:ventas,supervisores,produccion
cristina:x:503:ventas,sergio

Actualmente al crear al usuario con "useradd" se crea también automáticamente su grupo principal de trabajo GID, con el mismo nombre del usuario. Es decir, si se añade el usuario 'sergio' también se crea el /etc/group el grupo 'sergio'. Aun asi, existen comandos de administración de grupos que se explicarán más adelante.


Los archivos ~/.bashrc, ~/bash_profile, /etc/bashrc, /etc/profile

NOTA: ~ significa la ruta al directorio personal (Ej:"/home/juanito" es lo mismo que "~" para juanito). Dicho de otra forma contiene lo mismo que la variable $HOME

Estos cuatro archivos tienen en común que:
[@] Son ficheros de texto.

[@] Se pueden modificar con cualquier editor de texto como kwrite, emacs, vi, pico....

[@] Son shell scripts. También llamados guiones o archivos por lotes. (Lo que en windows son los archivos *.bat o *.cmd pero mucho, mucho más potente)

[@] Son ficheros que el sistema operativo ejecuta de forma automática cuando se da una cierta condición.

[@] En el forndo lo que hace el sistema operativo es mandar a bash (el programa interprete de comandos más usual de Linux) ejecutar los archivos.

[@] Podemos incluir en ellos cualquier orden de la linea de comandos.

[@] Suelen confundir al personal. De hecho hay bastante confusión circulando.


Estos cuatro archivos difieren en:

[@] Solo existe una sola copia de los archivos /etc/profile y /etc/bashrc.

[@] Cada usuario tiene su propia copia de los archivos .bashrc y .bash_profile. (Estos archivos se encuentran en el directorio personal de cada usuario (~). El punto hace que estos archivos sean ocultos. Para ver si los tiene pruebe: ls -a ~

[@] Los archivos /etc/profile y /etc/bashrc afectan a todos los usuarios. Por tanto son gestionados por el administrador del sistema (root).

[@] Como cada usuario tiene su propia copia de los archivos .bashrc y .bash_profile, su copia le pertenece y se la puede autogestionar. Para acceder a su archivo pruebe en la linea de comandos:
vi ~/.bashrc
o
vi ~/.bash_profile

Verá algo parecido a esto:
# .bash_profile
# Get the aliases and functions
if [ ‐f ~/.bashrc ]; then
. ~ / . b a s h r c
fi
# User specific environment and startup programs
Domènec Massiques
PATH=$PATH:$HOME/bin
Jorge Juan Barrera
export PATH
unset USERNAME

Lo más importante. Cual de ellos utilizar:

Podemos clasificar estos cuatro archivos en función de si los comandos que contienen afectan a un solo
usuario o contrariamente todos los usuarios del sistema se ven afectados.

Vamos a ver en cada uno de los casos, bajo que condiciones se ejecutan los archivos.

Para todos los usuarios: (Se necesita permisos de root para editar/modificar estos archivos)
/etc/profile --> Se ejecuta cuando qualquier usuario inicia la sesión.
/etc/bashrc --> Se ejecuta cada vez que qualquier usuario ejecuta el programa bash

Para nuestro usuario:
~/.bash_profile --> Se ejecuta el .bash_profile de juanito cuando juanito inicia su sesión.
~/.bashrc --> Se ejecuta el .bashrc de juanito cuando juanito ejecuta el programa bash.



B). Manejo de usuarios

Tipos de usuarios usuarios
[@] Usuario root: En sistemas operativos del tipo Unix, el superusuario o root es el nombre convencional de la cuenta de usuario que posee todos los derechos en todos los modos (monousuario o multiusuario.
Normalmente es la cuenta de administrador.
Su UID (User ID) es 0 (cero).
Es la única cuenta de usuario con privilegios sobre todo el sistema.
Acceso total a todos los archivos y directorios con independencia de propietarios y permisos.
Controla la administración de cuentas de usuarios.
Ejecuta tareas de mantenimiento del sistema.
Puede detener el sistema. Instala software en el sistema.
Puede modificar o reconfigurar el kernel, controladores, etc.


[@] Usuarios especiales: También se les conoce como cuentas de "no inicio de sesión" (nologin) y se crean (generalmente) automáticamente al momento de la instalación de Linux o de la aplicación. Se les llama también cuentas del sistema.
No tiene todos los privilegios del usuario root, pero dependiendo de la cuenta asumen distintos privilegios de root.
Lo anterior para proteger al sistema de posibles formas de vulnerar la seguridad.
No tienen contraseñas pues son cuentas que no están diseñadas para iniciar sesiones con ellas.
Generalmente se les asigna un UID entre 1 y 100 (definifo en /etc/login.defs)
Ejemplos: bin, daemon, adm, lp, sync, shutdown, mail, operator, squid, apache, etc.


[@] Usuarios Normales: Se usan para usuarios individuales.
Cada usuario dispone de un directorio de trabajo, ubicado generalmente en /home.
Cada usuario puede personalizar su entorno de trabajo.
Tienen solo privilegios completos en su directorio de trabajo o HOME.
Por seguridad, es siempre mejor trabajar como un usuario normal en vez del usuario root, y cuando se requiera hacer uso de comandos solo de root, utilizar el comando su.
En las distros actuales de Linux se les asigna generalmente un UID superior a 500.


---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|         GESTIÓN DE USUARIOS         |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------
El comando "useradd" sirve para Crear Usuarios

Sintaxis:
~# useradd <nombreNuevoUsuario>

-~-~-~-~-       -~-~-~-~-

Con la bandera -c añade un comentario al momento de crear al usuario, campo 5 de /etc/password

Con la bandera -d agrega el registro del home del user en el archivo /etc/passwd, pero no se crea la carpeta home

Con la bandera -e se establece la fecha de expiración de la cuenta, formato AAAA-MM-DD, campo 8 de /etc/shadow

Con la bandera -g se establece el número de grupo principal del usuario (GID), campo 4 de /etc/passwd

Con la bandera -G se establecen otros grupos (grupo secundario) a los que puede pertenecer el usuario, separados por comas.

Con la bandera -m crea automáticamente el directorio personal del usuario

Con la bandera -r se crea una cuenta del sistema o especial, su UID será menor al definido en /etc/login.defs en la variable UID_MIN, además no se crea el directorio de inicio.

Con la bandera -s shell por defecto del usuario cuando ingrese al sistema. Si no se especifica, bash, es el que queda establecido.

Con la bandera -u UID del usuario, si no se indica esta opción, automáticamente se establece el siguiente número disponible a partir del último usuario creado.

-~-~-~-~-       -~-~-~-~-

Un ejemplo de varias combinaciones:
~# useradd -d /usr/juan -s /bin/csh -u 800 -c "Juan Perez Hernandez" juan
total 4
drwxr-xr-x 25 wuero wuero 4096 Dec 11 04:24 wuero
drwxr-xr-x 25 juan  juan  4096 Dec 11 04:24 juan

Otro ejemplo, crear usuario, asignarlo a un grupo, especificar su directorio personal y el shell a utilizar:
~# useradd -g grupo1 -d /home/usuario1 -m usuario1

Otro ejemplo:
~# useradd -g grupo1 -d /home/usuario1 -m -s /bin/bash usuario1
--------------------------------------
--------------------------------------
El comando "adduser" sirve para Crear Usuarios Si no se especifica el tipo de interprete, se le asigna Bash

Sintaxis:
~# useradd <nombreNuevoUsuario>

Ejemplo Y Pantalla:
~# adduser pepe && ls -l /home
Adding user 'pepe' ...
Adding new group 'pepe' (1001) ...
Adding new user 'pep' (1001) with group 'pepe' ...
Creating home directory '/home/pepe' ...
Copying files from '/etc/skel' ...
Enter new UNIX password:
Retype new UNIX password:
passwd: password update successfully
Changing the user information for pepe
Enter the new value, or press ENTER for the default
	Full Name []: *
	Room Number []: *
	Work Phone []: *
	Home Phone []: *
	Other []: *
Is the information corect? [Y/n] Y
total 4
drwxr-xr-x 25 wuero wuero 4096 Dec 11 04:24 wuero
drwxr-xr-x 26 pepe pepe 4096 Dec 11 04:30 pepe
--------------------------------------
--------------------------------------
El comando "passwd" sirve para Cambiar el Password de los Usuarios

Ejemplo y Pantalla:
~# passwd wuero
Enter new UNIX password:
Retype new UNIX password:
passwd: password update successfully

-~-~-~-~-       -~-~-~-~-

Con la bandera -l puedes bloquear una cuenta y con la bandera -u la desbloqueas

Sintaxis:
~# passwd -l <nombreUsuario>
~# passwd -u <nombreUsuario>
--------------------------------------
--------------------------------------
El comando "usermod" permite modificar o actualizar un usuario o cuenta ya existente.

Con la bandera -c añade o modifica el comentario, campo 5 de /etc/passwd

Con la bandera -d modifica el directorio de trabajo o home del usuario, campo 6 de /etc/passwd

Con la bandera -e cambia o establece la fecha de expiración de la cuenta, formato AAAA-MM-DD, campo 8 de /etc/shadow

Con la bandera -g cambia el número de grupo principal del usuario (GID), campo 4 de /etc/passwd

Con la bandera -G establece/reescribe otros grupos a los que puede pertenecer el usuario, separados por comas.

Con la bandera -l cambia el login o nombre del usuario, campo 1 de /etc/passwd y de /etc/shadow

Con la bandera -L bloqua la cuenta del usuario, negandole que ingrese al sistema. No borra ni cambia nada de usuario, solo lo deshabilita.

Con la bandera -s cambia el shell por defecto del usuario cuando ingrese al sistema.

Con la bandera -u cambia el UID del usuario.

Con la bandera -U desbloquea una cuenta previamente bloqueada con la opción -L.

-~-~-~-~-       -~-~-~-~-

Cambiar el nombre del usuario:
~# usermod -l <nuevoNombre> <viejoNombre>

-~-~-~-~-       -~-~-~-~-

#Casi seguro también cambiará el nombre del directorio de inicio o HOME en /home, pero si no fuera así, entonces:
#~# usermod -d /home/sego sego

-~-~-~-~-       -~-~-~-~-

Modifica el comentario de la cuenta, su shell por defecto que ahora sera Korn shell y su grupo principal de usuario quedó establecido al GID 505 y todo esto se aplicó al usuario 'sego' que como se observa debe ser el último argumento del comando.

~# usermod -c "supervisor de area" -s /bin/ksh -g 505 sego

-~-~-~-~-       -~-~-~-~-

El usuario 'sego' salió de vacaciones y nos aseguramos de que nadie use su cuenta:

~# usermod -L sego

-~-~-~-~-       -~-~-~-~-

Asigna/reasigna (puede quitar al usuario de algunos grupos) los grupos a los que pertenece el usuario.

Sintaxis:
~# usermod -G <grupo1> ... <grupoN> <usuario>
--------------------------------------
--------------------------------------
El comando "userdel" elimina cuentas de usuarios del sistema

Sin opciones elimina la cuenta del usuario de /etc/passwd y de /etc/shadow, pero no elimina su directorio de trabajo ni archivos contenidos en el mismo, esta es la mejor opción, ya que elimina la cuenta pero no la información de la misma. La cuenta no se podrá eliminar si el usuario esta logueado o en el sistema al momento de ejecutar el comando.

Sintaxis:
~# userdel <nombreUsuario>

-~-~-~-~-       -~-~-~-~-

Al igual que lo anterior elimina la cuenta totalmente, pero con la bandera -r además elimina su directorio de trabajo y archivos y directorios contenidos en el mismo, asi como su buzón de correo, si es que estuvieran configuradas las opciones de correo. La cuenta no se podrá eliminar si el usuario esta logueado o en el sistema al momento de ejecutar el comando.

Sintaxis:
~# userdel -r <nombreUsuario>


Ejemplo y salida erronea:
┌───────────────────────────────────────────────────────────────┐
│ TERMINAL 1                                                    │
│                                                               │
│ ~$ su pepe                                                    │
│ Password:                                                     │
│ pepe@rocoelwuero-HP-240-G4-Notebook-PC ~ $                    │
└───────────────────────────────────────────────────────────────┘

Ejecutadas al mismo tiempo

┌───────────────────────────────────────────────────────────────┐
│ TERMINAL 2                                                    │
│                                                               │
│ ~$ sudo userdel -r pepe                                       │
│ userdel: user pepe is currently used by process 4973          │
│                                                               │
│ ~$ echo $?                                                    │
│ 8                                                             │
└───────────────────────────────────────────────────────────────┘

Ejemplo y pantalla:
~$ sudo userdel -r pepe
userdel: pepe mail spool (/var/mail/pepe) not found
userdel: /home/pepe not owned by pepe, not removing

-~-~-~-~-       -~-~-~-~-

La bandera -f es igual que la opción -r, elimina todo lo del usuario, cuenta, directorios y archivos del usuario, pero además lo hace sin importar si el usuario esta actualmente en el sistema trabajando. Es una opción muy radical, además de que podría causar inestabilidad en el sistema, asi que hay que usarla solo en casos muy extremos.

~# userdel -f <nombreUsuario>


Ejemplo:
┌───────────────────────────────────────────────────────────────┐
│ TERMINAL 1                                                    │
│                                                               │
│ ~$ su pepe                                                    │
│ Password:                                                     │
│ pepe@rocoelwuero-HP-240-G4-Notebook-PC ~ $                    │
└───────────────────────────────────────────────────────────────┘

Ejecutadas al mismo tiempo

┌───────────────────────────────────────────────────────────────┐
│ TERMINAL 2                                                    │
│                                                               │
│ ~$ sudo userdel -f pepe                                       │
│ userdel: user pepe is currently used by process 5200          │
│                                                               │
│ ~$ echo $?                                                    │
│ 0                                                             │
└───────────────────────────────────────────────────────────────┘

Ejecutadas al mismo tiempo

┌────────────────────────────────────────────────────────────────────────────────────┐
│ TERMINAL 3                                                                         │
│                                                                                    │
│ ~$ ps aux                                                                          │
│ USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND           │
│ root         1  0.0  0.0 185384  5984 ?        Ss   17:51   0:01 /sbin/init splash │
│ (...)      (...)    (...)   (...) (...)        (...)(...)   (...)(...)             │
│ root      5192  0.0  0.0  92604  4700 pts/1    S    19:23   0:00 su pepe           │
│ 1001      5200  0.0  0.0  22412  3688 pts/1    S+   19:23   0:00 bash              │
│ (...)      (...)    (...)   (...) (...)        (...)(...)   (...)(...)             │
└────────────────────────────────────────────────────────────────────────────────────┘

┌───────────────────────────────────────────────────────────────┐
│ TERMINAL 1                                                    │
│                                                               │
│ ~$ whoami                                                     │
│ pepe                                                          │
│ ~$ exit                                                       │
│ exit                                                          │
│ su: User not known to the underlying authentication module    │
└───────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────────────────────────────┐
│ TERMINAL 3                                                                         │
│                                                                                    │
│ ~$ ps aux                                                                          │
│ USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND           │
│ root         1  0.0  0.0 185384  5984 ?        Ss   17:51   0:01 /sbin/init splash │
│ (...)      (...)    (...)   (...) (...)        (...)(...)   (...)(...)             │
│ root      5158  0.0  0.0      0     0 ?        S    19:21   0:00 [kworker/2:1]     │
│ root      5201  0.0  0.0      0     0 ?        S    19:23   0:00 [kworker/0:3]     │
│ (...)      (...)    (...)   (...) (...)        (...)(...)   (...)(...)             │
└────────────────────────────────────────────────────────────────────────────────────┘
--------------------------------------
--------------------------------------
El comando "deluser" elimina un usuario del sistema

Sintaxis:;
~# deluser <usuario>

-~-~-~-~-       -~-~-~-~-

Mediante este comando también se quitar usuarios de un grupo y no borrara al usuario y el grupo como tal.

Sintaxis:
~# deluser <usuario> <grupo>

Ejemplo:
~# deluser invitado admin
Quitara al usuario "invitado" del grupo "admin".
--------------------------------------
--------------------------------------
El comando "id" para ver los datos relativos a un usuario

Sintaxis:
~$ id <usuario>

O del usuario actual:

Sintaxis:
~$ id



C). Manejo de grupos
---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|          GESTIÓN DE GRUPOS          |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------
El comando "groupadd" añade/crea grupos al sistema

Sintaxis:
~# groupadd <nombreGrupoNuevo>
---------------------------------------
---------------------------------------
El comando "groupmod" modifica del sistema

Sintaxis:
~# groupmod <nombreGrupo>

-~-~-~-~-       -~-~-~-~-

Con la bandera -n cambia de nombre a un grupo

Sintaxis:
~# groupmod -n <nombreNuevoDelGrupo> <nombreViejoDelGrupo>
---------------------------------------
---------------------------------------
El comando "groupdel" elimina grupos del sistema

Sintaxis:
~# groupdel <nombreGrupo>
---------------------------------------
---------------------------------------
El comando "groups" muestra los grupos a los que pertence el usuario.

Sintaxis:
~# groups <usuario>
---------------------------------------
---------------------------------------
El comando "getent" para visualizar los miembros de un grupo, con la opción "group"

Sintaxis:
~$ getent group <grupo>



D). Comando Su, Sudo (gksudo o kdesudo), Visudo y el archivo Sudoers

El programa "su" es una utilidad de los sistemas operativos del tipo Unix que permite usar el intérprete de comandos de otro usuario sin necesidad de cerrar la sesión. Comúnmente se usa para obtener permisos de root para operaciones administrativas, sin tener que salir y reentrar al sistema. Algunos entornos de escritorio, entre ellos GNOME y KDE, tienen programas que piden gráficamente una contraseña antes de permitir al usuario ejecutar un comando que usualmente requeriría tal acceso.

El nombre "su" proviene del inglés substitute user, (cambiar usuario). También hay quien lo hace derivar de superuser (super-usuario, es decir, el usuario root) ya que habitualmente se utiliza para adoptar el rol de administrador del sistema.

"su" normalmente se ejecuta desde la línea de comandos de un terminal. Cuando se ejecuta, "su" pide la contraseña de la cuenta a la se quiere acceder, y si es aceptada, da acceso a dicha cuenta.

usuario@computadora ~$ su
Contraseña:
root@computadora usuario# exit
exit
usuario@computadora ~$


En ambientes donde varios usuarios usan uno o más sistemas GNU/Linux, es necesario otorgar distintos permisos o privilegios para que estos puedan hacer uso de comandos propios del usuario administrador 'root'. Totalmente fuera de lugar e impensable es 'entregar' la contraseña de root para que los usuarios puedan hacer uso de los programas propios de sus funciones pero que son propiedad de 'root'. Por otro lado, hacer uso del comando "su" tampoco es práctico porque es lo mismo, necesitan la contraseña de root, asi que la mejor alternativa es hacer uso de "sudo".

¿Exáctamente que es y que hace "sudo"?. "sudo" permite implementar un control de acceso altamente granulado de que usuarios ejecutan que comandos. Si un usuario normal desea ejecutar un comando de root o de cualquier otro usuario), "sudo" verifica en su lista de permisos y si está permitido la ejecución de ese comando para ese usuario, entonces "sudo" se encarga de ejecutarlo. Es decir, "sudo" es un programa que basado en una lista de control (/etc/sudoers) permite (o no) la ejecución al usuario que lo invocó sobre un determinado programa propiedad de otro usuario, generalmente del administrador del sistema 'root'.


sudo, para fines prácticos se puede dividir en tres partes:

[@] sudo, el comando con permisos de SUID, que los usuarios usan para ejecutar otros comandos a los que se les permite usar.
[@] visudo, el comando que permite al administrador modificar /etc/sudoers.
[@] /etc/sudoers, el archivo de permisos que le indica a sudo que usuarios ejecutan cuáles comandos.


sudo
sudo (SUperuser DO) es una utilidad de los sistemas operativos tipo UNIX, como Linux, BSD, o Mac OS X, que lo ejecuta un usuario normal, al que se supone tiene permisos para ejecutar cierto comando. Entonces, sudo requiere que los usuarios se autentifiquen a si mismos a través de su contraseña para permitirles la ejecución del comando.

Permite a los usuarios ejecutar programas con privilegios de seguridad de otro usuario (normalmente el usuario root) de manera segura, convirtiéndose así temporalmente en superusuario.

El comando se encuentra en la carpeta /usr/bin/

Sintaxis:
~$ sudo <comandoAEjecutar> <parametros>


Ejemplo:
~$ sudo /sbin/ifconfig
Password:
eth0      Link encap:Ethernet  HWaddr 4C:00:10:60:5F:21
          inet addr:200.13.110.62  Bcast:200.13.110.255  Mask:255.255.255.0
          inet6 addr: fe80::4e00:10ff:fe60:5f21/64 Scope:Link
...


Como se podrá observar se usa el comando "sudo" seguido del comando (con toda su ruta si es que este no esta en el PATH del usuario) al que se tiene permiso. "sudo" pregunta por la contraseña del usuario que ejecuta el comando y listo.

Por defecto, después de hacer lo anterior tendrás 5 minutos para volver a usar el mismo comando u otros a los que tuvieras derecho, sin necesidad de ingresar la contraseña de nuevo. Si se quiere extender el tiempo por otros 5 minutos usa la opción -v (validate). Por el contario, si ya terminaste lo que tenías que hacer, puedes usar -k (kill) para terminar con el tiempo de gracia de validación.


Ahora bien, ¿Qué comandos son los que puedo utilizar?, pues la opción -l es la indicada para eso:
~$ sudo -l
User sergio may run the following commands on this host:
    (root) /sbin/ifconfig
    (root) /sbin/lspci


En el caso anterior se ejecutó un comando de root, pero no tiene que ser asi, también es posible ejecutar comandos de otros usuarios del sistema indicando la opción -u:
~$ sudo -u ana /comando/de/ana


Una de las opciones más interesantes es la que permite editar archivos de texto de root (claro, con el permiso otorgado en 'sudoers' como se verá más adelante), y esto se logra con la opción -e, esta opción esta ligada a otro comando de "sudo" llamado "sudoedit" que invoca al editor por defecto del usuario, que generalmente es vi.

~$ sudo -e /etc/inittab  
(Permitira modificar el archivo indicado como si se fuera root)


Cuando se configura sudo se tienen múltiples opciones que se pueden establecer, estás se consultan a través de la opción -L

~$ sudo -L
Available options in a sudoers ``Defaults'' line:

syslog: Syslog facility if syslog is being used for logging
syslog_goodpri: Syslog priority to use when user authenticates successfully
syslog_badpri: Syslog priority to use when user authenticates unsuccessfully
long_otp_prompt: Put OTP prompt on its own line
ignore_dot: Ignore '.' in $PATH
mail_always: Always send mail when sudo is run
mail_badpass: Send mail if user authentication fails
mail_no_user: Send mail if the user is not in sudoers
mail_no_host: Send mail if the user is not in sudoers for this host
mail_no_perms: Send mail if the user is not allowed to run a command
tty_tickets: Use a separate timestamp for each user/tty combo
lecture: Lecture user the first time they run sudo
lecture_file: File containing the sudo lecture
authenticate: Require users to authenticate by default
root_sudo: Root may run sudo
...
varias opciones más

Bastante útil, ya que nos muestra las opciones y una pequeña descripción, estás opciones se establecen en el archivo de configuración 'sudoers'.


Una de las opciones más importantes de consulta es -V, que permite listar las opciones (defaults) establecidas por defecto para "sudo" todos los usuarios, comandos, equipos, etc. Más adelante, aprenderemos como establecer opciones específicas para ciertos usuarios, comandos o equipos. NOTA: tienes que ser 'root' para usar esta opción.

~# sudo -V
Sudo version 1.6.9p5

Sudoers path: /etc/sudoers
Authentication methods: 'pam'
Syslog facility if syslog is being used for logging: local2
Syslog priority to use when user authenticates successfully: notice
Syslog priority to use when user authenticates unsuccessfully: alert
Send mail if the user is not in sudoers
Lecture user the first time they run sudo
Require users to authenticate by default
Root may run sudo
Log the hostname in the (non-syslog) log file
Allow some information gathering to give useful error messages
Visudo will honor the EDITOR environment variable
Set the LOGNAME and USER environment variables
Reset the environment to a default set of variables
Length at which to wrap log file lines (0 for no wrap): 80
Authentication timestamp timeout: 5 minutes
Password prompt timeout: 5 minutes
Number of tries to enter a password: 3
Umask to use or 0777 to use user's: 022
Path to log file: /var/log/sudo.log
...
varias opciones más listadas


Con intención, trunque el listado anterior en la línea "Path to log file: /var/log/sudo.log", donde se indica cual es el archivo 'log' o de bitacora por defecto de "sudo", en este archivo se loguea absolutamente todo lo que se haga con "sudo", que usuarios ejecutaron que, intentos de uso, etc.


gksudo y kdesudo
Lo primero aclarar que gksudo y kdesudo hacen lo mismo, solo que el primero se usa en Cinnamon, Mate y XFCE, mientras que el segundo se utiliza en KDE. Por tanto, deberás emplear uno u otro según tu escritorio.

En general, siempre debes usar gksudo o kdesudo para ejecutar programas gráficos como root. Utiliza sudo y su sólo para programas de línea de comandos. De lo contrario, puedes terminar con programas gráficos que cambien la propiedad de los archivos en su directorio de raíz, lo que puede causar muchos problemas.

gksudo, kdesudo y sudo se emplean con tu propia contraseña, siempre y cuando pertenezcas al grupo sudo. Si tu usuario es el primero que creaste al instalar el sistema, pertenecerá a este grupo. Por su parte, su requiere la contraseña del usuario al que vas a cambiar y no necesita ser miembro del grupo sudo para utilizarse. Si utilizas gksudo o kdesudo se te pedirá la contraseña en una ventana gráfica. Por contra, sudo y su piden la contraseña en la terminal (no se ve mientras escribes, esto es una medida de seguridad).


visudo
Permite la edición del archivo de configuración de "sudo" 'sudoers'. Invoca al editor que se tenga por defecto que generalemente es "vi". "visudo" cuando es usado, bloquea el archivo /etc/sudoers de tal manera que nadie más lo puede utilizar, esto por razones obvias de seguridad que evitarán que dos o más usuarios administradores modifiquen accidentalmente los cambios que el otro realizó.

Otra característica importande de visudo es que al cerrar el archivo, verifica que el archivo este bien configurado, es decir, detectará si hay errores de sintaxis principalmente en sus múltiples opciones o reglas de acceso que se tengan. Por esta razón no debe editarse /etc/sudoers directamente (perfectamente posible ya que es un archivo de texto como cualquier otro) sino siempre usar visudo.


Si al cerrar visudo detecta un error nos mostrará la línea donde se encuentra, y la pregunta "What now?":
>>> sudoers file: syntax error, line 15 <<<
What now?

Se tienen tres opciones para esta pregunta:
[@] e - edita de nuevo el archivo, colocando el cursor en la línea del error (si el editor soporta esta función).
[@] x - salir sin guardar los cambios.
[@] Q - salir y guarda los cambios.


Por defecto el archivo de configuración es /etc/sudoers pero se pueden editar otros archivos que no sean ese y que se aplique la sintaxis de sudo, y esto se logra con la opción -f (visudo -f /otro/archivo).

Si tan solo se desea comprobar que /etc/sudoers esta bien configurado se usa la opción -c, toma por el archivo de configuración por defecto o si no se indica algún otro.

~# visudo -c
/etc/sudoers file parsed OK


La opción -s activa el modo 'estricto' del uso de visudo, es decir no solo se comprobará lo sintáctico sino también el orden correcto de las reglas, por ejemplo si se define el alias para un grupo de comandos y este se usa antes de su definición, con esta opción se detectará este tipo de errores.


Sudoers
Archivo de configuración de sudo, generalmente ubicado bajo /etc y se modifica a través del uso de visudo. En este archivo se establece quien (usuarios) puede ejecutar que (comandos) y de que modo (opciones), generando efectivamente una lista de control de acceso que puede ser tan detallada como se desee.

Es más fácil entender sudo si dividimos en tres partes su posible configuración, estás son:
[@] Alias
[@] Opciones (Defaults)
[@] Reglas de acceso

Por extraño que parezca ninguna de las secciones es obligatoria, o tienen que estar en algún orden específico, pero la que al menos debe de existir es la tercera, que es la definción de los controles o reglas de acceso. Se detallará cada uno de estos en un momento. Para los que les gusta saber más la cuestión técnica es interesante saber que la construcción de un archivo 'sudoers' esta basado en la forma BNF (Backus-Naur Form), concretamente en versión extendida (EBNF), si estudiaste algún curso de informática universitario seguramente sabes de lo que hablo. EBNF describe de una forma precisa y exacta la gramática de un lenguaje, esta se va creando a través de reglas de producción que a la vez son la base para ser referenciadas por otras reglas. Afortunadamente no necesitas saber nada de esto, solo entender como se aplican estas reglas.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Alias
Un alias se refiere a un usuario, un comando o a un equipo. El alias engloba bajo un solo nombre (nombre del alias) una serie de elementos que después en la parte de definición de reglas serán refiridos aplicados bajos cierto criterio. Es decir, regresando a EBNF estamos creando las reglas de producción inicial. La forma para crear un alias es la siguiente:
	<tipoAlias> <NombreDelAlias> = <elemento1>, <elemento2>, <elemento3>, ... <elementoN>
	<tipoAlias> <Nombre1> = <elemento1>, <elemento2> : <Nombre2> = <elemento1>, <elemento2>

	En el segundo caso, separado por ":" es posible indicar más de un alias en una misma definción.

El tipo_alias define los elementos, es decir, dependiendo del tipo de alias serán sus elementos. Los tipo de alias son cuatro y son los siguientes:
1) Cmnd_Alias - define alias de comandos.
2) User_Alias - define alias de usuarios normales.
3) Runas_Alias - define alias de usuarios administradores o con privilegios.
4) Host_Alias - define alias de hosts o equipos.

El NOMBRE_DEL_ALIAS puede llevar letras, números o guión bajo ( _ ) y DEBE de comenzar con una letra mayúscula, se acostumbra a usarlos siempre en mayúsculas.

Los elementos del alias varian dependiendo del tipo de alias, asi que veámoslos por partes asi como varios ejemplos para que comience a quedar claro todo esto.


1) Cmnd_Alias
Definen uno o más comandos y otros alias de comandos que podrán ser utilizados después en alias de usuarios. Ejemplos:
---------------------------------------------------------------------------------------------------------
Cmnd_Alias WEB = /usr/sbin/apachectl, /usr/sbin/httpd, sudoedit /etc/httpd/ Indica que a quien se le aplique el alias WEB podrá ejecutar los comandos apachectl, httpd y editar todo lo que este debajo del directorio /etc/httpd/, nótese que debe de terminar con '/' cuando se indican directorios. También, la ruta completa a los comandos debe ser indicada.

Cmnd_Alias APAGAR = /usr/bin/shutdown -h 23\:00
Al usuario que se le asigne el alias APAGAR podrá hacer uso del comando 'shutdown' exactamente con los parámetros como están indicados, es decir apagar -h (halt) el equipo a las 23:00 horas. Nótese que es necesario escapar el signo ':', asi como los símbolos ' : , = \

Cmnd_Alias NET_ADMIN = /sbin/ifconfig, /sbin/iptables, WEB NET_ADMIN es un alias con los comandos de configuración de interfaces de red ifconfig y de firewall iptables, pero además le agregamos un alias previamente definido que es WEB, asi que a quien se le asigne este alias podrá hacer uso de los comandos del alias WEB.

Cmnd_Alias TODO_BIN = /usr/bin/, !/usr/bin/rpm
A quien se le asigne este alias podrá ejecutar todos los comandos que estén dentro del directorio /usr/bin/ menos el comando 'rpm' ubicado en el mismo directorio. NOTA IMPORTANTE: este tipo de alias con un permiso muy amplios menos '!' algo, generalmente no son una buena idea, ya que comandos nuevos que se añadan después a ese directorio también podrán ser ejecutados, es mejor siempre definir específicamente lo que se requiera.
---------------------------------------------------------------------------------------------------------


2) User_Alias
Definen a uno o más usuarios, grupos del sistema (indicados con %), grupos de red (netgroups indicados con +) u otros alias de usuarios. Ejemplos:
---------------------------------------------------------------------------------------------------------
User_Alias MYSQL_USERS = andy, marce, juan, %mysql
Indica que al alias MYSQL_USERS pertenecen los usuarios indicados individualmente más los usuarios que formen parte del grupo 'mysql'.

User_Alias ADMIN = sergio, ana
'sergio' y 'ana' pertenecen al alias ADMIN.

User_Alias TODOS = ALL, !samuel, !david
Aqui encontramos algo nuevo, definimos el alias de usuario TODOS que al poner como elemento la palabra reservada 'ALL' abarcaría a todos los usuarios del sistema, pero no deseamos a dos de ellos, asi que negamos con '!', que serían los usuarios 'samuel' y 'david'. Es decir, todos los usuarios menos esos dos. NOTA IMPORTANTE: este tipo de alias con un permiso muy amplios menos '!' algo, generalmente no son una buena idea, ya que usuarios nuevos que se añadan después al sistema también serán considerados como ALL, es mejor siempre definir específicamente a los usuarios que se requieran. ALL es válido en todos los tipos de alias.

User_Alias OPERADORES = ADMIN, alejandra
Los del alias ADMIN más el usuario 'alejandra'.
---------------------------------------------------------------------------------------------------------


3) Runas_Alias
Funciona exactamente igual que User_Alias, la única diferencia es que es posible usar el ID del usuario UID con el caracter '#'.

Runas_Alias OPERADORES = #501, fabian

Al alias OPERADORES pertenecen el usuario con UID 501 y el usuario 'fabian'


4) Host_Alias
Definen uno o más equipos u otros alias de host. Los equipos pueden indicarse por su nombre (si se encuentra en /etc/hosts) por nombre de dominio, si existe un resolvedor de dominios, por dirección IP, por dirección IP con máscara de red. Ejemplos:
---------------------------------------------------------------------------------------------------------
Host_Alias LANS = 192.168.0.0/24, 192.168.0.1/255.255.255.0
El alias LANS define todos los equipos de las redes locales.


Host_Alias WEBSERVERS = 172.16.0.21, web1 : DBSERVERS = 192.168.100.10, dataserver
Se define dos alias en el mismo renglón: WEBSERVERS y DBSERVERS con sus respectivas listas de elementos, el separador ':' es válido en cualquier definición de tipo de alias.
---------------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Opciones (defaults)

Las opciones o defaults permiten definir ciertas características de comportamiento para los alias previamente creados, para usuarios, usuarios privilegiados, para equipos o de manera global para todos. No es necesario definir opciones o defaults, "sudo" ya tiene establecidas el valor de cada uno, y es posible conocerlas a través de sudo -V.

Sin embargo, la potencia de "sudo" está en su alta granularidad de configuración, asi que es importante conocer como establecer opciones espécificas.

Las opciones o defaults es posible establecerlos en cuatro niveles de uso:
1) De manera global, afecta a todos
2) Por usuario
3) Por usuario privilegiado
4) Por equipo (host)

Se usa la palabra reservada 'Defaults' para establecer las opciones y dependiendo del nivel que deseamos afectar su sintaxis es la siguiente:
[@] Global: Defaults opcion1, opcion2 ...
[@] Usuario: Defaults:usuario opcion1, opcion2 ...
[@] Usuario Privilegiado: Defaults>usuario opcion1, opcion2 ...
[@] Equipo: Defaults@equipo opcion1, opcion2 ...

La lista de opciones es algo extensa, pueden consultarse en las páginas del manual (man sudoers). En este caso me concretaré a ejemplificar varios ejemplos del uso de establecer opciones.

Los defaults los divide el manual (man sudoers) en cuatro: flags o booleanos, enteros, cadenas y listas. Veamos entonces algunos ejemplos de uso para cada uno de ellos:


1) flags o booleanos
Generalemente se usan de manera global, simplemente se indica la opción y se establece a 'on' para desactivarla 'off' se antepone el símbolo '!' a la opción. Es necesario consultar el manual para saber el valor por defecto 'on' o 'off' para saber si realmente necesitamos invocarla o no.
---------------------------------------------------------------------------------------------------------
Defaults mail_always
Establece a 'on' la opción 'mail_always' que enviara un correo avisando cada vez que un usuario utiliza "sudo", a la vez, este opción requiere que 'mailto_user' este establecida.

Defaults !authenticate, log_host
Desactiva 'off' el default 'authenticate' que por defecto esta activado 'on' e indica que todos los usuarios que usen "sudo" deben identificarse con su contraseña, obviamente esto es un ejemplo y sería una pésima idea usarlo realmente, ya que ningún usuario necesitaria autenticarse, esto es porque estamos usando Defaults de manera global. La segunda opción 'log_host' que por defecto está en 'off' la activamos y bitacoriza el nombre del host cuando se usa un archivo (en vez de syslog) como bitácora de "sudo".

Defaults:ana !authenticate
Aqui se aprecia algo más lógico, usamos opciones por usuario en vez de global, indicando que el usuario 'ana' no requerira auténticarse. Pero todos los demás si.

Defaults>ADMIN rootpw
Opciones para usuarios privilegiados, en vez de usar una lista de usuarios, usamos un alias 'ADMIN' que se supone fue previamente definido, y establecemos en 'on' la opción 'rootpw' que indica a sudo que los usuarios en el alias 'ADMIN' deberán usar la contraseña de 'root' en vez de la propia.
---------------------------------------------------------------------------------------------------------


2) Enteros
Tal como su nombre lo indica, manejan valores de números enteros en sus opciones, que deben entonces usarse como opción = valor.
---------------------------------------------------------------------------------------------------------
Defaults:fernanda, regina passwd_tries = 1, passwd_timeout = 1
Ejemplo donde se aprecia el uso de opciones con valores enteros. En este caso se establecen opciones para los usuarios 'fernanda' y 'regina' solamente, que solo tendrán una oportunidad de ingresar la contraseña correcta 'passwd_tries' el valor por defecto es de 3 y tendrán un minuto para ingresarla 'passwd_timeout' el valor por defecto son 5 minutos.

La mayoría de las opciones de tiempo o de intentos, al establecerlas con un valor igual a cero entonces queda ilimitado la opción.

Defaults@webserver umask = 011
Se establecen opciones solo para los usuarios que se conectan al servidor 'webserver' y el valor 'umask' indica que si mediante la ejecución del comando que se invoque por sudo es necesario crear archivos o diectorios, a estos se les aplicará la máscara de permisos indicada en el valor de la opción.
---------------------------------------------------------------------------------------------------------


3) Cadenas
Son valores de opciones que indican mensajes, rutas de archivos, etc. Si hubiera espacios en el valor es necesario encerrar el valor entre comillas dobles (" ").

Defaults badpass_message = "Intenta de nuevo: "

Para todos los usuarios, cuando se equivoquen al ingresar la contraseña, es el mensaje que saldría. En este caso la opción por defecto es "Sorry: try again".


4) Listas
Permite establecer/eliminar variables de entorno propias de "sudo". Los 'Defaults' para variables es de los menos usados en las configuraciones de "sudo" y ciertamente de los más confusos. Para entender como se aplican es más fácil si primero ejecutas como 'root' el comando "sudo -V", y al final del listado encontrarás en mayúsculas las posibles variables de entorno que se pueden establecer o quitar y que vienen del shell.

Solo existen tres opciones de listas: env_check, env_delete y env_keep, las listas pueden ser remplazadas con '=', añadidas con '+=', eliminadas con '-=' o deshabilitadas con '!'. Con un par de ejemplos quedará más claro.
---------------------------------------------------------------------------------------------------------
Defaults env_delete -= HOSTNAME
Elimina la variable de entorno 'HOSTNAME', (pero preserva todas las demás que hubiera) y comandos que se ejecuten bajo sudo y que requieran de esta variable no la tendrían disponible.


Defaults env_reset

Defaults env_check += DISPLAY, PS1
La primera opción 'env_reset' reinicializa las variables de entorno que sudo utilizará o tendrá disponibles, y solo quedan disponibles LOGNAME, SHELL, USER y USERNAME. La siguiente línea indica que agregue (+=) a lo anterior, también la variable de entorno DISPLAY a su valor establecido antes del reset.
---------------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Reglas de acceso

Aunque no es obligatorio declarar alias, ni opciones (defaults), y de hecho tampoco reglas de acceso, pues el archivo /etc/sudoers no tendría ninguna razón de ser si no se crean reglas de acceso. De hecho podríamos concretarnos a crear solamente reglas de acceso, sin opciones ni alias y podría funcionar todo muy bien.

Las reglas de acceso definen que usuarios ejecutan que comandos bajo que usuario y en que equipos. La mejor y (según yo, única manera) de entender y aprender a configurar sudoers es con ejemplos, asi que directo al grano:
---------------------------------------------------------------------------------------------------------
usuario host = comando1, comando2, ... comandoN
Sintaxis básica, 'usuario' puede ser un usuario, un alias de usuario o un grupo (indicado por %), 'host' puede ser ALL cualquier equipo, un solo equipo, un alias de equipo, una dirección IP o una definición de red IP/máscara, 'comandox' es cualquier comando indicado con su ruta completa. Si se termina en '/' como en /etc/http/ entonces indica todos los archivos dentro de ese directorio.

daniela ALL = /sbin/iptables
Usuario 'daniela' en cualquier host o equipo puede utiliar iptables.

ADMIN ALL = ALL
Los usuarios definifos en el alias 'ADMIN' desde cualquier host pueden ejecutar cualquier comando.

%gerentes dbserver = (director) /usr/facturacion, (root) /var/log/*
Un ejemplo más detallado. Los usuarios que pertenezcan al grupo del sistema llamado 'gerentes' pueden en el equipo llamado 'dbserver' ejecutar como si fueran el usuario 'director' la aplicación llamada 'facturacion', además como usuarios 'root' pueden ver el contenido de los archivos que contenga el directorio /var/log
Lo anterior intoduce algo nuevo, que en la lista de comandos es posible indicar bajo que usuario se debe ejecutar el permiso. Por defecto es el usuario 'root', pero no siempre tener que asi. Además la lista 'hereda' la primera definición de usuario que se indica entre paréntesis ( ), por eso si se tiene más de alguno hay que cambiar de usuario en el comando conveniente, el ejemplo anterior también sería válido de la siguiente manera: %gerentes dbserver = /var/log/*, (director) /usr/facturacion No es necesario indicar (root) ya que es el usuario bajo el cual se ejecutan los comandos por defecto. También es válido usar (ALL) para indicar bajo cualquier usuario. El ejemplo siguiente da permisos absolutos.

sergio ALL = (ALL) ALL
Se establece permiso para el usuario 'sergio' en cualquier host, ejecutar cualquier comando de cualquier usuario, por supuesto incluyendo los de root.

SUPERVISORES PRODUCCION = OPERACION
Una regala formada solo por alias. En el alias de usuario 'SUPERVISORES' los usuarios que esten indicados en ese alias, tendrán permiso en los equipos definidos en el alias de host 'PRODUCCION', de ejecutar los comandos definidos o listados en el alias de comandos 'OPERACION'. En este último ejemplo se aprecia lo últil que pueden ser los alias, ya que una vez definida la regla, solo debemos agregar o eliminar elementos de las listas de alias definidos previamente. Es decir, se agrega un equipo más a la red, se añade al alias 'PRODUCCION', un usuario renuncia a la empresa, alteramos el alias 'SUPERVISORES' eliminándolo de la lista, etc.

checo ALL = /usr/bin/passwd *, !/usr/bin/passwd root
Este es un ejemplo muy interesante de la potencia y flexibilidad de sudo. Al usuario 'checo', desde cualquier equipo, tiene permiso de cambiar la contraseña de cualquier usuario (usando el comando 'passwd'), excepto '!' la contraseña del usuario 'root'. Lo anterior se logra mediante el uso de argumentos en los comandos. En el primer ejemplo '/usr/bin/passwd *' el asterisco indica una expansión de comodin (wildcard) que indica cualquier argumento, es decir, cualquier usuario. En el segundo caso '!/usr/bin/passwd root', si indica un argumento específico 'root', y la '!' como ya se sabe indica negación, negando entonces el permiso a cambiar la contraseña de root.

Cuando se indica el comando sin argumentos: /sbin/iptables sudo lo interpreta como 'puede usar iptables con cualquiera de sus argumentos'.

mariajose ALL = "/sbin/lsmod"
Al estar entre comillas dobles un comando, entonces sudo lo interpreta como 'puede hacer uso del comando lsmod pero sin argumentos'. En este caso el usuario 'mariajose' podrá ver la lista de módulos del kernel, pero solo eso.
---------------------------------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Tags (etiquetas de comandos)
Cuando se definen reglas, en la lista de comandos, estos pueden tener cero (como en los ejemplos anteriores) o más tags. Existen 6 de estas etiquetas o tags,x
---------------------------------------------------------------------------------------------------------
NOPASSWD Y PASSWD

Por defecto sudo requiere que cualquier usuario se identifique o auténtifique con su contraseña. Aprendimos en la sección de 'Opciones' o 'Defaults' que es posible indicar que un usuario o alias de usuario no requiera de autentificación. Pero el control granular propio de sudo, permite ir aun más lejos al indicar a nivel de comandos, cuáles requieren contraseña para su uso y cuáles no.

gerardo webserver = NOPASSWD: /bin/kill, /usr/bin/lprm, /etc/httpd/conf/

Usuario 'gerardo' en el equipo 'webserver' no requerira contraseña para los comandos listados. El tag se hereda, es decir no solo el primer elemento de la lista de comandos, sino los subsiguientes. Suponiendo que el último '/etc/httpd/conf/' elemento, que permite modificar cualquier archivo contenido en el directorio, si deseamos que use contraseña, lo siguiente lo conseguirá:

gerardo webserver = NOPASSWD: /bin/kill, /usr/bin/lprm, PASSWD: /etc/httpd/conf/

Aunque ya que solicitar contraseña es el default o defecto preestablecido, lo anterior también funcionará de la siguiente manera:

gerardo webserver = /etc/httpd/conf/, NOPASSWD: /bin/kill, /usr/bin/lprm,
---------------------------------------------------------------------------------------------------------
NOEXEC Y EXEC

Este es un tag muy importante a considerar cuando sobre se otorgan permisos sobre programas que permiten escapes a shell (shell escape), como en el editor 'vi' que mediante el uso de '!' es posible ejecutar un comando en el shell sin salir de 'vi'. Con el tag NOEXEC se logra que esto no suceda, aunque no hay que tomarlo como un hecho, ya que siempre existe la posibilidad de vulnerabilidades no conocidas en los múltiples programas que utilizan escapes a shell. Al igual que los tags anteriores, el tag se hereda y se deshabilita con su tag contrario (EXEC), en caso de que en la lista de comandos hubiera varios comandos.

valeria ALL = NOEXEC: /usr/bin/vi
---------------------------------------------------------------------------------------------------------
SETENV Y NOSETENV

Una de las múltiples opciones que pueden establecerse en la sección 'Defaults' u 'opciones' es la opción booleana o de flag 'setenv' que por defecto y para todos los usuarios esta establecida en 'off'. Esta opción si se activa por usuario (Defaults:sergio setenv) permitirá al usuario indicado cambiar el entorno de variables del usuario del cual tiene permisos de ejecutar comandos, y como generalmente este es 'root' pues es obvio que resulta bastante peligrosa esta opción. A nivel de lista de comandos, es posible entonces especificar el tag 'SETENV' a un solo comando o a una pequeña lista de estos y solo cuando se ejecuten estos se podrán alterar su entorno de variables. Es decir, en vez de establecerlo por usuario, sería mas conveniente establecerlo por comando a ejcutarse solamente.
---------------------------------------------------------------------------------------------------------
ADMIN ALL = SETENV: /bin/date, NOSETENV ALL

A los usuarios definidos en el alias de usuario 'ADMIN' en cualquier host, pueden alterar las variables de entorno cuando ejecuten el comando 'date' (que puede ser útil por ejemplo para cambiar variables del tipo LOCALE), y cualquier otro comando, no tendrá esta opción al habilitar el tag contrario 'NOSETENV'. Y ya que este es el default, también sería válido de la siguiente manera y harían lo mismo:

ADMIN ALL = ALL, SETENV: /bin/date
---------------------------------------------------------------------------------------------------------


ARCHIVO /ETC/SUDOERS DE EJEMPLO
Para concluir este manual, veamos un pequeño ejemplo de un archivo /etc/sudoers:
-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# ***********************
# Ejemplo de un archivo sudoers
# ***********************

# ***********************
# DEFINCION DE ALIAS
# ***********************

# administradores con todos los privilegios
User_Alias ADMINS = sergio, ana

# administradores de red - network operators
User_Alias NETOPS = marcela, andrea

# webmasters -
User_Alias WEBMAS = cristina, juan

# supervisores de producción (todos los del grupo de sistema supervisores)
User_Alias SUPPRO = samuel, %supervisores

# usuarios que pueden conectarse desde Internet
User_Alias INETUS = NETOPS, ADMINS, samuel

# servidores web
Host_Alias WEBSERVERS = 10.0.1.100, 10.0.1.101

# servidores de aplicaciones
Host_Alias APLICACIONES = WEBSERVERS, 10.0.1.102, 10.0.1.103, mailserver

# comandos de red permitidos
Cmnd_Alias REDCMDS = /sbin/ifconfig, /sbin/iptables

# comandos de apache
Cmnd_Alias APACHECMDS = /usr/sbin/apachectl, /sbin/service httpd *

# ***********************
# DEFINCION DE OPCIONES
# ***********************

# Los usuarios administradores, requieren autentificarse con la contraseña de 'root'
Defaults>ADMINS rootpw

# Para todos los usuarios, tienen hasta dos intentos para ingresar su contraseña y 3 minuto para que esta expire
Defaults passwd_tries = 4, passwd_timeout = 1

# Los usuarios que se conectan desde Internet, solo tienen una oportunidad y cero timeout lo que implica
# que cada comando que usen a través de sudo requerira siempre de autentificación.
Defaults:INETUS passwd_tries = 1, passwd_timeout = 0

# Máscara de directorios y archivos por default, para los que ejecuten sudo en los servidores web
Defaults@WEBSERVERS umask = 022

# ***********************
# DEFINCION DE REGLAS
# ***********************

# administradores todo se les permite en cualquier equipo (¡¡¡¡¡cuidado con esto en la vida real!!!!!
ADMINS ALL = (ALL) ALL

# administradores de red, en todos los equipos, los comandos de red
NETOPS ALL = REDCMDS

# webmasters, en los servidores web con los comandos indicados en apachecmds y además sin necesidad
# de contraseña acceder a las bítacoras de apache y reiniciar los servidores.
WEBMAS WEBSERVERS = APACHECMDS, NOPASSWD: /var/log/apache/, /sbin/reboot

# supervisores, pueden ejecutar los comandos indicados en los equipos indicados en el alias
# aplicaciones y además son ejecutados bajo el usuario apps.
SUPPRO APLICACIONES = NOEXEC: (apps) /usr/local/facturacion.exe, /usr/local/ventas.exe, /usr/local/nomina.exe

# no definidos por alias previos, sino directamente

# regina es de recursos humanos y puede cambiar contraseñas de cualquier usuario menos de root
regina ALL = /usr/bin/passwd *, !/usr/bin/passwd root

# david, puede apagar los equipos de aplicaciones
david APLICACIONES = /sbin/shutdown, /sbin/halt

#  El equipo firewall de la red puede ser reiniciado (no apagado) por fernanda que es asistente de redes
fernanda firewall = /sbin/shutdown -r now
-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

Referencias
Como siempre, la referencia más a la mano la tienes en las páginas de manual:

man sudo
man visudo
man sudoers
Y en los siguientes sitios encuentras información que complementa esta manual.

http://www.sudo.ws/ - sitio oficial de sudo
onlamp - sitio en inglés con una explicación muy completa de como funciona sudo.
https://www.linuxtotal.com.mx/index.php?cont=info_admon_014



E). Comandos extras

El comando "w" sirve para Mostrar Información de los Usuario Loggeados

Sintaxis:
~$ w

Ejemplo Y Pantalla:
~$ w
 05:04:54 up 32 min, 2 users, load average: 0.00, 0.01, 0.05
 USER	TTY		FROM		LOGIN@		IDLE	JCPU	PCPU	WHAT
 wuero	tty8	:0			04:51		32:26	3.18s	0.05s	gdm-seccion-worker [pa
 wuero	pts/0	:0.0		04:51		6.00s	0.02s	0.00s	w

/*
	<Usuario> <DeQueManeraEstanLoggeados> <DondeEstanLoggeados> <TiempoQueLlevanLogeados> (...)
*/
--------------------------------------
--------------------------------------
El comando "who" sirve para Mostrar Información de quienes estan Loggeados

Sintaxis:
~$ who

Ejemplo Y Pantalla:
~$ who
 wuero	tty8		2013-12-03	04:51	(:0)
 wuero	pts/0		2013-12-03	04:51	(:0.0)

/*
	<Usuario> <DeQueManeraEstanLoggeados> <Fecha> <TiempoLoggeado> <DondeEstanLoggeados>
*/
--------------------------------------
--------------------------------------
El comando "users" sirve para Ver quienes estan Loggeados

Sintaxis:
~$ users







11. SISTEMA DE ARCHIVOS

A). Uso de permisos básicos

~$ ls -la
-rw-r--r--  1 rocoelwuero rocoelwuero 5091 jun 25 23:33 .bashrc
drwxr-xr-x  6 rocoelwuero rocoelwuero 4096 jun 27 05:44 Escritorio
lrwxrwxrwx  1 root        root        8    jun 15 14:49 youtube-dl -> /bin/youtube-dl

Cuando ejecutamos el comando "ls -la" se nos mostrará los metadatos de los archivos enlistados, el primero es el tipo de archivo y los permisos, el segundo es (...), el tercero es el dueño del archivo, el cuarto es el grupo al que pertenece el archivo, el quinto es el peso en bytes del archivo, el sexto es la fecha de la ultima modificación, septimo la hora en que fue modificado y octavo el nombre del archivo.

En el primer parametro se divide en cuatro secciones, la 1era es un solo campo, la 2da son tres campos, la 3era son tres campos y también la 4ta son tres: - --- --- ---

1) El primero indica el tipo de archivo que es.

Si es un archivo normal/común (txt,pdf,doc,xlm,html,png,etc.) aparecerá con un '-'.
Si es un directorio aparecerá con una 'd'.
Si es un link/enlace aparecerá con una 'l'.
Si es un socket aparecerá con una 's'.
Si es un pipe aparecerá con una 'p'.

2) La segunda sección son los permisos del usuario dueño del archivo

3) La tercera son los permisos que tiene el grupo al que pertenece el archivo

4) La cuarta son los permisos de otros usuarios con ese archivo

De modo que es esta la sintaxis:
<a><u><u><u><g><g><g><o><o><o>
a = archivo = {-,d,l}
u = usuario = {-,r,w,x}
g = grupo = {-,r,w,x}
o = otros = {-,r,w,x}

Y como puedes deducir cada una de sus secciones puede tener diversos valores

Los permisos básicamente solo tienen dos estados, 1 y 0 (bits), prendido y apagado, activado y desactivado. El desactivado se representa con un '-' y el activado depende de la posición en que esté

Ejemplos:
-   r--   -w-   --x
-   --x   r--   -w-
-   -w-   --x   r--
-   rwx   rw-   -wx

El significado y valor de las letras:
	r = Leer 4
	w = Escribir = 2
	x = Ejecutar = 1

Sino el '-' vale 0


De tal manera que en los ejemplos anteriores:
	El dueño solo puede leer el archivo, los del grupo pueden modificar/escribir en el archivo, y otros
	usuarios solo pueden ejecutarlos
	-   r--   -w-   --x

	El dueño solo puede ejecutarlo, el grupo puede leerlo y otros pueden modificarlo
	-   --x   r--   -w-

	El dueño solo modificar, grupo ejecutar y otros leerlo
	-   -w-   --x   r--

	El dueño escribir, grupo ejecutar y otros solo leer
	-   -w-   --x   r--

	Dueño puede todo, grupo solo leer y modificar y otros solo modificar y ejecutar
	-   rwx   rw-   -wx



B). Cambio de Permisos de usuario

Y para cambiar los permisos sobre un archivo es con el comando "chmod"

Sintaxis:
~$ chmod <permisos> <archivo>

Pero de seguro te diste cuenta que no solamente se puede tener más de un permiso activado y para ello son
sus valores:
r = Leer 4
w = Escribir = 2
x = Ejecutar = 1

Para agregar más de un permiso solamente suma sus valores
Ejemplos:
escribir y ejecutar = 2+1 = 3 = -wx
leer y ejecutar = 4+1 = 5 = r-x
leer y escribir = 4+2 = 6 = rw-
leer, escribir y ejecutar = 4+2+1 = 7 = rwx

Y solo faltaria agregar el nombre del archivo


Ejemplos:
~$ chmod 704 archivo.txt && ls -la
-rwx---r-- 1 pepe pepe 8 jun 15 14:49 archivo.txt

~$ chmod 000 archivo.txt && ls -la
---------- 1 pepe pepe 8 jun 15 14:49 archivo.txt

~$ chmod 777 archivo.txt && ls -la
-rwxrwxrwx 1 pepe pepe 8 jun 15 14:49 archivo.txt

~$ chmod 357 archivo.txt && ls -la
--wxr-xrwx 1 pepe pepe 8 jun 15 14:49 archivo.txt

Recuerda que son 3 permisos y son para tres entidades (dueño, grupo y otros), asique son tres numeros


Para las carpetas tambien funciona

⬘ Y para enlistar su contenido el permiso de Leer, 4
⬘ Para crear archivos o modificarlos, debe tener el permiso de Escribir, 2
⬘ Solo que para acceder a ellas debe tener activado el permiso de Ejecutar, 1
--------------------------------------
--------------------------------------
El comando "chown" (change owner, cambiar propietario) permite cambiar el propietario/dueño de un archivo o directorio en sistemas tipo UNIX.

Puede especificarse tanto el nombre de un usuario, así como el identificador de usuario (UID) y el identificador de grupo (GID). Opcionalmente, utilizando un signo de dos puntos (:), o bien un punto (.), sin espacios entre ellos, entonces se cambia el usuario y grupo al que pertenece cada archivo.

Sintaxis:
~# chown <usuario/UID>:<grupo/GID> <archivo>
~# chown <usuario/UID> <archivo>

O la manera "comprimida":
~# chown {<usuario/UID>|<usuario/UID>:<grupo/GID>} <archivo>


Ejemplos:
~# chown pepe:pepe archivo
~# chown 1001:1001 archivo
--------------------------------------
--------------------------------------
El comando "chgrp" (change group, cambiar grupo) permite cambiar el grupo de un archivo o directorio en sistemas tipo UNIX.

Sintaxis:
~$ chgrp <grupo/GID> <archivo>

Con la bandera "-R" o "--recursive" para todos los subdirectorios.



C). Uso de permisos especiales

Aún hay otro tipo de permisos que hay que considerar. Se trata del bit de permisos SUID (Set User ID), el bit de permisos SGID (Set Group ID) y el bit de permisos de persistencia (sticky bit).


setuid

El bit setuid es asignable a ficheros ejecutables, y permite que cuando un usuario ejecute dicho fichero, el proceso adquiera los permisos del propietario del fichero ejecutado. El ejemplo más claro de fichero ejecutable y con el bit setuid es: su

Podemos ver que el bit está asignado como “s” en el siguiente ejemplo:

~$ ls -l /bin/su
-rwsr-xr-x 1 root root 40128 may 16  2017 /bin/su

Para asignar este bit a un fichero seria:
~$ chmod u+s /bin/su

Y para quitarlo:
~$ chmod u-s /bin/su

Nota: Debemos utilizar este bit con extremo cuidado ya que puede provocar una escalada de privilegios en nuestro sistema.


setgid

El bit setid permite adquirir los privilegios del grupo asignado al fichero, también es asignable a directorios. Esto será muy útil cuando varios usuarios de un mismo grupo necesiten trabajar con recursos dentro de un mismo directorio.

Para asignar este bit hacemos lo siguiente:
~$ chmod g+s /carpeta_compartida

Y para quitarlo:
~$ chmod g-s /carpeta_compartida


sticky

Este bit suele asignarse en directorios a los que todos los usuarios tienen acceso, y permite evitar que un usuario pueda borrar ficheros/directorios de otro usuario dentro de ese directorio, ya que todos tienen permiso de escritura.

Podemos ver que el bit está asignado como “t” en el siguiente ejemplo:
~$ ls -la / | grep tmp
drwxrwxrwt  12 root root 20480 dic 10 15:42 tmp

Para asignar este bit hacemos lo siguiente:
~$ chmod o+t /tmp

Y para quitarlo:
~$ chmod o-t /tmp



D). Máscara de permisos

https://www.linuxtotal.com.mx/index.php?cont=info_admon_011




E). Listas de Acceso (ACL)

https://www.ochobitshacenunbyte.com/2019/02/07/listas-de-control-de-acceso-acl-en-linux/

Una ACL especifica a qué usuarios o procesos del sistema se les otorga acceso a los objetos, así como qué operaciones se les permiten a los objetos dados. Cada entrada  especifica un tema y una operación.
Por ejemplo, si un objeto de fichero, tiene una ACL que contiene (David: leer,escribir;Angela:leer), esto le daría permiso a David para leer y modificar el archivo, en cambio Angela solo podría leerlo.

¿Cómo funcionan?
Primero de todo hay que tener en cuenta que el sistema de archivos debe de tener habilitado las ACL. Para ello se debe especificar cuando se montan, bien de manera provisional o de manera permanente en el fichero /etc/fstab

Para comprobar que la opción “acl” está habilitado en las particiones montadas, podemos realizar la siguiente comprobación:
tune2fs -l /dev/sda1 | grep "Default mount options:"

Como en el ejemplo:
[root@servcentos01]# tune2fs -l /dev/sda1 | grep "Default mount options:"
Default mount options:    user_xattr acl

Los sistemas de ficheros como Btrfs y ext* ya vienen con las ACL habilitadas por defecto.


Trabajando con ACL
Para trabajar con las Listas de Control de Acceso tenemos disponibles dos herramientas fundamentales, que son:
* getfacl: Muestra información de los permisos de ficheros y carpetas
* setfacl: Modifica las ACL de dichos ficheros y carpetas

Para agregar permisos a un usuario
~# setfacl -m "u:<usuario>:<permisos>" {fichero|directorio}

Si queremos agregar permisos a un grupo:
~# setfacl -m "g:grupo:permisos"  {fichero|directorio}

Permitir que todos los archivos o directorios hereden las entradas de ACL desde un directorio con:
~# setfacl -dm "entrada" <directorio>

Eliminar una entrada específica:
~# setfacl -x "entrada"  {fichero|directorio}

Borrar todas las entradas:
~# setfacl -b {fichero|directorio}

Para mostrar los permisos:
~# getfacl {fichero|directorio}


Setfacl: Principales usos
Veamos un resumen de los principales parámetros que podemos utilizar con la herramienta "setfacl"

Modificar ACL de un archivo para el usuario con acceso de lectura y escritura:
~# setfacl -m u:username:rw file

Modificar la ACL predeterminada de un archivo para todos los usuarios:
~# setfacl -d -m u::rw file

Eliminar la reglas de un archivo para un usuario:
~# setfacl -x u:username file

Eliminar todas las entradas de un archivo:
~# setfacl -b file

Este resumen lo podéis obtener con la herramienta TLDR (https://www.ochobitshacenunbyte.com/2019/01/28/tldr-un-resumen-de-las-paginas-de-man-en-gnu-linux/), de la que ya hablamos:
~# tldr setfacl








12. NIVELES DE EJECUCIÓN

Orden de Arranque del SO

BIOS ==> MBR (512bytes), GRUB Fase1 ==> GRUB Fase2 ==> INIT

BIOS: Comprueba todos los dispositivos fisicos
Le envia la info a...
MBR: Master Boot Record (512bytes)

A). ¿Qué son los niveles de ejecución?

Es cada uno de los estados de ejecución en que se puede encontrar el sistema Linux. Existen 7 niveles de
ejecución en total

¿Para qué sirven? En la instalación de un servidor es habitual diseñar una configuración para que en
determinados momentos se puedan ofrecer determinados servicios y en otros no


Niveles de Ejecución “0” HALT
Se encarga de detener todos los procesos activos en el sistema, con el objetivo de apagar correctamente
del equipo.
/etc/rc0.d


Niveles de Ejecución “1” MONOUSUARIO
Encargado de permitir la sesión de un único usuario por defecto inicia como usuarios root. Este nivel de
ejecución es empleado para tareas de mantenimientos del sistema. En este nivel no se configura la
interfaz de red ni los demonios de inicio.
Su Objetivo es para Reparar el SO
/etc/rc1.d


Niveles de Ejecución “2” MULTIUSUARIO
Al igual que el nivel de ejecución monousuario, pero no funciones de red y compartición de datos
mediante nfs.
Además inician una Secuencia de Scripts que levantan el SO en nivel2
Para un inicio normal
/etc/rc2.d


Niveles de Ejecución “3” MULTIUSUARIO COMPLETO
Con capacidades plenas de red, sin entorno gráfico. Este nivel de ejecución es el recomendado para
sistemas de servidor, ya que evite la carga innecesaria de aplicaciones consumidoras de recursos.
/etc/rc3.d


Niveles de Ejecución “4” X
Nivel especificado, pero no se utiliza.
/etc/rc4.d


MULTIUSUARIO COMPLETO CON INTERFAZ GRÁFICA “5”
Al igual que el nivel de ejecución 3, pero con capacidades gráficas. Ideal para entornos de escritorio
/etc/rc5.d


REBOOT “6”
Nivel de Ejecución del reinicio del Sistema
/etc/rc6.d



B). Cambio de nivel de ejecución del sistema

Aparte de editar el archivo /etc/inittab, el administrador puede cambiar en cualquier momento el valor
del nivel de ejecución (de forma temporal) con el comando init. Una instrucción como la siguiente:

~# init 3


Cambiar el nivel de ejecución de forma permanente:
~$ sudo nano /etc/init/rc-sysinit.conf
env DEFAULT_RUNLEVEL=2


Para verificar en que nivel de ejecución estamos, solo basta con ingresar el siguiente comando:
~$ who -r


C). Cambio de nivel de ejecución de un servicio







13. PARTICIONES Y VOLÚMENES LÓGICOS

A). Particiones y sistema de archivos

Una de las partes mas importantes de un ordenador, es el disco duro, en este no solo se almacenan todos
nuestros archivos, sino también el sistema operativo que utilizamos. Cuando se instala un nuevo sistema
operativo, este crea algunas particiones automáticamente. Conocer a fondo la función de cada partición y
como crearlas o modificarlas manualmente nosotros mismos, puede ser muy útil en varios escenarios.

Una partición es una unidad lógica de almacenamiento, usada para dividir un disco duro físico en varias
partes, cómo si se tratase de múltiples discos. De esta manera cada partición puede usar sistemas de
archivos diferentes. Estos sistemas de archivos son el formato en el cual se almacena la información, y
el computador los usa para controlar como se almacenan e identifican los datos para su uso.

Podríamos decir, que el particionado divide el disco en varias partes y el sistema de archivos identifica
las partes para que sea más rápido y fácil acceder a la información dentro de ellas.

Una de las ventajas de tener múltiples particiones, es que podemos almacenar nuestros archivos en una
partición y el sistema operativo en otra completamente separada, en caso de presentarse algún problema
con nuestro sistema que lo haga irrecuperable, nuestros archivos al estar en una partición separada no
se ven afectados, porque la partición funciona como un medio externo de respaldo.

Tener múltiples particiones también nos permite instalar múltiples sistemas operativos, ya que cada uno
tiene sus propias unidades lógicas de almacenamiento.


Tipos de particiones
Las particiones pueden ser de tres tipos: primarias, extendidas o lógicas.

Las primarías son las divisiones principales o “crudas” de un disco, solo pueden existir 4. Este tipo de
particiones pueden ser detectadas por cualquier sistema operativo. Las extendidas o secundarias, fueron
creadas para romper el limite de las 4 particiones primarías. Básicamente, están hechas solo para
contener varias particiones lógicas dentro de ella, y no tienen un sistema de archivos como tal. Es así
entonces, como las particiones lógicas son las que ocupan una porción o la totalidad de una partición
extendida, y estas (lógicas), si tienen un sistema de archivos especifico.


Tipos de Sistemas de Archivos
Algunos de los ejemplos más conocidos de sistemas de archivos son: FAT, NTFS, y ext. Aunque hay muchos
más tipos, estos son los que usamos con mayor frecuencia en Windows ó Linux, y de los que vamos a tratar.

FAT (File Allocation Table) es un sistema de archivos viejo, simple pero robusto. Actualmente es usado
mayormente para dar formato a unidades de almacenamiento pequeñas o portables, como las memorias USB, o
los discos SSD. No es un sistema de archivos que se use para instalar sistemas operativos porque no
ofrece el mismo rendimiento que otros más modernos.

NTFS (New Technology File System) es un sistema de archivos propietario creado por Microsoft, y es el
utilizado por Windows en todas sus versiones actuales.

ext (extended filesystem) son sistemas de archivos utilizados comúnmente por el kernel de Linux. Es el
sistema de archivos usado por defecto en la mayoría de las distribuciones de Linux más populares: Ubuntu,
Fedora, Debian, etc. El formato más reciente es ext4, sucesor de ext3.



B). dmesg, df, fdisk, mkfs, du y dd

---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|        COMANDOS PARA OBTENER        |
|             INFORMACIÓN             |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------
El comando "dmesg" (diagnostic message, mensajes de diagnóstico) esta presente en los sistemas operativos
Unix que lista el buffer de mensajes del kernel. El kernel es el núcleo del sistema operativo que se
carga en memoria cuando el ordenador arranca, y controla prácticamente todo en el sistema.

Este buffer contiene una gran variedad de mensajes importantes generados (por el kernel) durante el
arranque del sistema y durante la depuración de aplicaciones. La información ofrecida por dmesg puede
guardarse en el disco duro mediante un demonio de registro, como syslog.

Los numerosos mensajes generados por el kernel que aparecen en la pantalla cuando el ordenador arranca
muestran los dispositivos de hardware que el kernel detecta e indica si es capaz de configurarlos.
dmesg incluye los mensajes que aparecen durante el arranque del ordenador más otros que se van generando
durante su funcionamiento. Cuando algo no funciona correctamente en nuestro sistema la información
ofrecida por dmesg puede ser clave para solucionar el problema.

Sintaxis:

~$ dmesg

-~-~-~-~-       -~-~-~-~-

Pero la cantidad de mensajes generada puede resultarnos excesiva. Existen varias formas de filtrar la
información.

Podemos usar dos opciones de dmesg llamadas facility y level. Vamos a verlo con un ejemplo: Queremos que
aparezcan solamente los mensajes de error y de advertencia (warning). Para ello usaremos la opción level.


Sintaxis:
~$ dmesg --level=err,warn
~$ dmesg -l err,warn

-~-~-~-~-       -~-~-~-~-

Otra forma de filtrar los mensajes es usando el comando grep. Por ejemplo, queremos obtener solamente los
mensajes relativos a dispositivos usb

Sintaxis:
~$ dmesg | grep -i usb

Lo  que hará está línea será, primero ejecutar dmesg, luego pasará el resultado al comando grep, que
buscará todos los mensajes en los que aparezca usb y los mostrará en la pantalla.

-~-~-~-~-       -~-~-~-~-

También puede resultanos interesante acceder solamente a los últimos mensajes generados

Sintaxis:
~$ dmesg | tail

-~-~-~-~-       -~-~-~-~-

Finalmente si queremos obtener un archivo de texto con la información generada por dmesg

Sintaxis:
~$ dmesg > mensajes_del_kernel
---------------------------------------
---------------------------------------
El comando "df" muestra el uso del disco duro y otras informaciones como punto de montaje y sistema de
archivos. Si no se indica ninguna bandera, muestra el espacio usado. Muestra las Particiones Montadas en
el Disco Duro

Sintaxis:
~$ df
~$ df <archivo>


~$ df [-k] [-P|-t] [fichero...]

La bandera -k utiliza unidades de 1024 bytes en vez de las determinadas de 512 bytes para mostrar el uso
	de disco

La bandera -P Produce una salida en el formato descrito en la sección de la salida estándar (STDOUT)

#La bandera -t Incluye todas las cifras del espacio asignado

La bandera -i Muestra los i-nodos usados y disponibles

La bandera -h Muestra espacio en unidades comunes(KB, MB o GB)


Para conocer el nombre de los dispositivos que tenemos disponibles en el sistema se puede ejecutar el
siguiente comando:

df -T

Al ejecutarlo se obtiene la siguiente salida (esta varía de acuerdo a la información de sus sistema)

Se muestran varias columnas, entre las que destacan:
	S.ficheros: Nombre del dispositivo.
	Tipo: Tipo del sistema de ficheros del dispositivo.
	Montado en: Nombre de la carpeta en la cual esta montado el dispositivo.

-~-~-~-~-	-~-~-~-~-

Con la Opción "-h", se Muestra en MB y en GB

Sintaxis:
~$ df -h

Ejemplo Y Pantalla:
~$ df -h
Filesystem												Size	Used	Avail	Use%	Mounted on
n
rootfs													9.4G	3.7G	 5.3G	 42%	/
udev													 10M	   0	  10M	  0%	/dev
tmpfs													305M	536K	 304M	  1%	/run
/dev/disk/by-uuid/3d1e89c7-a7a1-4872-8167-300967a2ac1f	9.4G	3.7G	 5.3G	 42%	/
tmpfs													5.0M	   0	 5.0M	  0%	/run/lock
tmpfs													702M	 76K	 702M	  1%	/run/shm
/dev/sr0												649M	649M	    0	100%	/media/cdrom0

Normalmente la 1era es la que importa, es el disco duro y su espacio que tiene
---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|       COMANDOS PARA GESTIONAR       |
|            EL DISCO DURO            |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------
El comando "fdisk" sirve para ver y administrar particiones de disco duro en Linux. Con fdisk puedes ver,
crear, cambiar el tamaño, eliminar, cambiar, copiar y mover particiones.

fdisk permite crear un máximo de cuatro particiones primarias permitidas por Linux, cada una con un
tamaño mínimo de 40mb. También puede tener un número mucho mayor de particiones lógicas subdividiendo una
partición primaria.

Vamos a revisar cómo utilizar el comando fdisk para administrar particiones de disco empleando algunos
ejemplos muy simples y prácticos.

Puntos importantes a tener en cuenta:

[@] fdisk requiere root para que funcione.
[@] En sistemas basados en Debian y Ubuntu, puedes usar sudo.
[@] En otras distribuciones, usa el comando su para obtener una shell de root y luego ingresa los
	comandos sin sudo.


La forma en que se presentan los nombres de dispositivos (discos). Usualmente ves los siguientes nombres:
 /dev/hd[a-h] for IDE disks
 /dev/sd[a-p] for SCSI disks
 /dev/ed[a-d] for ESDI disks
 /dev/xd[ab] for XT disks

Advertencia: no elimines, modifiques ni agregue particiones a menos que sepas exactamente lo que se
trata. ¡Corres el riesgo de perder tus datos!


1. Ver todas las particiones de disco existentes

Lo primero que quieres hacer antes de manipular tus discos y particiones es ver los detalles básicos de
toda la partición disponible en el sistema. Los comandos enumeran las particiones en tu sistema. Cuando
hay más de un disco disponible, la lista de particiones se ordena por el nombre /dev del dispositivo como
/dev/sda, /dev/sdb y así sucesivamente. Utiliza el siguiente comando para ver todas las particiones
existentes en el sistema:

~$ sudo fdisk -l


2. Ver la partición en un disco específico

Si deseas ver todas las particiones de un disco específico, utiliza el siguiente comando para ver todas
las particiones de disco en el dispositivo /dev/sdb.

~$ sudo fdisk -l /dev/sdb


3. Ver todos los comandos fdisk

Puedes utilizar el siguiente comando para ver todos los archivos fdisk disponibles:

~$ sudo fdisk /dev/sda
 
Esto te proporcionará un mensaje. Ingresa 'm' para ver la lista de todos los comandos disponibles de
fdisk que pueden ser operados en /dev/sda.
 
Comando (m para ayuda): m

La salida será esta –
Acción de comando:
	a) alternar un indicador de arranque
	b) Editar bsd
	c) Alternar el indicador de compatibilidad DOS
	d) eliminar una partición
	l) lista los tipos de partición conocidos
	m) Imprime el menú
	n) Añadir una nueva partición
	o) Crear una nueva tabla de particiones DOS vacía
	p) Imprimir la tabla de particiones
	q) Salir sin guardar los cambios
	s) Crear una nueva etiqueta de disco Sun vacía
	t) Cambiar el ID del sistema de una partición
	u) Cambiar las unidades de visualización / entrada
	v) Verificar la tabla de particiones
	w) Escribe la tabla en el disco y salir
	x) Funcionalidad adicional (sólo expertos)


4. Eliminar una partición del disco duro

Suponiendo que necesites combinar algunas particiones para formar una más grande, primero tendrás que
eliminar esas particiones. Para eliminar una partición específica en /dev/sdb2, sigue lo siguiente:

	1) Ingresa el siguiente comando para ingresar/ver el disco:
	~# sudo fdisk /dev /sdb

	2) Introduce ‘d’ para eliminar una partición.
	Comando (m para ayuda): d	 

	3) Se te pedirá que ingreses el número de partición. Introducimos 2 en nuestro caso para eliminar
		/dev/sdb2. Guarda los cambios introduciendo ‘w’ en el comando y reinicia los cambios.


5. Crear una nueva partición de disco con tamaño específico

Para crear una nueva partición, ingresa el siguiente comando:

	1) Ingresa el siguiente comando para ingresar/ver el disco:
	~# sudo fdisk /dev/sdb

	2) Introduzce ‘n’ para crear una nueva partición que te pedirá que especifiques para una partición
		primaria o una partición extendida. Escribe ‘p’ para una partición primaria o ‘e’ para una
		partición extendida.

	3. A continuación, se pedirá que introduzca el primer número de cilindro o sector de la partición que
		se va a crear. Puedes pulsar Intro para aceptar los valores predeterminados.

	4. Se pedirá que ingreses el último cilindro o número de sector de la partición que se va a crear.
		Puedes presionar Enter para usar todo el espacio disponible después del primer sector o ingresar
		un tamaño específico como + 2G o + 256M para una partición de 2 gigabytes o 256 megabytes,
		respectivamente.

	5. Ejecuta el comando ‘w’ para escribir los cambios y reiniciar el sistema.


6. Cómo formatear una partición?

Después de crear la partición, debes formatearla con un sistema de archivos. Utiliza el siguiente comando
para formatear en formato de archivo ext4:

~# sudo mkfs.ext4 /dev/sdb1
 

7. ¿Cómo ver el tamaño de su partición nueva o existente?

Si deseas comprobar el tamaño de una partición específica, utiliza el siguiente comando para comprobar el
tamaño de la partición en /dev/sda2.

~# sudo fdisk -s /dev/sda2


8. Visualización de la tabla de particiones

Puedes utilizar el siguiente comando para ver la tabla de particiones actual:
Utiliza ‘p’ en el modo de comando.

Comando (m para ayuda): p
---------------------------------------
---------------------------------------
El comando "mkfs" se  utiliza para dar formato a un dispositivo de almacenamiento de bloque con un
determinado sistema de archivos. Un Sistema de archivos es la estructura básica de toda los datos que se
guarda, edita, borra o copia etc., en el ordenador, siendo toda esta información accesada a través de
gestores de archivos en sus respectivos SO.

ext – Extended file system (sistema de archivos extendido)
ext2 – Second extended file system (segundo sistema de archivo extendido)
ext3 – Third extended file system (tercer sistema de archivos extendido), una forma de ext2 con registro
	en diario.
ext4 – Fourth extended file system (cuarto sistema de archivos extendido), una mejora de ext3 y también
	un sistema de archivos con registro en diario con soporte para extensiones.

************************************************************************************************
************************************************************************************************
************************************************************************************************
Comando Linux mkfs / Sintaxis:
mkfs [options] [-t type fs-options] device [size]
mkfs [opciones] [-t tipo fs-opciones] dispositivo [size]

Ejemplos prácticos mkfs:
#Crear filesystem
mkfs -t ext4 /dev/sdd1

mke2fs -t ext4 /dev/sdb

OPCIONES MKFS
-v
Producir una salida detallada, incluyendo todas las órdenes específicas del sistema de archivos que se ejecutan. Especificar esta opción más de una vez inhibe la ejecución de los comandos específicos del sistema de archivos. Esto sólo es realmente útil para la prueba.

-t fstype
Especifica el tipo de sistema de archivos que se construirá. Si no se especifica, se utiliza el tipo de sistema de archivos por defecto (actualmente ext4).

fs-opciones
Opciones del sistema de archivos específicas que se pasan al constructor del sistema de archivos real. Aunque no se garantiza, las siguientes opciones se admiten en la mayoría de los fabricantes de sistemas de archivos.

-c
Compruebe el dispositivo de bloques malos antes de construir el sistema de archivos.

-l nombre de archivo
Lea la lista de bloques malos desde nombre de archivo

-h, – help
Pantalla de ayuda y sale.

Otros ejemplos mkfs:

Comando Linux mkfs como dar formato a un nuevo disco duro:
Para dar formato a un nuevo disco se usará el comando mkfs.ext3 (indica el tipo de sistema de archivos que usará la partición. ext3 )
Para dar formato ext3 a nuestra partición ejecutamos el siguiente comando
/sbin/mkfs.ext3 /dev/sda1
En este punto ya tendremos nuestro disco duro particionado y habremos especificado el sistema de archivos que usará.
mkfs.ext2 Formatea una partición en formato ext2
mkfs.ext3 Formatea una partición en formato ext3
mkfs.ext4 Formatea una partición en formato ext4
mkfs.vfat Formatea una partición en formato vfat
mkfs.msdos Formatea una partición en formato msdos
mkfs.minix Formatea una partición en formato minix

Comando Linux mkfs para formatear un sistema de archivos
mkfs /dev/hda1: crea un fichero de sistema tipo Linux en la partición hda1.
mke2fs /dev/hda1: crear un fichero de sistema tipo Linux ext 2 en hda1.
mke2fs -j /dev/hda1: crear un fichero de sistema tipo Linux ext3 (periódico) en la partición hda1.
mkfs -t vfat 32 -F /dev/hda1: crear un fichero de sistema FAT32 en hda1.

Comando Linux mkfs para formatear la memoria USB
Abrimos una terminal y escribimos:
mkfs.vfat -n nombre /dev/sdc1
Donde
vfat : es el formato que le vamos a dar a la memoria (FAT32, es el más común. Funcionan en Windows también),
Nombre: es el nombre que va a tener la memoria y /dev/sdc1 es la ubicación.


https://www.servidoresadmin.com/comando-linux-mkfs/
************************************************************************************************
************************************************************************************************
************************************************************************************************
Uso: mkfs [-V] [-t fstype ] [FS-options] filesys [bloques]

comandos de Linux mkfs se utiliza en un sistema de archivos específicos particiones para Linux

parámetros:

Dispositivo: examen preliminar de la partición del disco duro, por ejemplo: / dev / sda1
-V: Modo de presentación detallada
-t: para un determinado tipo de sistema de archivos, por defecto de Linux es ext2
-c: Al hacer el sistema de archivos, inspeccionar la partición de mala pista
bad_blocks_file -l: el bloque de vía mala información privilegiada añadido bad_blocks_file
bloque: Teniendo en cuenta el tamaño del bloque de
Ejemplos
Construido en / dev / hda5 un sistema de archivos MS-DOS, y compruebe si existen bloques defectuosos, y el proceso se muestra en detalle:

mkfs -V -t msdos -c /dev/hda5
La partición sda6 formato como formato ext3

mfks -t ext3 /dev/sda6  
Nota: Este sistema de archivos se ha de especificar, como ext3, reiserfs, ext2, FAT32; MSDOS como.

http://www.w3big.com/es/linux/linux-comm-mkfs.html
************************************************************************************************
************************************************************************************************
************************************************************************************************
Si no tienes instalado los comando mkfs.vfat y mkfs.ntfs, instala los siguientes paquetes:

apt-get install dosfstools ntfsprogs
************************************************************************************************
************************************************************************************************
************************************************************************************************
---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|       COMANDOS PARA GESTIONAR       |
|     EL TAMAÑO DE LOS DIRECTORIOS    |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------
En muchas ocasiones necesitaremos calcular el tamaño de una carpeta o cuales son las carpetas de mayor
tamaño dentro de un directorio. Con el comando “du” y algunos de sus parámetros podremos obtener este
tipo de información.

Calcular el tamaño de una carpeta:

~$ du -hs {<rutaAbsolutaDeLaCarpeta>|<rutaRelativaDeLaCarpeta>}

[@] Opción -h : tamaños de visualización en formato legible por el usuario (por ejemplo, 1K, 234M, 2G).
[@] Opción -s :  muestra sólo un total para cada argumento (resumen).

-~-~-~-~-       -~-~-~-~-

Mostrar los 10 directorios con mayor tamaño:

Con este comando podremos sacar los 10 directorios que más espacio ocupan, ordenando de directorio con mayor a menor tamaño el listado obtenido.

~$ du -hs {<rutaAbsolutaDeLaCarpeta>|<rutaRelativaDeLaCarpeta>} | sort -n -r | head -n 10

[@] Opción -r : invierte el resultado de las comparaciones.
[@] Opción -h : compara los números legibles.
[@] Parámetro head -10 : muestra las 10 primeras líneas.

-~-~-~-~-       -~-~-~-~-

#https://xn--linuxenespaol-skb.com/tutoriales/como-calcular-el-tamano-de-una-carpeta-desde-consola/?cn-reloaded=1

Encuentre el archivo más grande en un directorio y sus subdirectorios usando el comando "find":

~$ find {<rutaAbsolutaDeLaCarpeta>|<rutaRelativaDeLaCarpeta>} -printf '% s% p \ n' | sort -nr | cabeza -10
~$ encontrar . -printf  '% s% p \ n' |  sort  -nr  |  cabeza  -10
---------------------------------------
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
|        COMANDOS PARA TRATAR A       |
|    LOS DISPOSITIVOS COMO ARCHIVOS   |
-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
---------------------------------------
El comando "dd" sirve para tratar y gestionar cualquier dispositivo como un archivo. Por tanto, el
comando "dd" puede ser utilizado con diversos dispositivos y volúmenes (particiones), más allá de los
archivos propiamente dichos.

Según la especificación POSIX, dd copia el archivo indicado como origen en el archivo indicado como destino, teniendo en cuenta la conversión de los datos y el tamaño de bloque requerido. Si no se hubiera especificado el origen o el destino, dd por defecto utilizaría la entrada o la salida estándar, respectivamente, para llevar a cabo la operación.

Si se ha especificado el tamaño de bloque a transferir (mediante el parámetro bs) y no se ha indicado conversión alguna salvo noerror, notrunc o sync, se procede a la lectura, bloque por bloque, del archivo origen, y a su correspondiente escritura en el destino. El tamaño del bloque a escribir es idéntico al del bloque leído, salvo que se indique la conversión sync, en cuyo caso se procede a rellenar con ceros el bloque de destino. Si no se utiliza sync, el último bloque escrito puede ser de tamaño inferior al resto.

Por último, en caso de que no se haya especificado un tamaño de bloque, dd usa 512 bytes como tamaño por defecto.

Sintaxis:
~$ dd [operador]...
~$ dd <bandera>

-~-~-~-~-       -~-~-~-~-

       bs=BYTES
              read and write up to BYTES bytes at a time

       cbs=BYTES
              convert BYTES bytes at a time

       conv=CONVS
              convert the file as per the comma separated symbol list

       count=N
              copy only N input blocks

       ibs=BYTES
              read up to BYTES bytes at a time (default: 512)

       if=FILE
              read from FILE instead of stdin

       iflag=FLAGS
              read as per the comma separated symbol list

       obs=BYTES
              write BYTES bytes at a time (default: 512)

       of=FILE
              write to FILE instead of stdout

       oflag=FLAGS
              write as per the comma separated symbol list

       seek=N skip N obs-sized blocks at start of output

       skip=N skip N ibs-sized blocks at start of input

       status=LEVEL
              The LEVEL of information to print to stderr; 'none' suppresses everything but error messages, 'noxfer' suppresses the
              final transfer statistics, 'progress' shows periodic transfer statistics

       N and BYTES may be followed by the following multiplicative suffixes: c =1, w =2, b =512, kB =1000, K =1024, MB  =1000*1000,
       M =1024*1024, xM =M GB =1000*1000*1000, G =1024*1024*1024, and so on for T, P, E, Z, Y.

       Each CONV symbol may be:

       ascii  from EBCDIC to ASCII

       ebcdic from ASCII to EBCDIC

       ibm    from ASCII to alternate EBCDIC

       block  pad newline-terminated records with spaces to cbs-size

       unblock
              replace trailing spaces in cbs-size records with newline

       lcase  change upper case to lower case

       ucase  change lower case to upper case

       sparse try to seek rather than write the output for NUL input blocks

       swab   swap every pair of input bytes

       sync   pad every input block with NULs to ibs-size; when used with block or unblock, pad with spaces rather than NULs

       excl   fail if the output file already exists

       nocreat
              do not create the output file

       notrunc
              do not truncate the output file

       noerror
              continue after read errors

       fdatasync
              physically write output file data before finishing

       fsync  likewise, but also write metadata

       Each FLAG symbol may be:

       append append mode (makes sense only for output; conv=notrunc suggested)

       direct use direct I/O for data

       directory
              fail unless a directory

       dsync  use synchronized I/O for data

       sync   likewise, but also for metadata

       fullblock
              accumulate full blocks of input (iflag only)

       nonblock
              use non-blocking I/O

       noatime
              do not update access time

       nocache
              Request to drop cache.  See also oflag=sync

       noctty do not assign controlling terminal from file

       nofollow
              do not follow symlinks

       count_bytes
              treat 'count=N' as a byte count (iflag only)

       skip_bytes
              treat 'skip=N' as a byte count (iflag only)

       seek_bytes
              treat 'seek=N' as a byte count (oflag only)

       Sending a USR1 signal to a running 'dd' process makes it print I/O statistics to standard error and then resume copying.

-~-~-~-~-       -~-~-~-~-

       Options are:

       --help display this help and exit

       --version
              output version information and exit

-~-~-~-~-       -~-~-~-~-

Leyendo Linux Hispano recordé lo útil que puede resultar la utilización de imágenes de CD o DVD sin tener que quemarlas:
ahorramos el disco, preservamos de paso el medio ambiente y tenemos un archivo que podemos mover cómo queramos.

Directamente hacemos:
dd if=/dev/dvd of=/home/usuario/Escritorio/dvd.iso

Crear imagen para un CD
dd if=/dev/cdrom of=/home/usuario/Escritorio/cd.iso

Crear imagen para una carpeta
Si tenemos los datos en una carpeta:
mkisofs -o /destino/cd.iso /carpeta_para_imagen

Recordá que if en dd es el flujo de entrada, que en este caso será /dev/cd o /dev/dvd, pero que en función a la distribución y al equipo podría cambiar
a algo así como /dev/cdrom (con un ls en /dev vas a encontrar el dato preciso).



C). mount y umount

Montado

Antes de que se pueda utilizar un sistema de archivos, debe montarse. Cuando se monta, se establece la
conexión entre el árbol de directorios y los datos que contiene el sistema de archivos, para ello se
utiliza un punto de montaje. Cuando se desmonta el sistema de archivos se termina el vínculo creado
durante el montaje, y el contenido del sistema de archivos desmontado ya no es accesible.

En los ordenadores personales, la operación de montado y desmontado algunas veces es automática. Al
introducir un CD o un dispositivo USB puede que el ordenador lo monte automáticamente, en tal caso
cuando lo retiramos se desmonta el sistema de ficheros. El punto de montaje es el directorio de nuestro
árbol de directorios que permitirá acceder a los contenidos del nuevo sistema de archivos montado.  En
Unix normalmente se utiliza el directorio /mnt para contener a los puntos de montaje de los dispositivos
removibles.

El comando "mount" se utiliza (en sistemas basados en Unix) para montar dispositivos y particiones para
su uso por el sistema operativo. Montar es hacer que el sistema operativo proyecte el contenido de ese
dispositivo o partición en un enlace lógico (un directorio).

Sintaxis:
~# mount -t <tipoSistemaArchivos> -o <opciones> <dispositivo> <puntoDeLectura>
~# mount -t <tipoSistemaArchivos> <dispositivo> <puntoDeLectura>

Ejemplos:
~# mount -t vfat /dev/sdb5 /mnt/msdos 
~# mount -t ntfs /dev/sdb6 /mnt/win
~# mount -t ext3 /dev/sdb7 /mnt/ext3 
~# mount -t ext4 /dev/sdb8 /mnt/ext4-1k
~# mount -t ext4 /dev/sdb9 /mnt/ext4-2k
~# mount -t vfat /dev/fd0 /mnt/floppy
~# mount -t iso9660 /dev/hdb0 /mnt/cdrom


Para montar imágenes de disquetes, CD, etc. se utiliza la opción loop.

Sintaxis:
~# mount -t iso9660 -o loop /home/usuario/imagen.iso /mnt/imagenes


Para montar todo lo del archivo /etc/fstab

Sintaxis:
~# mount -a
                           +++++++++++++++++++++++++++
+++++++++++++++++++++++++++                           +++++++++++++++++++++++++++
                           +++++++++++++++++++++++++++
Tipos de sistemas de archivos soportados

El tipo del sistema de archivos puede ser:

[@] auto (intenta descubrir automáticamente el sistema de archivos).
[@] iso9660 (sistema de archivos de los CD y DVD).
[@] ext2 (sistema de archivos muy extendido en maquinas Linux).
[@] ext3 (igual que ext2 pero además añade journaling).
[@] ext4 (introdujo significativas mejoras respecto a ext3)
[@] reiserfs (otro sistema muy utilizado en maquinas Linux).
[@] msdos (para dispositivos que usen FAT12 o FAT16).
[@] vfat (para dispositivos que usen FAT32).
[@] ntfs (sistema de archivos NTFS de Windows NT, XP, etc.).
[@] smbfs (sistema de archivos de Samba).
[@] nfs (sistema de archivos de red NFS).
[@] hfs y hfsplus (acceden a sistemas de archivos de Apple Macintosh).
                           +++++++++++++++++++++++++++
+++++++++++++++++++++++++++                           +++++++++++++++++++++++++++
                           +++++++++++++++++++++++++++
Opciones del comando mount

1) Opciones comunes para todos los sistemas de archivos
Como los sistemas de archivos de /etc/fstab serán ocasionalmente montados utilizando mount no es de
extrañar que el campo de opciones contenga simplemente una lista de opciones separadas por comas que
serán pasadas directamente al intentar montar un sistema de archivos.

Las opciones comunes a todos los sistemas de archivos son:
	
[@] auto / noauto
	Con la opción auto, el dispositivo será montado automáticamente durante el inicio o en caso de que
	el comando mount -a sea ejecutado. auto es el valor por defecto. Si no se desea que el dispositivo
	se monte automáticamente, se deberá substituir por noauto.

[@] dev / nodev
	Interpretar / no interpretar dispositivos especiales de bloques en el sistema de archivos. Los
	dispositivos especiales de bloques son similares a discos (donde se puede acceder a los datos dado
	un número de bloque, y p.ej. tiene sentido tener un caché de bloques). Todos los otros dispositivos
	son ficheros especiales de caracteres. Hace tiempo la distinción era diferente: la E/S a un fichero
	especial de caracteres sería sin búfer, y a un fichero especial de bloques, con búfer.

[@] exec / noexec
	exec permite ejecutar binarios que están en la partición, mientras que noexec lo impide. noexec
	puede resultar útil en una partición que contenga binarios que se deseen ejecutar en el sistema, o
	que no deban ser ejecutados. Este podría ser el caso de la partición de Windows.

[@] ro
	Montar para sólo lectura.

[@] rw
	Montar el sistema de archivos para lectura/escritura. Utilizando esta opción, muchos nuevos usuarios
	confusos, por no poder escribir en sus discos o particiones de Windows, pueden solucionar el
	problema.

[@] sync / async
	Esta opción indica la manera en que se debe realizar la entrada y salida del sistema de archivos.
	sync especifica que se realice de manera síncrona. Para verlo en un ejemplo de un fstab, nótese que
	esta opción aparece en la unidad de discos flexibles. En particular sirve, si se está escribiendo en
	una unidad con la opción activada, para que los cambios sean realizados físicamente en el
	dispositivo a la vez que se invoca el comando correspondiente.

[@] suid / nosuid
	Permite / bloquea la operación sobre los bits suid y sgid.

[@] user / nouser
	Permite a cualquier usuario montar el sistema de archivos. Implica directamente las opciones noexec,
	nosuid y nodev a menos que se especifiquen otras. Si se utiliza la opción nouser, solo el usuario
	root podrá montar el sistema de archivos.

[@] defaults
	Utiliza las opciones por defecto: rw,suid,dev,exec,auto,nouser,async.

[@] nofail
	No devuelve error si no se puede montar el dispositivo.

2) Opciones específicas para cada sistema de archivos
Hay multitud de opciones específicas para cada sistema de archivos soportado por mount. Las que se
listan a continuación son las más habituales. Para una lista completa se puede acudir a la página del
manual de Unix sobre mount.

[@] ext2

	check={none, normal, strict}
	Establece el nivel de comprobación de fsck (utilidad de los sistemas Unix que se utiliza ante alguna
	inconsistencia del sistema de archivos para corregir los posibles errores en el sistema).

	debug
	Imprime información de depuración durante cada re-montaje.

	sb=n
	n es el bloque que deber ser utilizado como superbloque para el sistema de archivos.

[@] fat

	check={r[elaxed], n[ormal], s[trict]}
	No es igual que en ext2, pero permite utilizar una sintaxis parecida.

	conv={b[inary], t[ext], a[uto]}
	Efectúa automáticamente conversiones de archivos de texto entre DOS<->UNIX.

	uid=n, gid=n
	Establece el identificador de usuario, uid, y el identificador de grupo, gid, para todos los
	archivos de la partición.

	umask=nnn, dmask=nnn, fmask=nnn
	Establece máscara de usuario para la creación de archivos, umask, y lo mismo para sólo directorios,
	dmask y sólo archivos, fmask.

[@] iso9660
	norock
	Deshabilita las extensiones Rock Ridge.
                           +++++++++++++++++++++++++++
+++++++++++++++++++++++++++                           +++++++++++++++++++++++++++
                           +++++++++++++++++++++++++++
Dispositivos

Los dispositivos en Unix se encuentran dentro de /dev. Así es como se designan los más comunes en
GNU/Linux:

[@] fd0 Primera unidad de disquetes (a: en sistemas MS-DOS y Windows).
[@] fd1 Segunda unidad de disquetes (b: en sistemas MS-DOS y Windows).
[@] hda Primer disco duro IDE (Primary Master).
[@] hda0 Primera partición del primer disco duro IDE (Primary Master).
[@] hda1 Segunda partición del primer disco duro IDE (Primary Slave).
[@] hdb0 Primera partición del segundo disco duro IDE (Secondary Master).
[@] hdb1 Segunda partición del segundo disco duro IDE (Secondary Slave).
[@] sda Primer disco duro SCSI.
[@] sda1 Primera partición del primer disco duro SCSI.
[@] sdb Primera unidad de llave usb (Memoria USB).
[@] sdb4 Cuarta partición del segundo disco duro SCSI.
[@] scd0 Primera unidad de CD-ROM SCSI.
[@] scd1 Segunda unidad de CD-ROM SCSI.
[@] sga Primer dispositivo genérico SCSI (scanner, etc.).
[@] sgb Segundo dispositivo genérico SCSI.
[@] sg0 Primer dispositivo genérico SCSI en sistemas nuevos.
[@] sg1 Segundo dispositivo genérico SCSI en sistemas nuevos.

Desde la aparición de las unidades de almacenamiento USB (pendrives) y los discos duros SATA (serial
ATA), estos han empezado a usar también la denominación propia de los dispositivos SCSI (sda1, sdb3,
etc.). Aun así, algunas veces se pueden encontrar unidades IDE con nombres del tipo sda, sdb, etc. Esto
se debe a que ciertas distribuciones utilizan emulación IDE-SCSI. De esta forma se utiliza una capa de
software común para el manejo de todos los discos duros, CD-ROM, etc.
                           +++++++++++++++++++++++++++
+++++++++++++++++++++++++++                           +++++++++++++++++++++++++++
                           +++++++++++++++++++++++++++
Ficheros de configuración

El fichero fstab (file systems table) se encuentra comúnmente en sistemas Unix (en el directorio /etc/)
como parte de la configuración del sistema. Lo más destacado de este fichero es la lista de discos y
particiones disponibles. En ella se indica como montar cada dispositivo y qué configuración utilizar.

Los comandos mount y umount leen este fichero para determinar qué opciones utilizar a la hora de montar
el dispositivo especificado. Por ejemplo, 'mount /media/musica/' montaría en el directorio /media/musica
el dispositivo indicado en fstab con las opciones que tiene marcadas, si es que éstas se lo permiten.


La estructura de las instrucciones es de 6 columnas separadas por espacios o tabuladores:
<dispositivo> <punto_de_montaje> <sistema_de_archivos> <opciones> <dump-freq> <pass-num>

<dispositivo> es el directorio lógico que hace referencia a una partición o recurso.

<punto_de_montaje> es la carpeta en que se proyectarán los datos del sistema de archivos.

<sistema de archivos> es el algoritmo que se utilizará para interpretarlo.

<opciones> es el lugar donde se especifican los parámetros que mount utilizará para montado el
	dispositivo, deben estar separadas por comas. Pueden consultarse aquí.

<dump-freq> es el comando que utiliza dump para hacer respaldos del sistema de archivos, si es cero no
	se toma en cuenta ese dispositivo.

<pass-num> indica el orden en que la aplicación fsck revisará la partición en busca de errores durante
	el inicio, si es cero el dispositivo no se revisa.

Ejemplo:
/dev/sdb5     /mnt/disco     vfat       defaults    0     0


En este archivo también se puede hacer permanente el montado de un disco en el sistema
Simplemente edita el archivo, agregando lo siguiente al final:

#Cambios para el montaje del discoX
#<rutaEnDondeSeEncuentraMontado> was on <dispositivo>
UUID=<UUID> <puntoDeMontaje>      <sistemaDeArchivosUsado>  errors=remount-ro 0     1

Sustituyendo los respectivos valores

Para obtener el UUID ejecuta el siguiente comando: ~# blkid <dispositivo>
                           +++++++++++++++++++++++++++
+++++++++++++++++++++++++++                           +++++++++++++++++++++++++++
                           +++++++++++++++++++++++++++


Desmontado

Para desmontar un sistema de ficheros se utiliza el comando umount y se pasa como argumento el
directorio que es el punto de montaje a desmontar. Es muy importante tener en cuenta que un sistema de
archivos ocupado, porque tiene ficheros abiertos o algún proceso tiene el directorio actual en su
interior, no puede ser desmontado.

Sintaxis:
~# umount <puntoDeMontaje>
~# umount <dispositivo>

Ejemplo:
~# umount /mnt/msdos

Recuerda que puedes ejecutar el comando "df -T" para conocer el nombre de los dispositivos que tiene
disponible el sistema



d). badblocks y e2fsck

Si algún disco duro tiene sectores defectuosos podemos repararlos con la herramienta badblocks, lo
primero será saber cuál es el disco duro que deseamos reparar (/dev/sdb … /dev/sdc … etc), para ello
pongamos lo siguiente en una terminal: ~$ sudo fdisk -l

Esto nos mostrará a /dev/sda, su tamaño en GBs y sus particiones, igual a /dev/sdb si existe, y así sdc
y demás en dependencia de la cantidad de dispositivos de almacenamiento que tengan en su ordenador.

Supongamos que el disco duro en cuestión es uno externo y es /dev/sdb, entonces el comando para empezar
a detectar y reparar los sectores dañados sería:

~$ badblocks -s -v -n -f /dev/sdb
■ -s : indica que se mostrará el proceso con por cientos
■ -v : modo verbose, lo cual significa que nos mostrará el número de errores
■ -n : indica que se intentará usar un modo no destructivo, o sea, que se intentarán recuperar esos
	sectores pero también la información que estaba en ellos
■ -f : fuerza la lectura y escritura en dispositivos que estén montados. Normalmente si el HDD estuviera
	montado badblocks no revisaría los sectores que se estén usando, pero, como ya les advertí y
	aconsejé que NO pueden tener el disco duro montado, usaremos el parámetro -f para forzar la
	recuperación de todos los sectores posibles

Demorará bastante, y repito, bastante. Fácilmente podría durar horas o días en dependencia del tamaño
del disco duro, de qué tan dañado esté, de la velocidad de su ordenador, etc. Por lo que les recomiendo
dejar el ordenador ahí tranquilo, sin moverlo durante el tiempo necesario, eso y muuuucha paciencia 😉


¿hay alguna herramienta específica para ext2, ext3 o ext4?
A decir verdad sí que la hay, se puede usar e2fsck, igual deberán saber cuál partición es la que desean
revisar, supongamos que es /dev/sdb1, sería entonces:

~$ e2fsck -p -v -y /dev/sdb1

■ -p : indica que se intenten reparar automáticamente los daños encontrados
■ -v : modo verbose, o sea, que nos muestre en pantalla los errores
■ -y : responderá Sí a todas las preguntas como ¿desea recuperar X sector?, para hacer el proceso de
	veras automático
----------------------------------------------------------------------------
dd if=<dispositivo/particionMaestro>  of=<dispositivo/particionDañada> bs=4M
----------------------------------------------------------------------------



e). LVM y GVM



f). Creación y formateo de volúmenes lógicos







14. PROGRAMACIÓN DE TAREAS
A). Uso de crontab y at
B). ¿Qué es una bitácora?
C). Administración y ubicación de bitácoras







15. CONFIGURACIÓN DE RED
A). Conociendo Network Manager

NetworkManager es un conjunto de herramientas cooperativas que hacen la detección y configuración
automática para conectarse a la red. Ya sea WiFi, por cable, 3G o Bluetooth, NetworkManager permite
usted para moverse rápidamente de una red a otra.

Para las redes inalámbricas, NetworkManager prefiere las redes conocidas y tiene la capacidad de cambiar
a la red más confiable. NetworkManager permite que las aplicaciones puedan cambiar de modalidad en línea
y fuera de línea. NetworkManager da preferencia a las conexiones por cable antes que a las inalámbricas,
tiene soporte para conexiones por módem y para ciertos tipos de VPN. NetworkManager fue originariamente
desarrollado por Red Hat y ahora es respaldado por el proyecto GNOME.


Tiene dos componentes:

1. un servicio a nivel del sistema que gestiona las conexiones e informa los cambios en la red
2. un applet gráfico de escritorio que permite al usuario manipular la red conexiones. La herramienta
	nmcli proporciona una funcionalidad similar en el comando línea.


Instalación:

~$ sudo apt-get install network-manager


En caso de que usemos KDE ó Gnome/Xfce, utilizaremos estas variantes respectivamente:

~$ sudo apt-get install network-manager-kde
~$ sudo apt-get install network-manager-gnome
~$ sudo aptitude -r install network-manager-gnome

------------------------------------------------------------------------------------------------------
Una interfaz de red es el software específico de red que se comunica con el controlador de dispositivo
específico de red y la capa IP a fin de proporcionar a la capa IP una interfaz coherente con todos los
adaptadores de red que puedan estar presentes.
------------------------------------------------------------------------------------------------------




B). Archivo de configuración de interfaces

Si usted desea que NetworkManager administre todas las interfaces posibles en su ordenador, es necesario
luego que escribamos en el archivo de configuración /etc/network/interfaces para que quede de la
siguiente forma:

auto lo
iface lo inet loopback

Pero si el archivo ya tenia algo como esto:
________________________________________________________________________
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
allow-hotplug eth0
iface eth0 inet dhcp
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
En este caso las últimas dos líneas especifican que la conexión se establece (o se estableció) mediante
DHCP, y la solución sería pues simplemente comentar esas dos últimas líneas, quedando el fichero de esta
forma:
________________________________________________________________________
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
# allow-hotplug eth0
# iface eth0 inet dhcp
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Los dispositivos de red que están configurados en /etc/network/interfaces generalmente serán
administrados por ifupdown. Tales dispositivos se marcarán por defecto como "no administrados" en
NetworkManager.

Puede indicarle a NetworkManager que lea y use la configuración de red desde /etc/network/interfaces
editando /etc/NetworkManager/NetworkManager.conf y cambiando la configuración de la siguiente manera:
__________________________
[main]
plugins=ifupdown,keyfile

[ifupdown]
managed=true
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Y ya con esto debemos poder gestionar nuestras redes usando NetworkManager.
Después de modificar /etc/NetworkManager/NetworkManager.conf o /etc/network/interfaces, debe reiniciar
el servicio de NetworkManager a través de "service network-manager restart".

Sin embargo, debe tenerse en cuenta que la interfaz de red también será administrada por ifupdown. Esto
puede provocar un comportamiento inesperado si dos sistemas de configuración de red administran el mismo
dispositivo.

Si desea tener una interfaz de red administrada por NetworkManager, se recomienda eliminar manualmente
cualquier configuración para esa interfaz de /etc/network/interfaces

Es necesario saber que NetworkManager manejará todos aquellos dispositivos que no estén listados en el
fichero /etc/network/interfaces, o aquellos que estén listados en dicho fichero con la opción auto o
dhcp, de esta manera usted puede establecer una configuración para un dispositivo que sea estática y
puede estar seguro que NetworkManager no tratará de sobreescribir dicha configuración. Para mayor
información le recomiendo leer detenidamente el fichero /usr/share/doc/network-manager/README.Debian.


En NetworkManager versión 0.9, las conexiones de red se almacenan como archivos de claves en el
directorio /etc/NetworkManager/system-connections/

Al crear nuevas conexiones inalámbricas o por cable, están por defecto propiedad del sistema (es decir,
disponible para todos) y los secretos clave (por ejemplo, WPA-PSK o WEP) se almacenan como texto sin
formato en el archivo de configuración de conexión correspondiente. La ventaja de las conexiones del
sistema es que pueden estar activas antes de que un usuario inicie sesión y están activas en todas las
sesiones de usuario.

La modificación o creación de dichas conexiones de propiedad del sistema requiere privilegios de 
administrador.


Para evitar solicitudes de la contraseña de administrador, NetworkManager envía un archivo de
configuración PolicyKit que otorga a todos en el grupo "netdev" o "sudo" el privilegio de modificar una
conexión del sistema sin autenticación previa. Sin embargo, agregar un usuario al grupo sudo le otorga
privilegios de tipo root. Si no se quiere, puedes elegir agregarlo al grupo netdev.

Si el usuario no debe tener el privilegio de agregar y modificar las conexiones del sistema no lo agregue
a ninguno de los grupos.

En ese caso, los clientes del usuario (como nm-applet) crearán por defecto la creación conexiones
propiedad del usuario donde los secretos se almacenan en el llavero del usuario.

Las conexiones de tipo VPN y 3G también son propiedad del usuario por defecto.

Este paso no es obligatorio pero sí acelera el proceso de detección de la red por parte del
NetworkManager. En Debian son necesarios algunos pasos más. Debemos añadir al usuario que usará el
NetworkManager al grupo netdev:

~# adduser <suUsuario> netdev

En Debian por seguridad, los usuarios que necesiten conectarse al demonio de NetworkManager deben estar
en el grupo netdev. Si usted desea agregar un usuario al grupo netdev utilice el comando
"adduser <usuario> netdev", luego de ello tendrá que recargar dbus haciendo uso del comando
"/etc/init.d/dbus reload"

Luego para que funcione correctamente es necesario reiniciar la sesión ya que la modificación de la
asociación grupo-usuario no quedará vigente hasta que esto ocurra.

Es posible de que nos topemos con un problemita como este:

nma_dbus_init(): could not acquire its service.  dbus_bus_acquire_service() says: 'Connection "1.38" is not allowed to own the service : "org.freedesktop.NetworkManagerInfo" due to security policies in the configuration file'

Esto ocurre porque en el archivo de configuración que maneja la permisología sobre el cliente existen
problemas con el usuario especificado. El archivo /etc/dbus-1/system.d/nm-applet.conf contiene dichos
permisos, simplemente añadimos nuestro usuario como una vía “rápida” para resolver el problema. De lo
contrario podemos indagar más en el uso del NetworkManager de este fichero:
______________________________________________________________________________________________________
<policy user="teratux" allow own="org.freedesktop.NetworkManagerInfo" >
<allow send_destination="org.freedesktop.NetworkManagerInfo"/>;
<allow send_interface="org.freedesktop.NetworkManagerInfo">
</policy>
<policy user="root" >
<allow own="org.freedesktop.NetworkManagerInfo" >
<allow send_destination="org.freedesktop.NetworkManagerInfo" >
<allow send_interface="org.freedesktop.NetworkManagerInfo" >
</policy>
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Notarán que las políticas para root y para teratux (el usuario) son las mismas. Con esto ya debe correr.
Para ejecutar el applet, vamos a una consola como usuario normal:

~$ nm-applet



C). Monitoreo de Red

En este casp se va a hablar de 10 herramientas de monitorización de red para Linux que se ejecutarán
desde un terminal, ideales para los usuarios que no utilicen interfaz gráfica o para todos aquellos que
quieran mantener un control del uso de red de un servidor a través de ssh.


Iftop
Los usuarios de Linux están familiarizados, generalmente, con Top. Esta herramienta es un monitor del sistema que nos permite conocer en tiempo real todos los procesos que se están ejecutando en nuestro sistema y pudiendo administrarlos fácilmente. Iftop es una aplicación similar a Top pero especializada en la monitorización de la red, pudiendo conocer así multitud de detalles respecto a la red y todos los procesos que están haciendo uso de ella.

https://www.redeszone.net/2013/12/02/monitores-de-red-desde-terminal-para-linux/







16. SHELL SCRIPTING (BASH)
A).







17. INTRODUCCIÓN A LOS SERVICIOS DE RED

Mientras que el acceso de usuarios a los controles administrativos es un aspecto importante para los
administradores de sistemas dentro de una organización, también es de suma importancia para el que
instala o maneja un sistema Linux, mantener un registro sobre cuáles servicios de red están activos.

Si un servicio de red está ejecutándose en una máquina, entonces hay una aplicación llamada demonio
escuchando por conexiones en uno o más puertos de red. Cada uno de estos servicios debería ser tratado
como una avenida potencial de ataque.


Riesgos a los servicios

Los servicios de red pueden implicar muchos riesgos para los sistemas Linux. Abajo se muestra una lista
de algunos de los principales problemas:

[@] Ataques de denegación de servicio (Denial of Service, DoS) — Inundando un servicio con peticiones se
	puede producir un ataque de rechazo de servicio que llevaría al sistema a un estado suspendido,
	mientras este intenta responder a cada petición.

[@] Ataques de vulnerabilidad de scripts — Si un servidor esta usando scripts para ejecutar acciones del
	lado del servidor, como usualmente hacen los servidores Web, un pirata puede montar un ataque a los
	scripts que no hayan sido escritos de forma apropiada. Estos ataques de vulnerabilidad de scripts
	podrían llevar a una condición de desbordamiento del buffer o permitir al atacante alterar archivos
	en el sistema.

[@] Ataques de desbordamiento del buffer — Los servicios que se conectan a puertos del 0 al 1023 deben
	ser ejecutados como un usuario administrativo. Si la aplicación tiene un posible desbordamiento del
	buffer, un atacante podría ganar acceso al sistema como el usuario ejecutando el demonio. Debido a
	que los desbordamientos del buffer existen, los maleantes informáticos usarán herramientas
	automatizadas para identificar vulnerabilidades en los sistemas y una vez que han obtenido acceso,
	utilizaran rootkits automatizados para mantener su acceso al sistema.

Para limitar la exposición de ataques sobre la red, se deberían apagar todos los servicios que no se
esten usando.

---------------------------------------------------------------------------------------------------------
Nota
 	
ExecShield puede mitigar las amenazas de un desbordamiento de la memoria intermedia en Red Hat
Enterprise Linux. ExecShield es un ejecutable de segmentación de memoria y una tecnología de protección
soportado por los kerneles en uni o multi-procesadores x86. ExecShield reduce el riesgo del
desbordamiento de memoria intermedia al separar la memoria virtual en segmentos ejecutables y no
ejecutables. Cualquier código de programa que trate de ejecutarse en el segmento ejecutable (como por
ejemplo, código malicioso inyectado desde un ataque de memoria intermedia) disparará una falla de
segmentación y de cerrará.

ExecShield también incluye el soporte para la tecnología No eXecute (NX) en las plataformas AMD64 y la
tecnología eXecute Disable (XD), en los sistemas Itanium y Intel® EM64T. Estas tecnologías funcionan en
conjunto con ExecShield para prevenir que el código malicioso se ejecute en la porción ejecutable de la
memoria virtual con una granularidad de 4kb de código ejecutable, reduciendo el riesgo de un ataque
desde una explotación de la memoria intermedia.

Para más información sobre ExecShield y sobre las tecnologías NX y XD, consulte el documento técnico
titulado Nuevas mejoras de seguridad en Red Hat Enterprise Linux v.3, Actualización 3, disponible desde
el siguiente URL:

http://www.redhat.com/solutions/info/whitepapers/
---------------------------------------------------------------------------------------------------------
http://web.mit.edu/rhel-doc/4/RH-DOCS/rhel-sg-es-4/s1-wstation-service.html


Identificación y configuración de servicios

Para mejorar la seguridad, la mayoría de los servicios de red instalados con Red Hat Enterprise Linux
estan desactivados por defecto. Sin embargo, hay algunas excepciones importantes:

[@] cupsd — El servidor de impresión por defecto para Red Hat Enterprise Linux.
[@] lpd — Un servidor de impresión alternativo.
[@] xinetd — Un super servidor que controla las conexiones a un host de servidores subordinados, tal
	como vsftpd y telnet.
[@] sendmail — El agente de transporte de correos Sendmail está activado por defecto, pero sólo escucha
	por conexiones desde localhost.
[@] sshd — El servidor OpenSSH, el cual es un reemplazo seguro para Telnet.

Cuando se este determinando si se deben dejar estos servicios ejecutándose, es mejor usar el sentido
común y pecar por el lado de la cautela. Por ejemplo, si usted no tiene impresora, no deje cupsd
ejecutándose. Lo mismo para portmap. Si no tiene volúmenes NFSv3 o utiliza NIS (el servicio ypbind),
entonces portmap también debería esta desactivado.

Red Hat Enterprise Linux se entrega con tres programas diseñados para activar o desactivar servicios.
Ellos son la Herramienta de configuración de servicios (system-config-services), ntsysv y chkconfig.
Para más información sobre el uso de estas herramientas, consulte el capítulo llamado Control del acceso
a servicios en el Manual de administración del sistema de Red Hat Enterprise Linux.

Si no está seguro del propósito de un servicio particular, la Herramienta de configuración de servicios,
tiene un campo de descripción, mostrado en la Figura 4-3, que puede ser de ayuda.

Pero el verificar cuáles servicios están disponibles al momento del arranque no es suficiente. Los
buenos administradores de sistemas deberían verificar cuáles puertos están abiertos y escuchando.
Consulte la Sección 5.8 para más detalles sobre este tema.


Servicios inseguros

Potencialmente, cualquier servicio de red es inseguro. Por eso es que es tan importante desactivar los
servicios no utilizados. Las explotaciones a servicios se descubren y emparchan de forma regular. Por
tanto es importante mantener los paquetes asociados con cualquier servicio de red actualizados. Consulte
el Capítulo 3 para más información sobre este tema.

Algunos protocolos de red son inherentemente más inseguros que otros. Esto incluye cualquier servicio
que haga lo siguiente:

[@] Pasar los nombres de usuarios y contraseñas sobre la red sin encriptar — Mucho protocolos viejos,
	tales como Telnet y FTP, no encriptan la sesión de autenticación y deberían ser evitados siempre que
	sea posible.

[@] Pasar datos confidenciales sobre la red sin encriptar — Muchos protocolos pasan información sobre la
	red sin encriptar. Estos protocolos incluyen Telnet, FTP, HTTP y SMTP. Muchos sistemas de archivos
	de red, tales como NFS y SMB también pasan la información sobre la red sin encriptar. Es la
	responsabilidad del usuario cuando se estén usando estos protocolos limitar qué tipo de datos son
	enviados.

	También, los servicios de volcado de memoria remota, como netdump, pasan los contenidos de la
	memoria sobre la red sin encriptar. Los volcados de memoria pueden contener contraseñas o, peor aún,
	entradas de la base de datos u otra información confidencial.

	Otros servicios como finger y rwhod revelan información sobre los usuarios del sistema.


Ejemplos de servicios inherentemente inseguros incluyen los siguientes:

[@] rlogin
[@] rsh
[@] telnet
[@] vsftpd

Todos los programas de conexión y del shell remotos (rlogin, rsh y telnet), deberían ser evitados en
favor de SSH. (consulte la Sección 4.7 para más información sobre sshd).

FTP no es tan inherentemente peligroso para la seguridad de los sistemas como lo son los shells remotos,
pero los servidores FTP deben ser configurados y monitoreados cuidadosamente para evitar problemas.
Consulte la Sección 5.6 para más información sobre como asegurar servidores FTP.

Los servicios que deberían ser implementados con sumo cuidado y colocados detrás de un cortafuegos
incluyen:

[@] finger
[@] identd
[@] netdump
[@] netdump-server
[@] nfs
[@] rwhod
[@] sendmail
[@] smb (Samba)
[@] yppasswdd
[@] ypserv
[@] ypxfrd

http://web.mit.edu/rhel-doc/4/RH-DOCS/rhel-sg-es-4/s1-wstation-service.html


A). Secure Shell (SSH)

i.   Conceptos Generales de PKI

Una infraestructura de clave pública (Public Key Infrastructure) es una combinación de hardware,
software, y políticas y procedimientos de seguridad, que permiten la ejecución con garantías de
operaciones criptográficas, como el cifrado, la firma digital, y el no repudio de transacciones
electrónicas.

---------------------------------------------------------------------------------------------------------
| No repudio se refiere a un estado de negocios donde el supuesto autor de una declaración no es capaz  |
| de desafiar con éxito la validez de declaración o contrato.                                           |
| Con respecto a la seguridad digital, el significado criptológico y aplicación de los cambios de no    |
| repudio significa:                                                                                    |
| [@] Un servicio que proporciona pruebas de la integridad y origen de los datos.                       |
| [@] Una autentificación que con un alto aseguramiento pueda ser reafirmado como genuino.              |
---------------------------------------------------------------------------------------------------------

El término PKI se utiliza para referirse tanto a la autoridad de certificación y al resto de
componentes, como para señalar, de manera más amplia y a veces confusa, al uso de algoritmos de clave
pública en comunicaciones electrónicas. Este último significado es incorrecto, ya que no se requieren
métodos específicos de PKI para usar algoritmos de clave pública.

┌--------------------------------------------------------------------------------------------------------
│ En criptografía, las expresiones autoridad de certificación, o certificadora, o certificante, o las   │
│ siglas AC o CA, señalan a una entidad de confianza, responsable de emitir y revocar los certificados, │
│ utilizando en ellos la firma electrónica, para lo cual se emplea la criptografía de clave pública.    │
│ Jurídicamente, se trata de un caso particular de Prestador de Servicios de Certificación. Una         │
│ autoridad de certificación expide los certificados digitales, que ya contienen las identificaciones   │
│ numéricas y las contraseñas que se necesitan, poniendo a disposición el procedimiento de verificación │
│ para validar el certificado proporcionado.                                                            │
├───────────────────────────────────────────────────────────────────────────────────────────────────────┤
| La criptografía asimétrica (asymmetric key cryptography), también llamada criptografía de clave       │
| pública (en inglés public key cryptography) o criptografía de dos claves(en inglés two-key            │
| cryptography), es el método criptográfico que usa un par de claves para el envío de mensajes. Las dos │
| claves pertenecen a la misma persona que ha enviado el mensaje. Una clave es pública y se puede       │
| entregar a cualquier persona, la otra clave es privada y el propietario debe guardarla de modo que    │
| nadie tenga acceso a ella. Además, los métodos criptográficos garantizan que esa pareja de claves sólo│
| se puede generar una vez, de modo que se puede asumir que no es posible que dos personas hayan        │
| obtenido casualmente la misma pareja de claves.                                                       │
|                                                                                                       │
| Llave o clave es lo mismo. Existiendo por tanto: llave o clave privada y llave o clave pública.       │
|                                                                                                       │
| Si una persona que emite un mensaje a un destinatario, usa la llave pública de este último para       │
| cifrarlo; una vez cifrado, sólo la clave privada del destinatario podrá descifrar el mensaje, ya que  │
| es el único que debería conocerla. Por tanto se logra la confidencialidad del envío del mensaje, nadie│
| salvo el destinatario puede descifrarlo. Cualquiera, usando la llave pública del destinatario, puede  │
| cifrarle mensajes; los que solo serán descifrados por el destinatario usando su clave privada.        │
|                                                                                                       │
| Si el propietario del par de claves usa su clave privada para cifrar un mensaje, cualquiera puede     │
| descifrarlo utilizando la clave pública del primero. En este caso se consigue la identificación y     │
| autentificación del remitente, ya que se sabe que sólo pudo haber sido él quien empleó su clave       │
| privada (salvo que un tercero la haya obtenido). Esta idea es el fundamento de la firma electrónica,  │
| donde jurídicamente existe la presunción de que el firmante es efectivamente el dueño de la clave     │
| privada.                                                                                              │
|                                                                                                       │
| Los 'sistemas de cifrado de clave pública' o 'sistemas de cifrado asimétricos' se inventaron con el   │
| fin de evitar por completo el problema del intercambio de claves de los sistemas de cifrado           │
| simétricos. Con las claves públicas no es necesario que el remitente y el destinatario se pongan de   │
| acuerdo en la clave a emplear. Todo lo que se requiere es que, antes de iniciar la comunicación       │
| secreta, cada uno debe conseguir la llave pública del otro y cuidar cada uno su llave privada. Es más,│
| esas mismas claves públicas pueden ser usada por cualquiera que desee comunicarse con alguno de ellos │
| siempre que se utilice correctamente la llave pública de cada uno. Por tanto, se necesitarán sólo n   │
| pares de claves por cada n personas que deseen comunicarse entre sí. Cada una de las n personas tendrá│
| su clave privada y n-1 llaves públicas (distintas) si quiere enviar mensajes a todas las n-1 personas │
| restantes.                                                                                            │
├───────────────────────────────────────────────────────────────────────────────────────────────────────┤
| La firma electrónica es un concepto jurídico, equivalente electrónico al de la firma manuscrita, donde│
| una persona acepta el contenido de un mensaje electrónico a través de cualquier medio electrónico     │
| válido. Ejemplos:                                                                                     │
| [@] Usando una firma biométrica.                                                                      │
| [@] Firma con un lápiz electrónico al usar una tarjeta de crédito o débito en una tienda.             │
| [@] Marcando una casilla en una computadora, a máquina o aplicada con el ratón o con el dedo en una   │
| 		pantalla táctil.                                                                                │
| [@] Usando una firma digital.                                                                         │
| [@] Usando usuario y contraseña.                                                                      │
| [@] Usando una tarjeta de coordenadas.                                                                │
---------------------------------------------------------------------------------------------------------
| Una firma digital es un mecanismo criptográfico que permite al receptor de un mensaje firmado         |
| digitalmente identificar a la entidad originadora de dicho mensaje, y confirmar que el mensaje no ha  |
| sido alterado desde que fue firmado por el originador (integridad).                                   |
---------------------------------------------------------------------------------------------------------
| La criptografía de clave simétrica (en inglés symmetric key cryptography), también llamada            |
| criptografía de clave secreta (en inglés secret key cryptography) o criptografía de una clave         |
| (single-key cryptography), es un método criptográfico en el cual se usa una misma clave para cifrar y |
| descifrar mensajes en el emisor y el receptor. Las dos partes que se comunican han de ponerse de      |
| acuerdo de antemano sobre la clave a usar. Una vez que ambas partes tienen acceso a esta clave, el    |
| remitente cifra un mensaje usando la clave, lo envía al destinatario, y éste lo descifra con la misma |
| clave.                                                                                                |
|                                                                                                       |
|                                                                                                       |
| Seguridad                                                                                             |
| Un buen sistema de cifrado pone toda la seguridad en la clave y ninguna en el algoritmo. En otras     |
| palabras, no debería ser de ninguna ayuda para un atacante conocer el algoritmo que se está usando.   |
| Sólo si el atacante obtuviera la clave, le serviría conocer el algoritmo. Los algoritmos de cifrado   |
| ampliamente utilizados tienen estas propiedades (por ejemplo: AES).                                   |
|                                                                                                       |
| Dado que toda la seguridad está en la clave, es importante que sea muy difícil adivinar el tipo de    |
| clave. Esto quiere decir que el abanico de claves posibles, o sea, el espacio de posibilidades de     |
| claves, debe ser amplio. Richard Feynman fue famoso en Los Álamos por su habilidad para abrir cajas de|
| seguridad; para alimentar la leyenda que había en torno a él, llevaba encima un juego de herramientas |
| que incluían un estetoscopio. En realidad, utilizaba una gran variedad de trucos para reducir a un    |
| pequeño número la cantidad de combinaciones que debía probar, y a partir de ahí simplemente probaba   |
| hasta que adivinaba la combinación correcta. En otras palabras, reducía el tamaño de posibilidades de |
| claves.                                                                                               |
|                                                                                                       |
| Actualmente, los ordenadores pueden descifrar claves con extrema rapidez, y ésta es la razón por la   |
| cual el tamaño de la clave es importante en los criptosistemas modernos. El algoritmo de cifrado DES  |
| usa una clave de 56 bits, lo que significa que hay 256 claves posibles (72.057.594.037.927.936        |
| claves). Esto representa un número muy alto de claves, pero un ordenador genérico puede comprobar el  |
| conjunto posible de claves en cuestión de días. Una máquina especializada puede hacerlo en horas.     |
| Algoritmos de cifrado de diseño más reciente como 3DES, Blowfish e IDEA usan claves de 128 bits, lo   |
| que significa que existen 2128 claves posibles. Esto equivale a muchísimas más claves, y aun en el    |
| caso de que una gran cantidad de máquinas estuvieran cooperando, tardarían bastante tiempo en         |
| encontrar la clave.                                                                                   |
|                                                                                                       |
|                                                                                                       |
| Inconvenientes                                                                                        |
| El principal problema con los sistemas de cifrado simétrico no está ligado a su seguridad, sino al    |
| intercambio/distribución de claves. Una vez que el remitente y el destinatario hayan intercambiado las|
| claves pueden usarlas para comunicarse con seguridad, pero ¿qué canal de comunicación que sea seguro  |
| han usado para transmitirse las claves? Sería mucho más fácil para un atacante intentar interceptar   |
| una clave que probar las posibles combinaciones del espacio de claves.                                |
|                                                                                                       |
| Otro problema es el número de claves que se necesitan. Si tenemos un número n de personas que         |
| necesitan comunicarse entre sí, se necesitan en total n(n-1)/2 claves para todas las parejas de       |
| personas que tengan que comunicarse de modo privado. Esto puede funcionar con un grupo reducido de    |
| personas, pero sería imposible llevarlo a cabo con grupos más grandes.                                |
|                                                                                                       |
| Para solucionar estos problemas se podrían tener centros de distribución de claves simétricas. Esto   |
| podría funcionar por ejemplo para organizaciones militar. Aunque siempre habría un riesgo a posibles  |
| fugas de información de que claves son usadas en ciertas comunicaciones. Sin embargo su uso en el     |
| sector privado llevaría consigo inevitables fugas, atascos burocráticos y una constante amenaza de    |
| filtraciones.                                                                                         |
|                                                                                                       |
|                                                                                                       |
| Alternativas                                                                                          |
| Para solucionar este problema existen la criptografía asimétrica y la criptografía híbrida.           |
---------------------------------------------------------------------------------------------------------
| La criptografía híbrida es un método criptográfico que usa tanto un cifrado simétrico como un         |
| asimétrico. Emplea el cifrado de clave pública para compartir una clave para el cifrado simétrico. El |
| mensaje que se esté enviando en el momento, se cifra usando su propia clave privada, luego el mensaje |
| cifrado se envía al destinatario. Ya que compartir una clave simétrica no es seguro, ésta es diferente|
| para cada sesión.                                                                                     |
|                                                                                                       |
|                                                                                                       |
| Ejemplo                                                                                               |
| Tanto PGP como GnuPG usan sistemas de cifrado híbridos. La clave de sesión (clave simétrica) es       |
| cifrada con la clave pública del destinatario, y el mensaje saliente es cifrado con la clave          |
| simétrica, todo combinado automáticamente en un sólo paquete. El destinatario usa su clave privada    |
| para descifrar la clave de sesión (clave simétrica) y acto seguido usa ésta para descifrar el mensaje.|
|                                                                                                       |
| Un sistema de cifrado híbrido no es más fuerte que el de cifrado asimétrico o el de cifrado simétrico |
| de los que hace uso, independientemente de cuál sea más débil. En PGP y GnuPG el sistema de clave     |
| simétrica es probablemente la parte más débil de la combinación. Sin embargo, si un atacante pudiera  |
| descifrar una clave de sesión, sólo sería útil para poder leer un mensaje, el cifrado con esa clave de|
| sesión. El atacante tendría que volver a empezar y descifrar otra clave de sesión para poder leer     |
| cualquier otro mensaje.                                                                               |
---------------------------------------------------------------------------------------------------------
| Pretty Good Privacy o PGP es un programa desarrollado por Phil Zimmermann y cuya finalidad es proteger|
| la información distribuida a través de Internet mediante el uso de criptografía de clave pública, así |
| como facilitar la autenticación de documentos gracias a firmas digitales.                             |
---------------------------------------------------------------------------------------------------------
| GNU Privacy Guard es una herramienta de cifrado y firmas digitales desarrollado por Werner Koch, que  |
| viene a ser un reemplazo del PGP pero con la principal diferencia que es software libre licenciado    |
| bajo la GPL. GPG utiliza el estándar del IETF denominado OpenPGP.                                     |
---------------------------------------------------------------------------------------------------------


ii.  Demonio de SSH

SSH (Secure SHell), es un protocolo y el nombre del programa que lo implementa basado en arquitectura
cliente-servidor, que sirve para establecer conexiones seguras con máquinas remotas mediante una red.

El servidor de shell seguro o SSH (Secure SHell) es un servicio muy similar al servicio telnet ya que
permite que un usuario acceda de forma remota a un sistema Linux pero con la particularidad de que, al
contrario que telnet, las comunicaciones entre el cliente y servidor viajan cifradas desde el primer
momento de forma que si un usuario malintencionado intercepta los paquetes de datos entre el cliente y el
servidor, será muy dificil que pueda extraer la información ya que se utilizan sofisticados algoritmos de
cifrado.

La popularidad de ssh ha llegado a tal punto que el servicio telnet prácticamente no se utiliza. Se
recomienda no utilizar nunca telnet y utilizar ssh en su lugar.

Para que un usuario se conecte a un sistema mediante ssh, deberá disponer de un cliente ssh. Durante el
proceso de autentificación, cuando el usuario proporciona el nombre y la contraseña, se utiliza cifrado
asimétrico pero en el resto de la sesión se utiliza cifrado simétrico por su menor necesidad de
procesamiento.

Hoy en día, es muy poco probable encontrar una máquina servidora que no tenga instalado el servidor SSH.
Debido a que normalmente estas máquinas procesan información importante y requieren ser gestionadas de
forma remota. Por ello, vamos a ver cómo instalar, configurar y comprobar el funcionamiento del servidor
SSH OpenSSH Server en sistemas GNU/Linux.


Instalación del servidor SSH

En la mayoría de sistemas GNU/Linux, el servidor SSH ya se encuentra disponible en los repositorios
oficiales de la distribución y estos vienen configurados por defecto. De forma que para instalarlo, solo
le debemos indicar la orden instalar a nuestro gestor de paquetes (apt-get, aptitute u otro). En este
caso, vamos a usar apt-get bajo la distribución Ubuntu Server 12.04 LTS:

~$ sudo apt-get update

Para instalar el servidor y el cliente ssh debemos instalar mediante apt-get el paquete ssh que contiene
tanto la aplicación servidora como la aplicación cliente:

~$ sudo apt-get install ssh

10.png

Normalmente, no hace falta instalar el cliente SSH porque ya viene instalado por defecto en la mayoría
de las distribuciones GNU/Linux. En este caso, en la imagen anterior nos avisa de que se va a actualizar.

Para comprobar que el servidor SSH se ha instalado correctamente, podemos establecer conexión con la
máquina local de la siguiente manera:
~$ ssh usuario@127.0.0.1
~$ ssh usuario@localhost

11.jpg

De forma que, si aparece algo similar a lo que se muestra en la imagen es que el servidor SSH está
instalado correctamente en nuestro equipo.



------------https://www.elladodelgeek.com/instalar-y-configurar-servidor-ssh-linux/------------
------------InstalaciónServer------------



iii. Configuración y Uso de SSH

     1. Configuración

Los archivos de configuración son:
/etc/ssh/ssh_config: Archivo de configuración del cliente ssh
/etc/ssh/sshd_config: Archivo de configuración del servidor ssh


Configuración del servidor SSH
El servidor SSH viene con unas opciones establecidas por defecto. Pero, por seguridad se recomienda la
configuración personalizada del servicio para poder tener el control total sobre éste. Para configurar
el servidor SSH, debemos modificar el archivo /etc/ssh/sshd_config

Antes de modificar el archivo de configuración, es importante guardar una copia de éste. Así si
quisiéramos volver a la configuración inicial del servidor SSH solo tendríamos que cambiar el nombre de
la copia por sshd_config.

Guardar una copia del archivo original: sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bkp
Restaurar el archivo original: sudo cp /etc/ssh/sshd_config.bkp /etc/ssh/sshd_config
Abrir el archivo con el editor ‘nano’: sudo nano /etc/ssh/sshd_config

En este caso, vamos a modificar las siguientes directivas para dotar de más seguridad al servidor SSH:

[@] Port 268 Puerto en el que el servicio SSH estará disponible
[@] PermitRootLogin no Permitir o denegar el acceso del usuario root mediante SSH
[@] LoginGraceTime 60 Tiempo en segundos que va a estar disponible la pantalla de inicio de sesión por
	SSH
[@] MaxAuthTries 2 Número de intentos de inicio de sesión erróneos consecutivos
[@] MaxStartups 3 Número de pantallas SSH simultáneas por cliente
[@] AllowUsers rocoelwuero Usuarios con permiso para acceder mediante SSH (separados por espacio ‘ ‘).
	En este caso, si queremos que solo pueda acceder el usuario 'rocoelwuero' desde una máquina en
	concreto, debemos especificar la IP de la siguiente manera: AllowUsers rocoelwuero@ip

De forma que nuestro archivo de configuración quedaría de la siguiente manera:
------------------------------------------------------------------------------
# Configuración SSH
# 12 jul 2018

# Escuchar en el puerto 268
Port 268

# No permitir acceso de Root por SSH
PermitRootLogin no

# Tiempo de espera para la introducción de credenciales
LoginGraceTime 60

# Número máximo de intentos fallidos por sesión
MaxAuthTries 2

# Número de pantallas SSH por cliente
MaxStartups 3

# Permitir el acceso por SSH solo al usuario 'rocoelwuero'
AllowUsers rocoelwuero
------------------------------------------------------------------------------
Hemos desplazado todas las directivas modificadas al inicio del archivo para que se puedan apreciar
todos los cambios. En general, debemos ir buscando las directivas en el archivo y modificándolas en el
mismo sitio donde las encontremos. En caso de que éstas no se encuentren en el archivo, debemos
agregarlas al final.

Buenas prácticas: Podemos introducir un pequeño comentario donde indiquemos la fecha y el autor de la
última modificación (más todavía, si nuestro servidor es gestionado por más de una persona). También
podemos comentar el propósito de las directivas que modifiquemos o agreguemos para no tener que volver a
buscar información sobre su uso.

Par aplicar los cambios, debemos reiniciar el servicio SSH. Para ello podemos usar el siguiente comando:

~$ sudo service ssh restart


Arranque y parada manual del servidor ssh

El servidor ssh, al igual que todos los servicios en Debian, dispone de un script de arranque y parada
en la carpeta /etc/init.d.

Iniciar o Reiniciar el servidor ssh
~$ sudo /etc/init.d/ssh restart

Parar el servidor ssh
~$ sudo /etc/init.d/ssh stop

     2. Conexión simple

Conexión al servidor mediante ssh

Para conectar desde un PC cliente al servidor mediante ssh, debemos ejecutar el comando ssh seguido del
nombre ó dirección IP del servidor. La conexión se realizará con el mismo nombre de usuario que estemos
utilizando en el PC cliente. Ejemplo, supongamos que jessica, desde el PC llamado aula5pc3, quiere
conectarse al servidor cuya IP es 192.168.1.239:

// Conexión por ssh
jessica@cliente:~$ ssh 192.168.1.239
The authenticity of host '192.168.1.239 (192.168.1.239)' can't be established.                          '
RSA key fingerprint is 51:70:3f:9c:ac:49:52:74:88:f5:45:a6:ae:f0:9c:8a.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.1.239' (RSA) to the list of known hosts.
Password:
jessica@servidor:~$ echo "Ya estámos en el servidor"

La primera vez que se conecte alguien desde dicho PC cliente, se instalará el certificado de
autentificación del servidor, lo cual es normal si se trata de la primera vez. A la pregunta 'Are you
sure you want to continue connecting (yes/no)?' debemos responder 'yes' ya que de lo contrario la
comunicación finalizará. Si ya nos hemos conectado anteriormente otras veces y vuelve a realizar esta
pregunta, significa que alguien se está haciendo pasar por el servidor (nuestro servidor ha sido
hackeado) o que se ha reconfigurado el servidor (cambio de nombre, IP, etc...)

Si deseamos conectarnos al servidor utilizando un nombre de usuario diferente, debemos incluir el nombre
de usuario antes del nombre o IP del servidor y separado por una arroba '@'. Ejemplo, supongamos que
jessica, desde el PC llamado aula5pc3, quiere conectarse como miguel al servidor cuya IP es
192.168.1.239:

// Conexión por ssh como otro usuario
jessica@cliente:~$ ssh miguel@192.168.1.239
Password: // Introducir contraseña de miguel en el servidor
miguel@servidor:~$ // Ya estámos en el servidor como miguel

Desde PCs con Windows es posible conectarse por ssh a servidores Linux mediante el programa Putty. Se
trata de un cliente ssh para Windows que permite acceder en modo texto al sistema Linux desde sistemas
Windows.


Servicios adicionales

El paquete ssh no solamente nos proporciona conexión remota sino que proporciona otros servicios como
ejecución remota de aplicaciones gráficas, servidor ftp seguro o copia remota de archivos.

     3. Ejecución remota de aplicaciones gráficas

Mediante ssh existe la posibilidad de ejecutar aplicaciones gráficas en el servidor y manejarlas y
visualizarlas en el cliente. El servidor ssh deberá tener activada la redirección del protocolo X, es
decir, deberá tener el siguiente parámetro en el archivo de configuración /etc/ssh/ssh_config:
// Habilitar la redirección X en /etc/ssh/sshd_config
X11Forwarding yes

Ejemplo: supongamos que en nuestro terminal tenemos Damn Small Linux (que no dispone del gimp) y deseamos
conectarnos a otro PC que sí que tiene instalado el editor gráfico gimp, los pasos que haremos serán:
// Ejecutar aplicaciones gráficas
jessica@cliente:~$ ssh -X cnice@192.168.1.239 // -X para redirigir Xwindows
cnice@cnice-desktop:~$ gimp // Ejecutamos el gimp

http://www.ite.educacion.es/formacion/materiales/85/cd/linux/m5/instalacin_de_servidor_de_ssh.html

     4. Manejo de archivos en un tunel SSH, con SCP

Como administrador de un servidor Linux, hay momentos en los que se tiene que copiar a un servidor un
archivo que se tiene en un ordenador. Hay varias opciones para hacer esto. La primera es abrir un
cliente FTP como puede ser Filezilla. La segunda es copiar los archivos por consola haciendo uso del
comando SCP (Secure Copy). No me olvido de los usuarios de Mac, que pueden usar SCP igual que en Linux
y, tampoco de los de Windows, que mediante WinSCP pueden hacer lo mismo.

SCP hace uso de SSH (Secure Shell) para hacer copias seguras y encriptadas.

Tenemos que tener claros los parámetros de los que consta la instrucción:
	■ Usuario: el nombre de usuario que utilicemos en el servidor.
	■ Host: dirección IP o dominio del servidor remoto.
	■ Archivo origen: ruta del archivo que queremos copiar.
	■ Directorio origen: ruta del directorio completo que queremos copiar.
	■ Directorio destino: ruta donde queremos copiar el archivo.


Copiar Archivos de Local a Servidor
Si queremos subir un archivo de un ordenador cliente a una carpeta del servidor, la sintaxis seria la
siguiente:
~$ scp {<archivoTextoPlano>|<archivoBinario>} <usuario>@{<dominio>|<ip>}:{<rutaAbsoluta>|<rutaRelativa>}

Ejemplo y pantalla:
~$ scp archivo.txt li314024576@rigel.fca.unam.mx:~
li314024576@rigel.fca.unam.mx´s password: 
archivo.txt                                                         100%    0     0.0KB/s   00:00


Copiar Archivos de Servidor a Local
Si queremos copiar un fichero del servidor a un ordenador cliente en una carpeta:
~$ scp <usuario>@{<dominio>|<ip>}:{<rutaAbsolutaDelArchivo>|<rutaRelativaDelArchivo>} {<rutaAbsolutaEnDondeCopiar>|<rutaRelativaEnDondeCopiar>}

Ejemplo y pantalla:
~$ scp usuario@dominio.com:/home/usuario/archivo.txt Documentos
(...)


Copiar Archivos de Servidor a Servidor
Para copiar un archivo de un servidor a otro, hacemos lo siguiente:
~$ scp <usuario>@{<dominio>|<ip>}:{<rutaAbsolutaDelArchivo>|<rutaRelativaDelArchivo>} <usuario2>@{<dominio2>|<ip 2>}:{<rutaAbsolutaEnDondeCopiar>|<rutaRelativaEnDondeCopiar>}

Ejemplo y pantalla:
~$ scp usuario1@dominio1.com:/home/usuario1/archivo.txt usuario2@dominio2.com:/home/usuario2/
(...)


Copiar un Didectorio Completo
Para copiar un directorio completo de un ordenador cliente al servidor se utiliza la bandera "-r":
~$ scp -r {<rutaAbsolutaDeLaCarpetaACopiar>|<rutaRelativaDeLaCarpetaACopiar>} <usuario>@{<dominio>|<ip>}:{<rutaAbsolutaEnDondeCopiar>|<rutaRelativaEnDondeCopiar>}

Ejemplo y pantalla:
~$ scp -r /home/mario/carpeta usuario@dominio.com:/home/usuario
(...)


Limitar el Ancho de Banda
Para no sobrecargar demasiado el servidor, es posible limitar el ancho de banda de la transferencia. Con
la bandera "-l" podemos indicar la velocidad (en Kbps):
~$ scp -l limite <usuario>@{<dominio>|<ip>}:{<rutaAbsolutaDelArchivo>|<rutaRelativaDelArchivo>} {<rutaAbsolutaDeLaCarpeta>|<rutaRelativaDeLaCarpeta>}

Ejemplo y pantalla:
~$ scp -l limite usuario@dominio.com:/home/usuario/archivo.txt Documentos

https://geekytheory.com/copiar-archivos-a-traves-de-ssh-con-scp

     5. Ejecutar comandos remotos

Vamos a ver como ejecutar a través de ssh comandos en equipos remotos. Esta práctica es de utilidad en
el momento que gestionas muchos equipos y dispones de una máquina central para gestionar todos.
A partir de aquí tened en cuenta que es posible automatizar tareas en servidores remotos mediantes
scripts, creación de llaves públicas ssh, etc.

El modo de ejecutar los comandos en un servidor remoto sería el siguiente:
~$ ssh <usuario>@{<dominio>|<ip>} <comando> ...

Y con la bandera "-P" se puede conectar a un puerto en especifico:
~$ ssh <usuario>@{<dominio>|<ip>} -P<puerto> <comando> ...

Ejemplo y pantalla:
~$ ssh root@192.168.0.188 -P9999 date
stdin: is not a tty
Sun Oct  4 20:15:14 CEST 2009


Si el comando que váis a ejecutar incorpora comillas, tendréis que entrecomillar todo el comando para
evitar errores. Si el comando incluye comillas simples, entrecomilladlo con dobles, y si incluye
comillas dobles, con simples:

~$ ssh root@192.168.0.188 -P9999 'echo "Esto es una prueba"'
~$ ssh root@192.168.0.188 -P9999 "echo 'Esto es una prueba'"

Y de igual forma si utilizas caracteres especiales como '~' que en Linux representa la carpeta home del
usuario.

http://rm-rf.es/ejecutar-comandos-servidores-remotos-via-ssh/



B). Domain Name System (DNS)

El sistema de nombres de dominio​ (DNS, Domain Name System) es un sistema de nomenclatura jerárquico
descentralizado para dispositivos conectados a redes IP como Internet o una red privada. Este sistema
asocia información variada con nombre de dominio asignado a cada uno de los participantes. Su función
más importante es "traducir" nombres legibles para las personas en identificadores binarios asociados
con los equipos conectados a la red, esto con el propósito de poder localizar y direccionar estos
equipos mundialmente.

El servidor DNS utiliza una base de datos distribuida y jerárquica que almacena información asociada a
nombres de dominio en redes como Internet. Aunque como base de datos el DNS es capaz de asociar
diferentes tipos de información a cada nombre, los usos más comunes son la asignación de nombres de
dominio a direcciones IP y la localización de los servidores de correo electrónico de cada dominio.

La asignación de nombres a direcciones IP es ciertamente la función más conocida de los protocolos DNS.
Por ejemplo, si la dirección IP del sitio Google es 216.58.210.163, la mayoría de la gente llega a este
equipo especificando www.google.es y no la dirección IP. Además de ser más fácil de recordar, el nombre
es más fiable.​ La dirección numérica podría cambiar por muchas razones, sin que tenga que cambiar el
nombre del sitio web. Incluso, en el caso de que una página web utilice una Red de distribución de
contenidos (CDN) por medio del DNS el usuario recibirá la dirección IP del servidor más cercano según su
localización geográfica (cada CDN a su vez tiene sus propios servidores DNS).


Componentes
Para la operación práctica del sistema DNS se utilizan tres componentes principales:

[@] Los Clientes fase 1: Un programa cliente DNS que se ejecuta en la computadora del usuario y que
	genera peticiones DNS de resolución de nombres a un servidor DNS (Por ejemplo: ¿Qué dirección IP
	corresponde a nombre.dominio?)

[@] Los Servidores DNS: Que contestan las peticiones de los clientes. Los servidores recursivos tienen
	la capacidad de reenviar la petición a otro servidor si no disponen de la dirección solicitada.

[@] Las Zonas de autoridad: Es una parte del espacio de nombre de dominios sobre la que es responsable
	un servidor DNS, que puede tener autoridad sobre varias zonas. (Por ejemplo:
	subdominio.wikipedia.ORG, subdominio.COM, etc.)


Entendiendo las partes de un nombre de dominio

Un nombre de dominio usualmente consiste en dos o más partes (técnicamente "etiquetas"), separadas por
puntos cuando se las escribe en forma de texto. Por ejemplo, www.ejemplo.com o es.wikipedia.org

[@] A la etiqueta ubicada más a la derecha se le llama dominio de nivel superior (en inglés top level
	domain). Como "com" en www.ejemplo.com u "org" en es.wikipedia.org

[@] Cada etiqueta a la izquierda especifica una subdivisión o subdominio. Nótese que "subdominio"
	expresa dependencia relativa, no dependencia absoluta. En teoría, esta subdivisión puede tener hasta
	127 niveles, y cada etiqueta puede contener hasta 63 caracteres, pero restringidos a que la longitud
	total del nombre del dominio no exceda los 255 caracteres, aunque en la práctica los dominios son
	casi siempre mucho más cortos.

[@] Finalmente, la parte más a la izquierda del dominio suele expresar el nombre de la máquina (en
	inglés hostname). El resto del nombre de dominio simplemente especifica la manera de crear una ruta
	lógica a la información requerida. Por ejemplo, el dominio es.wikipedia.org tendría el nombre de la
	máquina "es", aunque en este caso no se refiere a una máquina física en particular.

El DNS consiste en un conjunto jerárquico de servidores DNS. Cada dominio o subdominio tiene una o más
zonas de autoridad que publican la información acerca del dominio y los nombres de servicios de
cualquier dominio incluido. La jerarquía de las zonas de autoridad coincide con la jerarquía de los
dominios. Al inicio de esa jerarquía se encuentra los servidores raíz: los servidores que responden
cuando se busca resolver un dominio de primer y segundo nivel.


DNS en el mundo real
https://es.wikipedia.org/wiki/Sistema_de_nombres_de_dominio


i. Zonas (tipos de servidores) Primarias y Secundarias

Jerarquía DNS

El espacio de nombres de dominio tiene una estructura arborescente. Las hojas y los nodos del árbol se
utilizan como etiquetas de los medios. Un nombre de dominio completo de un objeto consiste en la
concatenación de todas las etiquetas de un camino. Las etiquetas son cadenas alfanuméricas (con '-' como
único símbolo permitido), deben contar con al menos un carácter y un máximo de 63 caracteres de
longitud, y deberá comenzar con una letra (y no con '-').​ Las etiquetas individuales están separadas por
puntos. Un nombre de dominio termina con un punto (aunque este último punto generalmente se omite, ya
que es puramente formal). Un nombre de dominio correctamente formado (FQDN, por sus siglas en inglés),
es por ejemplo este: www.ejemplo.com. (incluyendo el punto al final).

Un nombre de dominio debe incluir todos los puntos y tiene una longitud máxima de 255 caracteres.

Un nombre de dominio se escribe siempre de derecha a izquierda. El punto en el extremo derecho de un
nombre de dominio separa la etiqueta raíz de la jerarquía. Este primer nivel es también conocido como
dominio de nivel superior (TLD, por sus siglas en inglés).

Los objetos de un dominio DNS (por ejemplo, el nombre del equipo) se registran en un archivo de zona,
ubicado en uno o más servidores de nombres.


Tipos de servidores DNS

Estos son los tipos de servidores de acuerdo a su función:

[@] Primarios o maestros: guardan los datos de un espacio de nombres en sus ficheros.
[@] Secundarios o esclavos: obtienen los datos de los servidores primarios a través de una transferencia
	de zona.
[@] Locales o caché: funcionan con el mismo software, pero no contienen la base de datos para la
	resolución de nombres. Cuando se les realiza una consulta, estos a su vez consultan a los servidores
	DNS correspondientes, almacenando la respuesta en su base de datos para agilizar la repetición de
	estas peticiones en el futuro continuo o libre.


ii. Registros de DNS

Normalmente sólo se utilizan unos pocos en cualquier configuración estándar de una zona DNS, como por
ejemplo para un servicio de correo y alojamiento.

Los tipos de registros más utilizados son:

[@] A = Dirección (address). Este registro se usa para traducir nombres de servidores de alojamiento a
	direcciones IPv4. Define a que dirección IP debe resolver un nombre de dominio concreto.
	dominio.com    A    xxx.xxx.xxx.xxx

[@] AAAA = Dirección (address). Este registro se usa en IPv6 para traducir nombres de hosts a
	direcciones IPv6.

[@] CNAME = Nombre canónico (canonical Name). Se usa para crear nombres de servidores de alojamiento
	adicionales, o alias, para los servidores de alojamiento de un dominio. Es usado cuando se están
	corriendo múltiples servicios (como FTP y servidor web) en un servidor con una sola dirección IP.
	Cada servicio tiene su propia entrada de DNS (como ftp.ejemplo.com. y www.ejemplo.com.). Esto
	también es usado cuando corres múltiples servidores HTTP, con diferentes nombres, sobre el mismo
	host. Se escribe primero el alias y luego el nombre real. Ej. Ejemplo1 IN CNAME ejemplo2

	Es un alias que se asigna a un host que tiene una dirección IP válida, y que responde a diversos
	nombres. Pueden declararse varios para un mismo dominio. Es importante saber que un registro CNAME
	sólo puede apuntar a un tipo registro A existente, y no debería apuntar nunca a otro CNAME pues
	podría crear loops infinitos.
	www.dominio.com    CNAME    dominio.com

	AVISO:
	Existen algunas restricciones en el uso de los registros CNAME que podrían provocar que toda la zona
	DNS del dominio dejará de funcionar. Por ejemplo, si configura un registro CNAME con el mismo nombre
	que otro registro de la zona, o un registro CNAME en el root de la zona.

	Ejemplos:

	Zona DNS
	sub.dominio.com		CNAME	dominio.com
	sub.dominio.com		MX(10)	mail.dominio.com

	Zona DNS
	dominio.com		CNAME	sub.dominio.com

[@] NS = Servidor de nombres (name server). Define la asociación que existe entre un nombre de dominio y los servidores de nombres que almacenan la información de dicho dominio. Cada dominio se puede asociar a una cantidad cualquiera de servidores de nombres.

[@] MX = Intercambio de correo (mail exchange). Asocia un nombre de dominio a una lista de servidores de intercambio de correo para ese dominio. Tiene un balanceo de carga y prioridad para el uso de uno o más servicios de correo.

[@] PTR = Indicador (pointer). También conocido como 'registro inverso', funciona a la inversa del registro A, traduciendo IPs en nombres de dominio. Se usa en el archivo de configuración de la zona DNS inversa.

[@] SOA = Autoridad de la zona (start of authority). Proporciona información sobre el servidor DNS primario de la zona.

[@] SRV = Service record (SRV record).

[@] ANY = Toda la información de todos los tipos que exista. (No es un tipo de registro, sino un tipo de consulta)


iii. Uso y configuración de DNS



C). Dynamic Host Configuration Protocol (DHCP)
i. Conceptos de Subredes y configuración de direcciones lógicas
ii. Scope de DHCP
iii. Uso y configuración de DHCP







18. Introducción a los servicios Web y transferencia de archivos
A). Apache y Nginx
B). File Transfer Protocol (FTP)
i. Jail root
C). Trivial File Transfer Protocol (TFTP)







19. SERVIDOR DE APLICACIONES







20. CONFIGURACIÓN DE FIREWALL
A). Comando iptables







21. INTRODUCCIÓN A LOS SERVICIOS DE SISTEMAS DE ARCHIVOS
A). NFS
B). Samba







 _   _ _  _    ____ _  _______ ____
| | | | || |  / ___| |/ /___ /|  _ \
| |_| | || |_| |   | ' /  |_ \| |_) |
|  _  |__   _| |___| . \ ___) |  _ <
|_| |_|  |_|  \____|_|\_\____/|_| \_\
 ____                 _____ ___        __
|  _ \ ___   ___ ___ | ____| \ \      / /   _  ___ _ __ ___
| |_) / _ \ / __/ _ \|  _| | |\ \ /\ / / | | |/ _ \ '__/ _ \
|  _ < (_) | (_| (_) | |___| | \ V  V /| |_| |  __/ | | (_) |
|_| \_\___/ \___\___/|_____|_|  \_/\_/  \__,_|\___|_|  \___/
