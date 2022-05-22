extends RayCast

var current_collider

## GameState Node
onready var gamestate : GameState = get_node("/root/Main/GameState")
onready var interaction_label : Label = get_node("/root/Main/GlobalUI/HUD/InteractionLabel")

func _ready():
	set_interaction_text("")

func _process(_delta):
	var collider = get_collider()
	if not gamestate.is_in_menu and is_colliding() and collider is Interactable:
		if current_collider != collider:
			current_collider = collider
		set_interaction_text(collider.get_interaction_text())
		if Input.is_action_just_pressed("Interact"):
			collider.interact()
	elif current_collider:
		current_collider = null
		set_interaction_text("")

func set_interaction_text(text: String) -> void:
	if !text:
		interaction_label.set_text("")
	else:
		interaction_label.set_text("Appuyez sur E pour %s" %  text)
	interaction_label.set_visible(!(!text))
