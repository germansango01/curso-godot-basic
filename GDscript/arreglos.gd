extends Node2D

var arreglo : Array = [1, false, "brown fox", 80.80]
var new_array : Array = [2, 'camion', 4, 5.55, true]


func _ready() -> void:
	# mostrar todo el arreglo
	print(arreglo)
	# mostrar el primer elemento del arreglo
	print(arreglo[0]) # ocurre error si esta vacio
	print(arreglo.front())
	# mostrar elemetos del array
	print(arreglo[1])
	print(arreglo[2])
	# mostrar ultimo elemento del array
	print(arreglo.back())
	print(arreglo[-1]) # falla si array esta vacio

	# agregar elementos a un array
	arreglo.append(true)
	arreglo.push_back('push_back')
	arreglo.push_front('push_front')
	print(arreglo)

	# agregar elemento en una posicion especifica
	arreglo.insert(2, 'insert')
	print(arreglo)

	# agregar un array a otro array
	arreglo.append_array(new_array)
	print(arreglo)

	# eliminar el primer elemento del array
	arreglo.pop_front()
	print(arreglo)

	# eliminar ultimo elemento del array
	arreglo.pop_back()
	print(arreglo)

	# busca y elimina un elemento del array
	arreglo.erase("brown fox")
	print(arreglo)

	# eliminar un elemento en una posicion especifica
	arreglo.remove_at(2)
	print(arreglo)

	# eliminar un elemento en una posicion especifica
	arreglo.pop_at(-1)
	print(arreglo)

	# eliminar todos los elementos de un array
	arreglo.clear()
	print(arreglo)

	pass
