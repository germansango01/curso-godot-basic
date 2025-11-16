extends Node2D

@onready var custom_signals: Node2D = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	custom_signals.connect('signal_after_ready', run_affert_signal_emit)
	# Emitir la señal usando la funcion emit_signal() desde hijo.
	# custom_signals.emit_signal('signal_after_ready')
	# Emitir la señal directamente desde hijo.
	# custom_signals.signal_after_ready.emit()

	custom_signals.connect('signal_with_parameters', run_signal_with_parameters_emit)
	# Emitir la señal con parametros desde hijo.
	# custom_signals.emit_signal('signal_with_parameters', 5)
	# Emitir la señal con parametros directamente desde hijo.
	# custom_signals.signal_with_parameters.emit(10)	
	pass # Replace with function body.


func run_affert_signal_emit() -> void:
	print("Se ha emitido la señal en el nodo padre")


func run_signal_with_parameters_emit(number: int) -> void:
	print('signal_with_parameters: ', number)
