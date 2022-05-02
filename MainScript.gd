extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var levelComplete = false
var has_inform_end = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("UI/EnterCode").visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if levelComplete and !has_inform_end:
		has_inform_end = true
		print("END")
