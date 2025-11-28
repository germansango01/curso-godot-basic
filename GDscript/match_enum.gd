extends Node2D

enum My_OPTIONS { OPTION_1, OPTION_2, OPTION_3 }

# Backing field
var _current_option: My_OPTIONS = My_OPTIONS.OPTION_1

# Propiedad exportada con setter/getter
@export var current_option: My_OPTIONS:
	set(value):
		if _current_option == value:
			return
		_current_option = value
		print("La opción ha cambiado a: %s" % _current_option)

	get:
		return _current_option

# ============================================================
#	ENUM PARA CLASIFICAR TIPOS DE VALORES
# ============================================================
enum ValueType {
	INTEGER,
	FLOAT,
	STRING,
	BOOL,
	ARRAY,
	DICTIONARY,
	VECTOR2,
	VECTOR3,
	COLOR,
	NODE,
	RESOURCE,
	NULL_TYPE,
	UNKNOWN
}

# ============================================================
#	FUNCIÓN QUE DETECTA EL TIPO USANDO typeof() + match
# ============================================================
func detect_value_type(value) -> ValueType:
	match typeof(value):

		TYPE_INT:
			return ValueType.INTEGER

		TYPE_FLOAT:
			return ValueType.FLOAT

		TYPE_STRING:
			return ValueType.STRING

		TYPE_BOOL:
			return ValueType.BOOL

		TYPE_ARRAY:
			return ValueType.ARRAY

		TYPE_DICTIONARY:
			return ValueType.DICTIONARY

		TYPE_VECTOR2:
			return ValueType.VECTOR2

		TYPE_VECTOR3:
			return ValueType.VECTOR3

		TYPE_COLOR:
			return ValueType.COLOR

		TYPE_OBJECT:
			if value is Node:
				return ValueType.NODE
			if value is Resource:
				return ValueType.RESOURCE
			return ValueType.UNKNOWN

		TYPE_NIL:
			return ValueType.NULL_TYPE

		_:
			return ValueType.UNKNOWN

# ============================================================
#	EJEMPLO DE USO DEL ENUM CON match
# ============================================================
func test_value(value):
	var t = detect_value_type(value)

	match t:
		ValueType.INTEGER:
			print("Es un entero.")

		ValueType.FLOAT:
			print("Es un número decimal.")

		ValueType.STRING:
			print("Es un texto.")

		ValueType.BOOL:
			print("Es un booleano.")

		ValueType.ARRAY:
			print("Es un arreglo.")

		ValueType.DICTIONARY:
			print("Es un diccionario.")

		ValueType.VECTOR2:
			print("Es un Vector2.")

		ValueType.VECTOR3:
			print("Es un Vector3.")

		ValueType.COLOR:
			print("Es un Color.")

		ValueType.NODE:
			print("Es un nodo.")

		ValueType.RESOURCE:
			print("Es un recurso.")

		ValueType.NULL_TYPE:
			print("Es null.")

		ValueType.UNKNOWN:
			print("Tipo desconocido.")

# ============================================================
#	PRUEBAS AUTOMÁTICAS (Opcional)
# ============================================================
func _ready():
	test_value(42)
	test_value(3.14)
	test_value("Hola")
	test_value([1, 2, 3])
	test_value({"a": 1})
	test_value(Vector2(10, 20))
	test_value(Vector3(1, 2, 3))
	test_value(Color.RED)
	test_value(self)
	test_value(null)
