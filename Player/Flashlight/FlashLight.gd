extends Spatial

const FLASHLIGHT_FOLLOW_SPEED: int = 15

onready var light: SpotLight = $FlashlightMesh/Light

func turn_on_off() -> void:
	light.visible = !light.visible
	visible = !visible
