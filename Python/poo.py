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
	def tocarCancion(self):
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
		super().tocarCancion()
miCel = Celular()
miCel.usandoCelular()
