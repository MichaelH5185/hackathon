extends ParallaxBackground

@onready var parallax_layer: ParallaxLayer = $ParallaxLayer
@export var sky_speed = 0.1

func _process(delta: float) -> void:
	parallax_layer.motion_offset -= Vector2(sky_speed, 0)
