extends Area2D

@onready var game_manager: Node = %GameManager

func _on_body_entered(body):
	game_manager.add_point() # Replace with function body
	queue_free()
