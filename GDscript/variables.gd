extends Node2D
# Basic types:
var texto : String = 'hello world'
var entero : int = 80
var real : float = 80.80
var boleano : bool = true # true - false
var arreglo : Array = [1, false, "brown fox"]
var diccionario : Dictionary = { "key" : "value", 42 : true}
# Vector types:
var v2 = Vector2(1, 2)
var v3 = Vector3(1, 2, 3)
var v4 = Vector4(1, 2, 3, 4)
# Constants
const ANSWER_TO_EVERYTHING = 42
const BREAKFAST = "Spam and eggs!"
# Enums
enum { ZERO, ONE , TWO, THREE }
enum NamedEnum { ONE = 1, TWO, THREE }

# Exported variables are visible in the inspector.
@export var age: int
@export var height: float
@export var person_name : String
# But both is also acceptable
@export var favorite_color: String = "Green"
@export var favorite_food := "Pizza"
# exportar variable con mensaje de ayuda.
@export_placeholder("Text in lowercase") var text_lowercase: String
# exportar variable para textos multilinea
@export_multiline var multilinea : String
# exportar variable booleana.
@export var mi_boleano : bool = false # true - false
# exportar vectores
@export var mi_vector2d : Vector2 
@export var mi_vector3d : Vector3 
@export var mi_vector4d : Vector4
# exportar arreglos
@export var mi_array : Array
# exportar diccionarios
@export var lang : Dictionary = { 
	"it" : "Italiano",
	"en" : "English",
	"es" : "Español"
}

# exportar enums
@export_enum("OPCION1", "OPCION2", "OPCION3") var OPTIONS : int

# Otra forma de exportar enums
enum OPCIONES {
	OPCION_1, 
	OPCION_2, 
	OPCION_3
}
@export var ENUM_OPCIONES : OPCIONES

# exportar rangos
@export_range(-10, 10, 1) var number_int : int
@export_range(-10, 10, 0.5) var number_float : float

# function ready
func _ready() -> void:
	print(texto)
	print(entero)
	print(real)
	print(boleano)
	print(arreglo)
	print(diccionario)
	print(v2)
	print(v2.x)
	print(v2.y)
	print(v3)
	print(v4)
	pass
