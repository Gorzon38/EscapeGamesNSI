extends KinematicBody

export var speed: float = 14

export var fall_acceleration: float = 75

var velocity: Vector3 = Vector3.ZERO

var mouse_sensitivity: float = 1.5

onready var flashlight = $Head/FlashLight

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	# Camera movement
	if event is InputEventMouseMotion:
		rotation_degrees.y -= event.relative.x * mouse_sensitivity / 18
		$Head.rotation_degrees.x -= event.relative.y * mouse_sensitivity / 18
		$Head.rotation_degrees.x = clamp($Head.rotation_degrees.x, -90, 90)
	if event is InputEventKey:
		if event.scancode == KEY_E and event.pressed:
			flashlight.turn_on_off()

func _physics_process(delta):	
	var direction = Vector2()

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
