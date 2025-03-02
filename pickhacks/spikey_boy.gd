extends Area2D

@onready var game_manager: Node = %Game_manager
@onready var game: Node2D = $".."

var s = 0.8

func _ready() -> void:
	pass
	#s = game_manager.get_speed()

func _process(delta: float) -> void:
	s = game_manager.get_speed()
	position.x -= s
	if(position.x < -270):
		position.x = 350

func _on_body_entered(body) -> void:
	game_manager.decrease_gpa(0)# Gives them a D
	position.x = 380
	game.reset_game()
	
