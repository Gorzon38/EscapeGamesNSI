extends Container

onready var color_rect: ColorRect = $ColorRect

var color: Array = [Color(1,0,0,1), Color(0,1,0,1), Color(0,0,1,1)]
var color_int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	color_rect.color = color[color_int]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	color_int = (color_int + 1) % color.size()
	color_rect.color = color[color_int]
