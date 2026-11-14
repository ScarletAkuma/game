extends CharacterBody2D

#Jump button
func _physics_process(delta):
	if Input.is_action_pressed("jump"):
		velocity.y = -400
