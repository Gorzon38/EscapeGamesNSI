extends Interactable

class_name Projecteur

export var object_to_insert: String = ""

onready var image_node = get_node("Image")
onready var light_node = get_node("Light")

var has_interact = false

func _ready():
	image_node.visible = false
	light_node.set_param(Light.PARAM_ENERGY, 0)

func get_interaction_text() -> String:
	return "" if has_interact else "Insert %s" % object_to_insert

func interact() -> void:
	if player.has_object_in_inventory(object_to_insert):
		print("Interacted with %s" % name)
		image_node.visible = true
		light_node.set_param(Light.PARAM_ENERGY, 2)
		has_interact = true
