extends Node2D

class_name  ChildNode

@export var the_name : String = 'ChildNode'

func _ready() -> void:
	if owner:
		await  owner.ready
	#await get_tree().create_timer(1).timeout
	print('The_name from ChildNode: ', the_name)
	pass 
