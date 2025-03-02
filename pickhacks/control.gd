extends Control

@onready var start_game: Button = $start_game

func _ready() -> void:
	print("I have been turned on")

func _on_start_game_pressed():
	print("you turned me on")
	var game_scene = ResourceLoader.load("res://scenes/game.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else: 
		printerr("I have brought shame upon my bloodline")
