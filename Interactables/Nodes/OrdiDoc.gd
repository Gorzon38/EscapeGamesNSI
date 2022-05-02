extends "res://Interactables/Interactable.gd"

class_name OrdiDoc


onready var MainNode: Node = get_node("/root/Main")
onready var EnterCodeBox: Control = get_node("/root/Main/UI/EnterCode")

var has_interact = false

func _ready():
	pass

func get_interaction_text() -> String:
	return "Intéragir" 

func interact() -> void:
	print("Intéragir avec %s" % name.to_upper())
	EnterCodeBox.visible = true
	MainNode.get_node("Player").mouse_visible = true
