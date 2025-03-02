extends Node2D
@onready var first_place: Label = $First_place
@onready var second_place: Label = $Second_place
@onready var third_place: Label = $Third_place
@onready var fourth_place_2: Label = $Fourth_place2
@onready var fourth_place: Label = $Fourth_place
@onready var button: Button = $Button
var score = []
func pull_score() -> Array:
	var file = FileAccess.open("res://data.csv", FileAccess.READ)
	if file == null:
		printerr("Reading Error")
		return []
	var scores = []
	while not file.eof_reached():
		var line = file.get_line()
		var values = line.split(",") 
		var name = values[0].trim_prefix(" ").trim_suffix(" ")  
		var scor = values[1].trim_prefix(" ").trim_suffix(" ").to_int()
		scores.append({"name": name, "score": scor}) 
	file.close()
	return scores
func save_scores(scores:Array):
	var file = FileAccess.open("res://data.csv", FileAccess.WRITE)
	for entry in scores:
		var name = entry["name"]
		var score = str(entry["score"])
		file.store_line("%s,%s" % [name, score])
	file.close()

func _ready() -> void:
	score = pull_score()
	first_place.text = "1: " + str(score[0]["name"]) + " Score: " + str(score[0]["score"])
	second_place.text = "2: " + str(score[1]["name"]) + " Score: " + str(score[1]["score"])
	third_place.text = "3: " + str(score[2]["name"]) + " Score: " + str(score[2]["score"])
	fourth_place.text = "4: " + str(score[3]["name"]) + " Score: " + str(score[3]["score"])
	fourth_place_2.text = "5: " + str(score[4]["name"]) + " Score: " + str(score[4]["score"])
	
func add_new_entry(a) -> bool:
	var isBigger = -1
	var tick
	for entry in score:
		tick += 1
		if(entry["score"] < a["score"]):
			isBigger = tick
			break
	if(isBigger != -1):
		score[isBigger] = a
		save_scores(score)
		return true
	return false 
	


func _on_button_pressed() -> void:
	var game_scene = ResourceLoader.load("res://scenes/home_page.tscn")
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)
	else: 
		printerr("Connection Error")
