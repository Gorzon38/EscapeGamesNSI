extends Control

class_name Control_EGN

## GameState Node
onready var gamestate : GameState = get_node("/root/Main/GameState")

func _ready():
	pass

func _input(event):
	if gamestate.is_in_menu and event is InputEventKey and event.scancode == KEY_ESCAPE:
		gamestate.close_menu(name)
		
func open():
	visible = true
	
func close():
	visible = false
