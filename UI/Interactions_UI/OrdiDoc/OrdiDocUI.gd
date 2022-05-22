extends Control_EGN


func _ready():
	$LineEdit.text = ""

func _on_ButtonSend_pressed():
	if $LineEdit.text.to_lower() == gamestate.level1_enigme_maker.k7_code_answer:
		gamestate.main_node.end()
		gamestate.close_menu(name)
		gamestate.set_player_movement(false)
	else:
		$LineEdit.text = ""


func _on_ButtonClose_pressed():
	gamestate.close_menu(name)

func open():
	$LineEdit.grab_focus()
	.open()

func close():
	$LineEdit.text = ""
	.close()
