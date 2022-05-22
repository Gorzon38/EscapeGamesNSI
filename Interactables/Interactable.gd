extends Spatial

class_name Interactable

## GameState Node
onready var gamestate : GameState = get_node("/root/Main/GameState")

func _ready():
	pass

func get_interaction_text() -> String:
	return "Interactable"

func interact() -> void:
	print("Intéragie avec %s" % name)
