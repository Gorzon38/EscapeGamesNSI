extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var EnterCodeBox: Control = get_node("EnterCode")
onready var MainNode: Node = get_node("/root/Main")

# Called when the node enters the scene tree for the first time.
func _ready():
	EnterCodeBox.get_node("LineEdit").text = ""
	$Cassette.visible = false
	$EndScreen.visible = false

func _input(event):
	if visible and event is InputEventKey and event.scancode == KEY_ESCAPE:
		_on_ButtonClose_pressed()



func _on_ButtonSend_pressed():
	if EnterCodeBox.get_node("LineEdit").text.to_lower() == "echappe":
		$EndScreen.visible = true
		$EndScreen/Label.text = "IN "+ $StopWatch.text
	else:
		EnterCodeBox.get_node("LineEdit").text = ""


func _on_ButtonClose_pressed():
	EnterCodeBox.visible = false
	EnterCodeBox.get_node("LineEdit").text = ""
	MainNode.get_node("Player").mouse_visible = false
	MainNode.get_node("Player").can_move = true


func _on_LineEdit_text_entered(new_text):
	_on_ButtonSend_pressed()


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")
