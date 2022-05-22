extends Node

## GameState Node
onready var gamestate : Node = $GameState

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input(event):
	if not gamestate.is_in_menu and event is InputEventKey and event.scancode == KEY_ESCAPE:
		gamestate.pause_level(true)

func end(): 
	gamestate.open_menu("LevelFinished")
