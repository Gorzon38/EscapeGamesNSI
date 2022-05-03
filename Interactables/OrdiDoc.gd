extends "res://Interactables/Interactable.gd"

## Ordinateur avec lequel on rentre le mot de passe
class_name OrdiDoc

onready var MainNode: Node = get_node("/root/Main") # Recupère le noeud du niveau
onready var EnterCodeBox: Control = get_node("/root/Main/UI/EnterCode") # Récupère le noeud de L'interface de l'ordi


func _ready():
	pass

func get_interaction_text() -> String:
	return "Intéragir" 

## Affiche l'interface après une interraction
func interact() -> void:
	print("Intéragir avec %s" % name.to_upper())
	EnterCodeBox.visible = true
	MainNode.get_node("Player").mouse_visible = false
	MainNode.get_node("Player").can_move = false
	
