extends Node2D

@onready var area_2d: Area2D = $Area2D


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("_on_other_area_2d_area_entered Area: ", area)


func _on_area_2d_area_exited(area: Area2D) -> void:
	print("_on_area_2d_area_exited Area: ", area)


func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	# print("_on_area_2d_area_shape_entered Area: ", area	)
	# print("area_rid: ", area_rid)
	# print("area_shape_index: ", area_shape_index)
	# print("local_shape_index: ", local_shape_index)

	# var other_shape_owner = area.shape_find_owner(area_shape_index)
	# var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

	# var local_shape_owner = area_2d.shape_find_owner(local_shape_index)
	# var local_shape_node = area_2d.shape_owner_get_owner(local_shape_owner)

	# print("other_shape_owner: ", other_shape_owner)
	# print("other_shape_node: ", other_shape_node)
	# print("local_shape_owner: ", local_shape_owner)
	# print("local_shape_node: ", local_shape_node)
	# print("--------")
	pass # Replace with function body.


func _on_area_2d_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	print("_on_area_2d_area_shape_exited Area: ", area	)
	print("area_rid: ", area_rid)
	print("area_shape_index: ", area_shape_index)
	print("local_shape_index: ", local_shape_index)

	var other_shape_owner = area.shape_find_owner(area_shape_index)
	var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

	var local_shape_owner = area_2d.shape_find_owner(local_shape_index)
	var local_shape_node = area_2d.shape_owner_get_owner(local_shape_owner)

	print("other_shape_owner: ", other_shape_owner)
	print("other_shape_node: ", other_shape_node)
	print("local_shape_owner: ", local_shape_owner)
	print("local_shape_node: ", local_shape_node)
	print("--------")
	pass # Replace with function body.
