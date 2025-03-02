extends Node

var score = 0; 
var speed = 0.8;
var gpa = 4.0;
@onready var score_label: Label = %score_label
@onready var gpa_label: Label = %gpa_label

func add_point():
	score += 1
	score_label.text = "Score: " + str(score)
	
func get_score() -> int:
	return score

func get_speed() -> float:
	return speed;
	
func decrease_gpa(grade:int):
	gpa = (gpa*16 + grade*3)/18 
	gpa_label.text = "GPA: " + str(round(gpa*10.0)/10.0)
	
