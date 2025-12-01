extends PlayerState

func enter():
	print('Hello from state Idle!!!')
	print(player.texto)


func process(_delta: float) -> void:
	if Input.is_action_pressed('ui_right'):
		player.texto = 'texto cambiado en idle'
		state_machine.change_to(player.states._move)
