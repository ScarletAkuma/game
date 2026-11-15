extends CharacterBody2D
@onready var boing: AudioStreamPlayer2D = $boing


var friction = 50

func _ready() -> void:
	Global.player = self

#Player velocity
func _physics_process(delta):
	var sfx = Global.sound
	var hardmode = Global.hardMode
	var direction := Input.get_axis("left", "right")
	if direction and abs(velocity.x) <= 300: #Moving speed + key press
		if hardmode == true:
			velocity.x = move_toward(velocity.x, direction * 300, friction/3)
		else:
			velocity.x = direction * 300
	elif direction: #Fast movement via trampoline
		velocity.x = move_toward(velocity.x, 0, friction/5)
	elif abs(velocity.x) >= 300:
		velocity.x = move_toward(velocity.x, 0, friction/5)
	else: #No direction
		if hardmode == true:
			velocity.x = move_toward(velocity.x, 0, friction/5)
		else:
			velocity.x = move_toward(velocity.x, 0, friction)
	move_and_slide()
	
	if not is_on_floor():
		velocity.y += 30
	else:
		if sfx:
			boing.play()
		if Input.is_action_pressed("jump"):
			velocity.y = -900
		else:
			velocity.y = -600
	
	if Input.is_action_pressed("pause"):
		get_tree().change_scene_to_file("res://pause.tscn")
