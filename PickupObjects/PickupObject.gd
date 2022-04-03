extends Interactable

class_name PickupObject

export var pickup_type: int = Pickup.NONE

onready var player: KinematicBody = get_node("/root/Main/Player")

const Pickup = {NONE = 0, TAPE = 1}


func get_interaction_text() -> String:
	return "Pickup %s" % get_pickup_name()

func interact() -> void:
	print("Player took %s" % get_pickup_name())
	player.add_object_to_inventory(get_pickup_name())
	queue_free()

func get_pickup_name() -> String:
	match pickup_type:
		1: return "Cassette"
	return "None"
