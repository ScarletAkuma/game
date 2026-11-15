extends Control

func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Main menu.tscn")

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")

func _on_hard_mode_pressed() -> void:
	Global.hardMode = true
	get_tree().change_scene_to_file("res://main.tscn")
