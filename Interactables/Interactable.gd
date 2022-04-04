extends Spatial

class_name Interactable

export var interact_with: NodePath 

func get_interaction_text() -> String:
	return "Interactable"

func interact() -> void:
	print("Interacted with %s" % name)
