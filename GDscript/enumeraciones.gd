extends Node2D

enum Opciones {
	OPCION_1, 
	OPCION_2, 
	OPCION_3
}

func _ready() -> void:
	# mostrar un elemento del enum
	print(Opciones.OPCION_1)
	# mostrar todos los elementos del enum
	print(Opciones.values())
	# mostrar todas las claves del enum
	print(Opciones.keys())
	# mostrar el tamaño del enum
	print(Opciones.size())

	pass 
