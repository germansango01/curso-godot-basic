extends PlayerState

func enter():
	print('Hello from state Move!!!')
	print(player.texto)


func process(_delta: float) -> void:
	if Input.is_action_pressed('ui_left'):
		state_machine.change_to(player.states._idle)
