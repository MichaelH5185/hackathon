extends Node

var score = 0; 
var speed = 1.5;
var gpa = 4.0;
var time = 0;
@onready var score_label: Label = %score_label
@onready var gpa_label: Label = %gpa_label

func add_point():
	score += 1
	score_label.text = "Score: " + str(score)
	
func get_score() -> int:
	return score

func get_speed() -> float:
	return (speed+(speed*time));
	
func decrease_gpa(grade:int):
	gpa = (gpa*15 + grade*3)/18 
	gpa_label.text = "GPA: " + str(round(gpa*10.0)/10.0)
	if((round(gpa*10.0)/10) < 2.0):
		var game_scene = ResourceLoader.load("res://scenes/fail.tscn")
		if game_scene:
			get_tree().change_scene_to_packed(game_scene)
		else: 
			printerr("Connection Error Fail")
func increase_gpa(grade:int):
	gpa = (gpa*15 + grade*3)/18
	gpa_label.text = "GPA: " + str(round(gpa*10.0)/10.0)
func _process(delta: float) -> void:
	time += delta/50
