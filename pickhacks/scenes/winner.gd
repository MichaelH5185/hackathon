extends Control
@onready var job: Button = $Job
@onready var try: Button = $try
@onready var log_score: Button = $"Log Score"



func _on_job_pressed() -> void:
	get_tree().quit()



func _on_try_pressed() -> void:
	var game_scene = ResourceLoader.load("res://scenes/home_page.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else: 
		printerr("Connection Error")



func _on_log_score_pressed() -> void:
	pass
