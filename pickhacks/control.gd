extends Control

@onready var start_game: Button = $start_game

func _ready() -> void:
	pass

func _on_start_game_pressed():
	var game_scene = ResourceLoader.load("res://selection.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else: 
		printerr("Connection Error")
