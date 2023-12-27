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
