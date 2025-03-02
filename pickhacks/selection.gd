extends Control

@onready var option_button: OptionButton = $OptionButton

func _on_start_game_pressed() -> void:
	if option_button.get_selected_id() != 0:
		GameMan.set_diff_level(option_button.get_selected_id())
		var game_scene = ResourceLoader.load("res://scenes/game.tscn")
		if game_scene:
			get_tree().change_scene_to_packed(game_scene)
		else: 
			printerr("Connection Error")
