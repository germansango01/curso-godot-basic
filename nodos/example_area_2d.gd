extends Node2D

@onready var area_2d: Area2D = $Area2D

	

func _on_area_2d_area_entered(area: Area2D) -> void:
	print("_on_other_area_2d_area_entered Area: ", area)


func _on_area_2d_area_exited(area: Area2D) -> void:
	print("_on_area_2d_area_exited Area: ", area)
