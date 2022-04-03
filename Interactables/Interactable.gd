extends Node

class_name Interactable

func get_interaction_text() -> String:
	return "Interactable"

func interact() -> void:
	print("Interacted with %s" % name)
