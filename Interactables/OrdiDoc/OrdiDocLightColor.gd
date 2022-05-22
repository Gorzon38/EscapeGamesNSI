extends Spatial

## GameState Node
onready var gamestate : GameState = get_node("/root/Main/GameState")
onready var enigme_maker : Level1EnigmeMaker = get_node("/root/Main/Level1EnigmeMaker")

onready var mat: SpatialMaterial = $MeshInstance.get_active_material(0)
onready var light: OmniLight = $OmniLight

var wait = 0
var x = -1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if wait > 0:
		wait -= 0.01
	else:
		x = (x+1) % enigme_maker.colors_answer.size()
		mat.emission = enigme_maker.colors_answer[x]
		light.light_color = enigme_maker.colors_answer[x]
		wait = 2
