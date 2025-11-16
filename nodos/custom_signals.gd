extends Node2D

signal signal_after_ready
signal signal_with_parameters(number)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Emitir la señal directamente.
	signal_after_ready.emit()
	# usar funcion emit_signal() para emitir la señal
	emit_signal('signal_after_ready')

	# Emitir la señal con parametros.
	signal_with_parameters.emit(5)
	# usar funcion emit_signal() para emitir la señal con parametros
	emit_signal('signal_with_parameters', 10)
	pass # Replace with function body.


func _on_signal_after_ready() -> void:
	print("Se ha emitido la señal '_on_signal_after_ready'")


func _on_signal_with_parameters(number: int) -> void:
	print('signal_with_parameters: ', number)

