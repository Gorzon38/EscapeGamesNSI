extends Control_EGN


func _ready():
	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")


func _on_LevelFinished_visibility_changed():
	$Label.text = "IN " + gamestate.global_ui.get_node("StopWatch").text
	gamestate.global_ui.get_node("StopWatch").visible = false
