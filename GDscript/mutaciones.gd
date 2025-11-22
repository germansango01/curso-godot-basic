extends Node2D

var array1 : Array = ['a', 'b', 'c', 'd']

var diccionario1 : Dictionary = {
	'id': 1,
	'nombre': 'juan',
	'edad': 20,
	'activo': true,
	'array': ['a', 'b', 'c', 'd']
}

var original_texture = preload("res://icon.svg")
var nueva_textura = original_texture.duplicate(true)

func _ready() -> void:
	# mutacion_array()
	# mutacion_array_solution()
	# mutacion_diccionario()
	mutacion_diccionario_deep()
	pass 


func mutacion_array() -> void:
	# crear array solo lectura
	array1.make_read_only()

	var array2 = array1
	print('array1 antes de mutacion: ', array1)
	print('array2 antes de mutacion: ', array2)

	array2.append('e')

	print('array1 despues de mutacion: ', array1)
	print('array2 despues de mutacion: ', array2)


func mutacion_array_solution() -> void:
	# crear duplicado de array para poder mutar.
	var array2 = array1.duplicate()
	print('array1 antes de mutacion: ', array1)
	print('array2 antes de mutacion: ', array2)

	array2.append('e')

	print('array1 despues de mutacion: ', array1)
	print('array2 despues de mutacion: ', array2)

func mutacion_diccionario() -> void:
	# crear duplicado de diccionario para poder mutar.
	var diccionario2 = diccionario1.duplicate()
	print('diccionario1 antes de mutacion: ', diccionario1)
	print('diccionario2 antes de mutacion: ', diccionario2)

	diccionario2['nombre'] = 'pedro'

	print('diccionario1 despues de mutacion: ', diccionario1)
	print('diccionario2 despues de mutacion: ', diccionario2)

func mutacion_diccionario_deep() -> void:
	# crear duplicado de diccionario para poder mutar con true como parametro.
	var diccionario2 = diccionario1.duplicate(true)
	print('diccionario1 antes de mutacion: ', diccionario1)
	print('diccionario2 antes de mutacion: ', diccionario2)

	diccionario2['nombre'] = 'manuel'
	diccionario2['array'].append('e')

	print('diccionario1 despues de mutacion: ', diccionario1)
	print('diccionario2 despues de mutacion: ', diccionario2)
