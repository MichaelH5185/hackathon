extends Node2D

@onready var button: Button = $Button

func _on_button_pressed() -> void:
	get_tree().quit() # Replace with function body.
