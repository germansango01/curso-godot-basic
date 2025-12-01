extends Control

@onready var player: Player = $Player

func _ready() -> void:
	print('*****************************')
	print('State Name from other_scene')
	print(player.state_machine.state.name)
	print('*****************************') 


func _on_button_pressed() -> void:
	player.state_machine.change_to(player.states._move)
