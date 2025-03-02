extends Area2D

@onready var game_manager: Node = %Game_manager

var s = 0.8

func _ready() -> void:
	pass
	#s = game_manager.get_speed()

func _process(delta: float) -> void:
	position.x -= s
	if(position.x < -270):
		position.x = 250

func _on_body_entered(body) -> void:
	game_manager.decrease_gpa(2)# Gives them a D
	print("hit me")
	position.x = 250
	
