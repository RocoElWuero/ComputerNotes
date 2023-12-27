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
