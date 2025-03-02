extends ParallaxBackground

@onready var parallax_layer_2: ParallaxLayer = $ParallaxLayer2
@onready var game_manager: Node = %Game_manager

@export var sky_speed = 0.1
@export var background_width = 820
@export var winning_score = 150

var game_won = false

func set_winning_score(win:int):
	winning_score = win

func _process(delta: float) -> void:
	if game_won:
		return
	
	parallax_layer_2.motion_offset -= Vector2(sky_speed, 0)

	if parallax_layer_2.motion_offset.x < -background_width:
		parallax_layer_2.motion_offset.x += background_width

	if game_manager.get_score() >= winning_score:
		stop_scrolling()

func stop_scrolling():
	game_won = true
	parallax_layer_2.visible = false
	var game_scene = ResourceLoader.load("res://scenes/winner.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else:
		printerr("winner_error")
