extends Node2D

@onready var tile_map: TileMap = $TileMap
@export var speed = 0.8
@onready var tile_map_2: TileMap = $TileMap2
@onready var character_body_2d: CharacterBody2D = $CharacterBody2D
@onready var game_manager: Node = %Game_manager

func _process(delta: float):
	tile_map.position.x -= speed
	if tile_map.position.x < -800:
		tile_map.position.x = 0
	if character_body_2d.position.y > 0:
		print("your mother")
		reset_game()
		game_manager.decrease_gpa(1)

func reset_game():
	tile_map.position.x = 0 
	character_body_2d.position.x = 50
	character_body_2d.position.y = -50 
	
#func _change_tile_map():
	#pass 
