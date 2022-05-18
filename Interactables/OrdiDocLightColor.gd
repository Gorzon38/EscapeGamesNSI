extends Spatial


onready var mat: SpatialMaterial = $MeshInstance.get_active_material(0)
onready var light: OmniLight = $OmniLight

var color: Array = [Color(1,0,1,1), Color(0,0,1,1), Color(1,0,0,1),  Color(0,1,1,1), Color(0,0,0,0)]
var wait = 2
var x = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	mat.emission = color[x]
	light.light_color = color[x]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if wait > 0:
		wait -= 0.01
	else:
		x = (x+1) % color.size()
		mat.emission = color[x]
		wait = 2
		light.light_color = color[x]
