extends Control


onready var mainNode: Node = get_node("/root/Main")
onready var player: Player = get_node("/root/Main/Player")


func _on_BackToMenuButton_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")


func _on_ContinuButton_pressed():
	visible = false
	player.mouse_visible = false
	player.can_move = true
	


func _on_Restart_pressed():
	get_tree().change_scene("res://Main.tscn")
