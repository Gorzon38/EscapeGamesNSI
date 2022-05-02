extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var EnterCodeBox: Control = get_node("EnterCode")
onready var MainNode: Node = get_node("/root/Main")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonSend_pressed():
	if EnterCodeBox.get_node("LineEdit").text == "not that":
		MainNode.levelComplete = true


func _on_ButtonClose_pressed():
	EnterCodeBox.visible = false
	EnterCodeBox.get_node("LineEdit").text = ""
	pass # Replace with function body.
