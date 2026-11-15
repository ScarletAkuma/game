extends Control

func _ready() -> void:
	if Global.hardMode == true:
		$VBoxContainer/hardMode.text = "Hard mode: On"
		$VBoxContainer/hardMode.button_pressed = true
	else:
		$VBoxContainer/hardMode.text = "Hard mode: Off"
		$VBoxContainer/hardMode.button_pressed = false
	
	if Global.sound == true:
		$VBoxContainer/sound.text = "Sound: On"
		$VBoxContainer/sound.button_pressed = true
	else:
		$VBoxContainer/sound.text = "Sound: Off"
		$VBoxContainer/sound.button_pressed = false

func _on_hard_mode_toggle_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$VBoxContainer/hardMode.text = "Hard mode: On"
		Global.hardMode = true
	else:
		$VBoxContainer/hardMode.text = "Hard mode: Off"
		Global.hardMode = false

func _on_sound_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$VBoxContainer/sound.text = "Sound: On"
		Global.sound = true
	else:
		$VBoxContainer/sound.text = "Sound: Off"
		Global.sound = false

func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Main menu.tscn")
