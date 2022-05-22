extends Interactable

class_name Projecteur

export var object_to_insert: String = ""

var has_interact = false

func _ready():
	$VideoLight.visible = false
	$Image.visible = false
	$Light.set_param(Light.PARAM_ENERGY, 0)

func get_interaction_text() -> String:
	return "" if has_interact else "Insérer : %s" % object_to_insert.to_upper()

func interact() -> void:
	if gamestate.player.has_object_in_inventory(object_to_insert):
		print("Intéragir avec %s" % name.to_upper())
		$Image/Viewport/Label.text = gamestate.level1_enigme_maker.k7_code_answer_num
		$Image.visible = true
		$VideoLight.visible = true
		$Light.set_param(Light.PARAM_ENERGY, 2)
		has_interact = true
		gamestate.get_menu("HUD").get_node("Cassette").visible = false
