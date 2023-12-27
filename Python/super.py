class Mamifero:
	def __init__(self, nombre):
		print(f"{nombre} es un animal de sangre caliente")
class Leon(Mamifero):
	def __init__(self):
		print("El leon es un animal de cuatro patas")
		super().__init__("Simba")
		Mamifero.__init__(self, "Simba")
leon = Leon()
