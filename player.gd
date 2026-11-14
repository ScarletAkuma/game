extends CharacterBody2D

var friction = 50

#Movement
func _physics_process(delta):
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * 400
	else:
		velocity.x = move_toward(velocity.x, 0, friction)
	move_and_slide()
	
	if not is_on_floor():
		velocity.y += 30
	else:
		velocity.y = -600
