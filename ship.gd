extends RigidBody2D

@export var speed = 200

var screen_size: Vector2

func _ready():
	var viewport_size = get_viewport_rect().size
	screen_size = Vector2(viewport_size.x - 100, viewport_size.y -100)
	
func _physics_process(delta):
	var x = 0;
	var y = 0;
	if Input.is_action_pressed("move_left"):
		x = -1;
	elif Input.is_action_pressed("move_right"):
		x = 1;
		
	if Input.is_action_pressed("move_top"):
		y = -1;
	elif Input.is_action_pressed("move_bottom"):
		y = 1;
	
	apply_force(Vector2(x * speed, y * speed))
	position = position.clamp(Vector2.ZERO, screen_size)
