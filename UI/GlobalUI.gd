extends Control_EGN

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in get_children():
		n.visible = false
	$HUD.visible = true
	$StopWatch.visible = true

func open_menu(menu : String) -> void:
	$HUD.visible = false
	get_node(menu).open()

func close_menu(menu : String) -> void:
	$HUD.visible = true
	get_node(menu).close()
