extends Interactable


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_interaction_text() -> String:
	return "Intéragir avec des boutons\n qui font bip et qui font flash" if get_node("/root/Main/Interactables/Cache").visible else ""

func interact() -> void:
	if gamestate.main_node.get_node("Interactables/Cache").visible:
		print("Intéragie avec %s" % name.to_upper())
		gamestate.open_menu("ContainerColor")
