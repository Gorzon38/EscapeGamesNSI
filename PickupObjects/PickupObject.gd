extends Interactable

class_name PickupObject

export var pickup_name: String = "NONE"

func get_interaction_text() -> String:
	return "Pickup %s" % pickup_name

func interact() -> void:
	print("Player took %s" % pickup_name)
	player.add_object_to_inventory(pickup_name)
	queue_free()
