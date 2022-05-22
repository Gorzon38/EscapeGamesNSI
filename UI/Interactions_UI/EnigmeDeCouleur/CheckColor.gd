extends Control_EGN




func _on_Button_pressed():
	var level1_enigme_maker = gamestate.level1_enigme_maker
	
	if $Container/ColorRect.color == level1_enigme_maker.colors_answer[0] and $Container2/ColorRect.color == level1_enigme_maker.colors_answer[1] and $Container3/ColorRect.color == level1_enigme_maker.colors_answer[2] and $Container4/ColorRect.color == level1_enigme_maker.colors_answer[3]:
		gamestate.close_menu(name)
		get_node("/root/Main/Interactables/Cache").visible = false
	else:
		_reset_colors()

func _on_ReturnButton_pressed():
	gamestate.close_menu(name)

func close():
	_reset_colors()
	.close()

func _reset_colors():
	var level1_enigme_maker = gamestate.level1_enigme_maker
	
	$Container/ColorRect.color = level1_enigme_maker.colors[0]
	$Container2/ColorRect.color = level1_enigme_maker.colors[0]
	$Container3/ColorRect.color = level1_enigme_maker.colors[0]
	$Container4/ColorRect.color = level1_enigme_maker.colors[0]
