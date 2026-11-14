extends StaticBody2D

func _on_area_2d_body_entered(body: Node2D):
	if body.is_in_group("player"):
		if "velocity" in body:
			var direction: Vector2 = -global_transform.y.normalized()
			body.velocity = direction * 1200
