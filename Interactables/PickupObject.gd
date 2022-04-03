extends Interactable

class_name PickupObject

func get_interaction_text() -> String:
	return "Pickup"

func interact() -> void:
	print("Pickup %s" % name)
