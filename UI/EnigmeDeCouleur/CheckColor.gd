extends Control

onready var MainNode: Node = get_node("/root/Main")

var color: Array = [Color(1,0,1,1), Color(0,0,1,1), Color(1,0,0,1),  Color(0,1,1,1)]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if $Container/ColorRect.color == color[0] and $Container2/ColorRect.color == color[1] and $Container3/ColorRect.color == color[2] and $Container4/ColorRect.color == color[3]:
		get_node("/root/Main/Interactables/Cache").visible = false
		MainNode.get_node("Player").mouse_visible = false
		MainNode.get_node("Player").can_move = true
		visible = false
	else:
		$Container/ColorRect.color = Color(1,0,0,1)
		$Container2/ColorRect.color = Color(1,0,0,1)
		$Container3/ColorRect.color = Color(1,0,0,1)
		$Container4/ColorRect.color = Color(1,0,0,1)
