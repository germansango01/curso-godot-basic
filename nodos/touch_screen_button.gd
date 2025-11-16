extends TouchScreenButton

@export var move_up: String = 'move_up'


func _ready() -> void:
	self.action = move_up
	pass 


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed(move_up):
		print('Move up')
	pass


func _on_pressed() -> void:
	print('_on_pressed')
	self.modulate = Color.RED
	pass


func _on_released() -> void:
	print('_on_released')
	self.modulate = Color(1,1,1)
	pass
