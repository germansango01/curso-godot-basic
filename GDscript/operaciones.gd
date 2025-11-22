extends Node2D

@export var velocidad: float = 100.0
@export var salud: int = 100

var my_lambda: Callable = func() -> void:
	print("Hello from lambda!")

signal salud_cambiada(nueva_salud: int)

func _ready() -> void:
	my_lambda.call()
	var sprite := Sprite2D.new()
	add_child(sprite)
	sprite.queue_free()
	emit_signal("salud_cambiada", salud)

func foo() -> void:
	pass

func add(first: float, second: float) -> float:
	return first + second

var jump_count: int = 0
func jump() -> void:
	jump_count += 1

func printing() -> void:
	print("GDScript ", "is ", " awesome.")
	prints("These", "words", "are", "divided", "by", "spaces.")
	printt("These", "words", "are", "divided", "by", "tabs.")
	printraw("This gets printed to system console.")

# --- Corrección sobre INTEGER_DIVISION:
# usamos floats para que la división preserve la parte decimal.
func doing_math() -> void:
	var first: float = 8.0
	var second: float = 4.0
	var pr1 : int = 9
	var tr1 : int = 3
	print(first + second) # 12.0
	print(first - second) # 4.0
	print(first * second) # 32.0
	print(first / second) # 2.0  <- ahora es división float (no se descarta decimal)
	print(pr1 % tr1) # 0
	# operadores compuestos siguen igual
	print(pow(first, 2)) # 64.0
	print(sqrt(second))  # 2.0
	printt(PI, TAU, INF, NAN)

# --- Control de flujo (con var declaradas) ---
func control_flow() -> void:
	var x: int = 8
	var y: int = 2

	if x < y:
		print("x is smaller than y")
	elif x > y:
		print("x is bigger than y")
	else:
		print("x and y are equal")

	var a: bool = true
	var b: bool = false
	var c: bool = false
	if a and b or not c:
		print("This is true!")

	for i in range(20):
		print(i)

	for i in 20:
		print(i)

	for item in ["two", 3, 1.0]:
		print(item)

	while x > y:
		print(x, y)
		y += 1

	x = 2
	y = 10
	while x < y:
		x += 1
		if x == 6:
			continue
		if x == 7:
			break

	match x:
		1:
			print("Match is similar to switch.")
		2:
			print("You don't need to list cases beforehand.")
		3:
			print("Each case does not fall through by default.")
		4:
			print("Use 'continue' inside match-case for fallthrough behaviour.")
		_:
			print("Default case with underscore.")

func ternary_example() -> void:
	var estado: String = "Saludable" if salud > 50 else "Débil"
	print(estado)

# --- Corrección sobre UNUSED_VARIABLE: usar las variables f y b en vez de dejarlas sin usar.
func casting_examples() -> void:
	var i: int = 42
	var f: float = float(i)     # antes estaba sin usar -> ahora lo usamos
	var b: bool = i as bool     # antes estaba sin usar -> ahora lo usamos
	print("f (float):", f, "b (bool):", b)

# --- Renombramos el parámetro delta a _delta para silenciar UNUSED_PARAMETER
func _init() -> void:
	pass

func _process(_delta: float) -> void:
	# Si no necesitas usar _delta, convencer al linter renombrándolo con _
	# Si más adelante lo usas, quita el underscore y úsalo normalmente.
	pass

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Vector2.RIGHT
	global_position += direction * velocidad * delta

class InnerClass:
	extends Object

	func hello() -> void:
		print("Hello from inner class!")

func use_inner_class() -> void:
	var ic: InnerClass = InnerClass.new()
	ic.hello()
	ic.free()
