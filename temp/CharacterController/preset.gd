extends CharacterBody2D

var speed = 700  
@export_range(0.0, 1.0) var friction = 0.15
@export_range(0.0 , 1.0) var acceleration = 0.25
var variant = 0.0


func _physics_process(_delta):
	move_and_slide()
	Movement()
	


func Movement():
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	if direction.x != 0:
		velocity.x = lerp(velocity.x, direction.x * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, variant, friction)
	if direction.y != 0:
		velocity.y = lerp(velocity.y, direction.y * speed, acceleration)
	else:
		velocity.y = lerp(velocity.y, variant, friction)
		
