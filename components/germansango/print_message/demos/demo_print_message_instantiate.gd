extends Node2D

var scene_print_message: PackedScene = preload("res://components/germansango/print_message/print_message.tscn")

func _ready() -> void:
	instantiate_and_execute_function()
	instantiate_and_execute_ready()

func instantiate_and_execute_function():
	var pm = scene_print_message.instantiate()
	pm.print_message("Hello from DemoPrintMessageInstantiate (function)")
	add_child(pm)

func instantiate_and_execute_ready():
	var pm = scene_print_message.instantiate()
	pm.execute_on_ready = true
	pm.print_message("Hello from DemoPrintMessageInstantiate (ready)")
	add_child(pm)
