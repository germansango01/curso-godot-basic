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

# Functions
func foo():
	pass # pass keyword is a placeholder for future code

func add(first, second):
	return first + second

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
	
