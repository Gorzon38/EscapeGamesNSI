extends MeshInstance


onready var enigme_maker : Level1EnigmeMaker = get_node("/root/Main/Level1EnigmeMaker")

var x : int = 0
var wait = 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if wait > 0:
		wait -= 0.1
	else:
		$"1".get_active_material(0).emission = enigme_maker.colors[x % enigme_maker.colors.size()]
		$"2".get_active_material(0).emission = enigme_maker.colors[(x+1) % enigme_maker.colors.size()]
		$"3".get_active_material(0).emission = enigme_maker.colors[(x+2) % enigme_maker.colors.size()]
		$"4".get_active_material(0).emission = enigme_maker.colors[(x+3) % enigme_maker.colors.size()]
		x = (x+1) % enigme_maker.colors.size()
		wait = 2
