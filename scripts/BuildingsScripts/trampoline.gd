extends Movable

func _process(delta):
	print(rotation_degrees)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("ball"):
		
		var velocity = body.linear_velocity
		var direction = velocity.normalized()
	
		var impulse = direction * 300
	
		if rotation_degrees > 180 or rotation_degrees < -180:
			body.apply_impulse(Vector2(0, 500))
			body.apply_impulse(impulse)
		else:
			body.apply_impulse(Vector2(0, -500))
			body.apply_impulse(impulse)

		
