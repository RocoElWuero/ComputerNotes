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
