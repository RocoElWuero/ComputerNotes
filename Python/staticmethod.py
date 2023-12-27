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
