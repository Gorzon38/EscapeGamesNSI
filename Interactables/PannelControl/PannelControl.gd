extends Interactable


onready var containerColor: Node = get_node("/root/Main/ContainerColor")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_interaction_text() -> String:
	return "Intéragir avec des boutons\n qui font bip et qui font flash" if get_node("/root/Main/Interactables/Cache").visible else ""

func interact() -> void:
	if get_node("/root/Main/Interactables/Cache").visible:
		print("Intéragie avec %s" % name.to_upper())
		containerColor.visible = true
		player.mouse_visible = true
		player.can_move = false
