extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Play.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

## Lance le 1er niveau
func _on_Play_pressed():
	get_tree().change_scene("res://Levels/Level1/Level1.tscn")

## Ouvre le menu option inexistant
func _on_Option_pressed():
	get_tree().change_scene("res://Menu/Option_menu.tscn")
	
## Ouvre le menu credit
func _on_Crdit_pressed():
	get_tree().change_scene("res://Menu/Credit.tscn")

## Quitte le jeu
func _on_Quit_pressed():
	get_tree().quit()





func _on_PlayR_pressed():
	get_tree().change_scene("res://Levels/Level1/Level1R.tscn")
