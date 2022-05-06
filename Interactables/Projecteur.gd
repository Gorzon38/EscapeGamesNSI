extends Interactable

class_name Projecteur

export var object_to_insert: String = ""

onready var image_node = get_node("Image")
onready var light_node = get_node("Light")

var has_interact = false


func _ready():
	$VideoLight.visible = false
	image_node.visible = false
	light_node.set_param(Light.PARAM_ENERGY, 0)

func get_interaction_text() -> String:
	return "" if has_interact else "Insérer : %s" % object_to_insert.to_upper()

func interact() -> void:
	if player.has_object_in_inventory(object_to_insert):
		print("Intéragir avec %s" % name.to_upper())
		image_node.visible = true
		$VideoLight.visible = true
		light_node.set_param(Light.PARAM_ENERGY, 2)
		has_interact = true
