extends Node2D


func _ready() -> void:
	var print_message = PrintMessage.new()
	print_message.message_printed.connect(_on_print_message_message_printed)
	print_message.print_message("Hello form DemoPrintMessageClass")
	print_message.name = 'MyPrintMessage'
	add_child(print_message)
	pass


func _on_print_message_message_printed() -> void:
	print('_on_print_message_message_printed')
	pass
