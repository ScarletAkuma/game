extends CharacterBody2D

var friction = 50

func _ready() -> void:
	Global.player = self

#TODO: fix trampoline physics
func _physics_process(delta):
	var direction := Input.get_axis("left", "right")
	if direction and abs(velocity.x) <= 300:
		velocity.x = direction * 300
	elif direction:
		velocity.x = move_toward(velocity.x, 0, friction/5)
	elif abs(velocity.x) >= 300:
		velocity.x = move_toward(velocity.x, 0, friction/5)
	else:
		velocity.x = move_toward(velocity.x, 0, friction)
	move_and_slide()
	
	if not is_on_floor():
		velocity.y += 30
	else:
		if Input.is_action_pressed("jump"):
			velocity.y = -900
		else:
			velocity.y = -600
