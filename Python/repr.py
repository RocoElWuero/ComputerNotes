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