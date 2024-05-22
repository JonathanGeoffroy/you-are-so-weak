extends Node2D

@export var speed = 300

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
		
	var move = Vector2(x, y).normalized()
	position.x += move.x * speed * delta
	position.y += move.y * speed * delta
