extends Container

## GameState Node
onready var gamestate : GameState = get_node("/root/Main/GameState")
## ColorRect Node
onready var color_rect: ColorRect = $ColorRect

var _color_int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	color_rect.color = Color(1,0,0,1)


func _on_Button_pressed():
	_color_int = (_color_int + 1) % gamestate.level1_enigme_maker.colors.size()
	color_rect.color = gamestate.level1_enigme_maker.colors[_color_int]
