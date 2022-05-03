extends KinematicBody

export var speed: float = 14
export var fall_acceleration: float = 75

onready var flashlight = $Head/FlashLight

var velocity: Vector3 = Vector3.ZERO
var mouse_sensitivity: float = 1.5
var inventory: Array = []
var mouse_visible = false
var can_move: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	flashlight.turn_on_off()

func _input(event):
	# Camera movement
	if event is InputEventMouseMotion and can_move:
		rotation_degrees.y -= event.relative.x * mouse_sensitivity / 18
		$Head.rotation_degrees.x -= event.relative.y * mouse_sensitivity / 18
		$Head.rotation_degrees.x = clamp($Head.rotation_degrees.x, -90, 90)
	if event is InputEventKey:
		if can_move and event.scancode == KEY_F and event.pressed:
			flashlight.turn_on_off()
		if event.scancode == KEY_F1 and event.pressed:
			print(inventory)
		if event.scancode == KEY_F2 and event.pressed:
			mouse_visible = !mouse_visible

func _physics_process(delta):
	var direction = Vector2()
	if can_move:
		if Input.is_action_pressed("move_right"):
			direction.x += speed/10
		if Input.is_action_pressed("move_left"):
			direction.x -= speed/10
		if Input.is_action_pressed("move_backward"):
			direction.y += speed/10
		if Input.is_action_pressed("move_forward"):
			direction.y -= speed/10
		
	direction = direction.normalized()
	
	var forward = global_transform.basis.z
	var right = global_transform.basis.x
	
	var relativeDir = (forward * direction.y + right * direction.x)

	velocity.x = relativeDir.x * speed
	velocity.z = relativeDir.z * speed
	velocity.y -= fall_acceleration * delta
	velocity = move_and_slide(velocity, Vector3.UP)
	
	if mouse_visible:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func add_object_to_inventory(_pickup_type):
	inventory.append(_pickup_type)
	
func has_object_in_inventory(_object: String) -> bool:
	return inventory.count(_object) > 0
