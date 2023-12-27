class Pastel:
	ingredientes = None
	def __init__(self,ingredientes):
		self.ingredientes = ingredientes
	def __repr__(self):
		print("Aqui: __repr__")
		return f"Pastel({self.ingredientes !r})"
	@classmethod
	def hornear_de_chocolate(cls):
		print("Aqui: hornear_de_chocolate")
		return cls(["harina", "leche", "chocolate"])
	@classmethod
	def hornear_de_vainilla(cls):
		print("Aqui: hornear_de_vainilla")
		return cls(["harina", "leche", "vainilla"])
print(f"{Pastel.hornear_de_chocolate()}")
'''
	Aqui: hornear_de_chocolate
	Aqui: __repr__
	Pastel(['harina', 'leche', 'chocolate'])
'''
print(f"{Pastel.hornear_de_vainilla()}")
'''
	Aqui: hornear_de_vainilla
	Aqui: __repr__
	Pastel(['harina', 'leche', 'vainilla'])
'''
