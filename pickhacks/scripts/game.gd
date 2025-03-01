extends Node2D

@onready var tile_map: TileMap = $TileMap
@export var speed = 0.8

func _process(delta: float):
	tile_map.position.x -= speed
	if tile_map.position.x < -270:
		tile_map.position.x = 0

#func _change_tile_map():
	#pass 
