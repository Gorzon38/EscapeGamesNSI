extends Interactable

## Ordinateur avec lequel on rentre le mot de passe
class_name OrdiDoc

func _ready():
	pass

func get_interaction_text() -> String:
	return "Intéragir" 

## Affiche l'interface après une interraction
func interact() -> void:
	print("Intéragir avec %s" % name.to_upper())
	gamestate.open_menu("OrdiDocUI")
	
