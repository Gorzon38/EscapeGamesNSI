extends Node

class_name GameState

## Is the colors and K7 code random ?
export var is_random : bool

## Level root node
onready var main_node : Node = get_node("/root/Main")
## Player node
onready var player : Player = main_node.get_node("Player")
## UI node
onready var global_ui : Node = main_node.get_node("GlobalUI")
## Enigme Maker Node
onready var level1_enigme_maker : Level1EnigmeMaker = main_node.get_node("Level1EnigmeMaker")

## Answer of the color thing
var colors_answer : Array
## Is the player in a menu
var is_in_menu : bool
## Is the game paused
var game_is_paused : bool

#func _ready():
#	level1_enigme_maker = Level1EnigmeMaker.new()
#	main_node.add_child(level1_enigme_maker)

## Call a menu is opening
func open_menu(menu : String) -> void:
	set_player_movement(false)
	global_ui.open_menu(menu)
	is_in_menu = true

## Call when a menu is closing
func close_menu(menu : String) -> void:
	global_ui.close_menu(menu)
	is_in_menu = false
	set_player_movement(true)

func get_menu(menu_name : String) -> Node:
	return global_ui.get_node(menu_name)

func trigger_end():
	main_node.end()

func set_player_movement(b : bool) -> void:
	player.set_move(b)
	
func pause_level(b : bool):
	game_is_paused = b
	global_ui.get_node("PauseMenu").visible = b
	set_player_movement(!b)
