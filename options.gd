extends Control

func _on_hard_mode_toggle_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$VBoxContainer/hardMode.text = "Hard mode: On"
	else:
		$VBoxContainer/hardMode.text = "Hard mode: Off"

func _on_sound_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$VBoxContainer/sound.text = "Sound: On"
	else:
		$VBoxContainer/sound.text = "Sound: Off"

func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Main menu.tscn")
