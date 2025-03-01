extends Node2D

@onready var tile_map: TileMap = $TileMap
@onready var character_body: CharacterBody2D = $CharacterBody2D

func _process(delta: float):
	if character_body.position.x < -270:
		tile_map.position.x = 0

#func _change_tile_map():
	#pass 
