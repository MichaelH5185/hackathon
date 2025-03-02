extends Area2D

@onready var game: Node2D = $".."
@onready var game_manager: Node = %Game_manager
var speed = 0.8
var incrementer = 0
var prev_pos = 0
var curr_pos = 0

func _on_body_entered(body) -> void:
	game_manager.add_point()# Replace with function body.
	curr_pos = randomizeLocation(position.x, "x")
	while (curr_pos >= prev_pos - 70 && curr_pos <= prev_pos + 70):
		curr_pos = randomizeLocation(position.x, "x")
		print(str(curr_pos))
	position.x = curr_pos
	prev_pos = curr_pos
	position.y = randomizeLocation(position.y, "y"); 

func _process(delta: float) -> void:
	position.x -= speed
	if position.x < -200:
		print("voided")
		curr_pos = randomizeLocation(position.x, "x")
		while (curr_pos >= prev_pos - 70 && curr_pos <= prev_pos + 70 ):
			curr_pos = randomizeLocation(position.x, "x")
		position.x = curr_pos
		prev_pos = curr_pos
		print("voided")
		position.y = randomizeLocation(position.y, "y")
	#if position.x < -200:
		#position.x = 200


func _ready() ->void:
	randomize()


func randomizeLocation(pos, plane):
	if plane == "x":
		pos = randi() % 251 + 175
	else:
		pos = -(randi() % 75)
	return pos
