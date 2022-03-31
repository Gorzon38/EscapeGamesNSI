extends KinematicBody

export var speed: float = 14

export var fall_acceleration: float = 75

var velocity: Vector3 = Vector3.ZERO

var mouse_sensitivity: float = 1.5

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	# Look with the mouse
	if event is InputEventMouseMotion:
		rotation_degrees.y -= event.relative.x * mouse_sensitivity / 18
		$Head.rotation_degrees.x -= event.relative.y * mouse_sensitivity / 18
		$Head.rotation_degrees.x = clamp($Head.rotation_degrees.x, -90, 90)
		

func _physics_process(delta):
	# We create a local variable to store the input direction.
	velocity.x = 0
	velocity.z = 0
	var direction = Vector2()

	# We check for each move input and update the direction accordingly.
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_backward"):
		direction.y += 1
	if Input.is_action_pressed("move_forward"):
		direction.y -= 1
		
	#f direction != Vector3.ZERO:
	direction = direction.normalized()
	#$Pivot.look_at(translation + direction, Vector3.UP)
		
	var forward = global_transform.basis.z
	var right = global_transform.basis.x
	
	var relativeDir = (forward * direction.y + right * direction.x)

	velocity.x = relativeDir.x * speed
	velocity.z = relativeDir.z * speed
	velocity.y -= fall_acceleration * delta
	velocity = move_and_slide(velocity, Vector3.UP)
