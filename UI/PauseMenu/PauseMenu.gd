extends Control


## GameState Node
onready var gamestate : GameState = get_node("/root/Main/GameState")

func _on_BackToMenuButton_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")


func _on_ContinuButton_pressed():
	gamestate.pause_level(false)
	


func _on_Restart_pressed():
	if gamestate.is_random:
		get_tree().change_scene("res://Levels/Level1/Level1R.tscn")
	else:
		get_tree().change_scene("res://Levels/Level1/Level1.tscn")
