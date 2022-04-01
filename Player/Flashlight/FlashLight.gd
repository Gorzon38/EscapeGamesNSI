extends Spatial

const FLASHLIGHT_FOLLOW_SPEED: int = 15

onready var light: SpotLight = $FlashlightMesh/SpotLight

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func turn_on_off(): -> void
	light.visible = !light.visible

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func make_flashlight_follow(delta: float, head):
	rotation.y = lerp(rotation.y, head.rotat)
