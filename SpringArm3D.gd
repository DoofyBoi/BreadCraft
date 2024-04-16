extends SpringArm3D
@export var mouse_sensetivity := 0.005

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
func _unhandled_input(event: InputEvent):
	if event is InputEventMouseMotion:
		rotation.x -= event.relative.y * mouse_sensetivity
		rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(30))
		
		rotation.y -= event.relative.x * mouse_sensetivity
		rotation.y = wrapf(rotation.y, -PI, PI)
		
func _process(_delta):
	if  Input.is_action_just_pressed("Quit"): 
		get_tree().quit()
	pass
