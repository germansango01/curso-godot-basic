extends Control

@onready var video_stream_player: VideoStreamPlayer = $VideoStreamPlayer


func _ready() -> void:
	# cargar video
	# video_stream_player.play()
	pass


func _process(_delta: float) -> void:
	if Input.is_action_pressed('ui_up'):
		# Valida si video esta reproduciendo
		if !video_stream_player.is_playing():
			# reproduce video
			video_stream_player.play()

	if Input.is_action_pressed('ui_down'):
		# Cambiar estado de pausa
		video_stream_player.paused = !video_stream_player.paused
	
	if Input.is_action_pressed('ui_left'):
		# detener video
		video_stream_player.stop()
		
	if Input.is_action_pressed('ui_right'):
		# obtener volumen y volumen en desibeles
		print(video_stream_player.get_volume())
		print(video_stream_player.get_volume_db())
		# establecer volumen y volumen en desibeles
		video_stream_player.volume = 0.1
		video_stream_player.volume_db = -10


# Se ejecuta la senal al finalizar video.
func _on_video_stream_player_finished() -> void:
	# reproduce video
	video_stream_player.play()
