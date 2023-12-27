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
