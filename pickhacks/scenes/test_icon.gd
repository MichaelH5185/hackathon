extends Area2D

@onready var game: Node2D = $".."
@onready var game_manager: Node = %Game_manager

var speed = 0.8
func _on_body_entered(body) -> void:
	game_manager.add_point()# Replace with function body.
	position.x += 250; 

func _process(delta: float) -> void:
	position.x -= speed
	#if position.x < -200:
		#position.x = 200
