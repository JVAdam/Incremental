extends Area2D

#Cannot call method 'queue_free' on a previously freed instance.

func _on_body_entered(body: Node2D) -> void:
	GameState.add_points(1)
	await get_tree().create_timer(1).timeout
	body.queue_free()
