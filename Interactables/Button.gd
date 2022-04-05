extends Interactable


export var interact_with : NodePath 
export var on_by_default = true

onready var object_interact_node = get_node(interact_with)
onready var on = on_by_default
