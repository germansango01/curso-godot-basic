extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var color_picker_button: ColorPickerButton = $ColorPickerButton

var _color : Color = Color.WHITE

func _ready() -> void:
	update_color(_color)


func update_color(new_color: Color) -> void:
	_color = new_color
	sprite_2d.modulate = _color


func _on_color_picker_button_picker_created() -> void:
	print('_on_color_picker_button_picker_created: ',color_picker_button.color)


func _on_color_picker_button_popup_closed() -> void:
	print('_on_color_picker_button_popup_closed: ', color_picker_button.color)
	update_color(color_picker_button.color)


func _on_color_picker_button_color_changed(color: Color) -> void:
	print('color_changed: ', color)
	update_color(color)
