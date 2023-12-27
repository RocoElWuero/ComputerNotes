class Persona:
	def __init__(self, nombre, edad):
		self.nombre = nombre
		self.edad = edad

	def __str__(self):
		return f"Persona: {self.nombre}, Edad: {self.edad}"
persona = Persona("Juan", 30)
cadena = str(persona)
print(cadena)
#Persona: Juan, Edad: 30
print(f"{persona}")
#Persona: Juan, Edad: 30
