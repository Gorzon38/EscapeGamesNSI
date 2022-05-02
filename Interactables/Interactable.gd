extends Spatial

class_name Interactable

onready var player: KinematicBody = get_node("/root/Main/Player")

func get_interaction_text() -> String:
	return "Interactable"

func interact() -> void:
	print("Intéragie avec %s" % name)
