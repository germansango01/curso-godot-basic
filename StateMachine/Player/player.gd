extends CharacterBody2D

class_name Player

@onready var state_machine: StateMachine = $StateMachine

var texto : String = 'Hola'

var states : Dictionary = {
	'_idle': 'PlayerStateIdle',
	'_move': 'PlayerStateMove'
}


func _ready() -> void:
	print('********************')
	print('state_machine.state')
	print(state_machine.state)
	print(state_machine.state.name)
	print('********************')
