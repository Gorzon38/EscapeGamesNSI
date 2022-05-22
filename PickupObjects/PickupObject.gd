extends Interactable

class_name PickupObject

export var pickup_name_ui: String = "NONE" # Nom de l'objet à afficher
export var pickup_name: String = "NONE" # Nom de l'objet pour le jeu

func get_interaction_text() -> String:
	"""Texte à afficher sur l'interface utilisateur"""
	return "prendre : %s" % pickup_name_ui 

func interact() -> void:
	"""Intéraction avec l'objet"""
	print("Player took %s" % pickup_name_ui)
	gamestate.player.add_object_to_inventory(pickup_name_ui)
	gamestate.get_menu("HUD").get_node("Cassette").visible = true
	queue_free()
	
