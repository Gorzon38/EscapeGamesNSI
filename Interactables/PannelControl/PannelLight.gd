extends MeshInstance


var color: Array = [Color(1,0,0,1), Color(0,1,0,1), Color(0,0,1,1), Color(1,0,1,1), Color(0,1,1,1), Color(1,1,0,1)]
var x : int = 0
var wait = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if wait > 0:
		wait -= 0.1
	else:
		$"1".get_active_material(0).emission = color[x % color.size()]
		$"2".get_active_material(0).emission = color[(x+1) % color.size()]
		$"3".get_active_material(0).emission = color[(x+2) % color.size()]
		$"4".get_active_material(0).emission = color[(x+3) % color.size()]
		x = (x+1) % color.size()
		wait = 2
