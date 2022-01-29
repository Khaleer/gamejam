extends KinematicBody2D


export var speed = 150
export var gravity = 1000
export var jump = -500
#var jumpCount = 0
#export var exptrajumps = 1

var velocity = Vector2.ZERO


func get_input():
	velocity.x = 0
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	if Input.is_action_pressed("right") && Input.is_action_pressed("fast_movement"):
		velocity.x += speed * 2
	if Input.is_action_pressed("left") && Input.is_action_pressed("fast_movement"):
		velocity.x -= speed * 2
	
#func nexttowall():
#	return nexttorightwall() or nexttoleftwall()
		
#func nexttorightwall():
#	return $Right_Cast.is_colliding()
	
#func nexttoleftwall():
#	return $Left_Cast.is_colliding()
	
	

func _physics_process(delta):
	
	get_input()
	velocity.y += gravity * delta
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if Input.is_action_pressed("jump"):
		var jumpnum = 2
		jumpnum -= 1
		if is_on_floor() : #or nexttowall()
			
			velocity.y = jump

		
