extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Signal _ready")
	pass # Replace with function body.


func _on_ready() -> void:
	print("Signal received_on_ready")
	pass # Replace with function body.


func _on_button_pressed(extra_arg_0: String) -> void:
	print("_on_button_pressed: ", extra_arg_0)
	pass # Replace with function body.
