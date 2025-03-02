extends ParallaxBackground

@onready var parallax_layer_2: ParallaxLayer = $ParallaxLayer2
@onready var parallax_layer: ParallaxLayer = $ParallaxLayer
@export var sky_speed = 0.1
@export var background_width = 820

func _process(delta: float) -> void:
	#parallax_layer.motion_offset -= Vector2(sky_speed, 0)
	parallax_layer_2.motion_offset -= Vector2(sky_speed, 0)

	if parallax_layer_2.motion_offset.x <= -background_width:
		parallax_layer_2.motion_offset.x += background_width
