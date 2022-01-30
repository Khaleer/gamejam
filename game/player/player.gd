extends KinematicBody2D


export var speed = 150
export var gravity = 1000
export var jump = -500

var velocity = Vector2.ZERO


func get_input():
	velocity.x = 0
	if Input.is_action_pressed("right"):
		velocity.x += speed
		$AnimatedSprite.play("default")
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("left"):
		velocity.x -= speed
		$AnimatedSprite.play("default")
		$AnimatedSprite.flip_h = true
	if Input.is_action_pressed("right") && Input.is_action_pressed("fast_movement"):
		velocity.x += speed * 2
		$AnimatedSprite.play("default")
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("left") && Input.is_action_pressed("fast_movement"):
		velocity.x -= speed * 2
		$AnimatedSprite.play("default")
		$AnimatedSprite.flip_h = true
		
		

func _physics_process(delta):
	
	get_input()
	velocity.y += gravity * delta
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if Input.is_action_pressed("jump"):
		
		if is_on_floor():
			velocity.y = jump

		
