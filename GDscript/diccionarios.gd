extends Node2D

var diccionario : Dictionary = {
	'id': 1,
	'nombre': 'juan',
	'edad': 20,
	'activo': true
}

func _ready() -> void:
	# mostrar todo el diccionario.
	print(diccionario)
	# mostrar un elemento del diccionario.
	print(diccionario['nombre'])
	print(diccionario.get('edad'))
	pass
