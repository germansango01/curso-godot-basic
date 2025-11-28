extends Node2D

@onready var child_node: ChildNode = $ChildNode

func _ready() -> void:
	child_node.the_name = 'Changed the_name'
	print('the_name from ParentNode: ', child_node.the_name)
	pass 
 
