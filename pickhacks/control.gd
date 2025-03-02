extends Control

@onready var start_game: Button = $start_game
@onready var leader_board: Button = $leader_board

func _ready() -> void:
	pass

func _on_start_game_pressed():
	var game_scene = ResourceLoader.load("res://selection.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else: 
		printerr("Connection Error")


func _on_leader_board_pressed() -> void:
	var game_scene = ResourceLoader.load("res://scenes/scoreboard.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else: 
		printerr("Connection Error")
