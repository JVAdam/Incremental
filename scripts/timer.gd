extends Timer

func _on_timeout():
	if GameState.pps > 0:
		GameState.add_points(GameState.pps)
		for i in range(GameState.pps-1):
			GameState.spawn(preload("res://scenes/Box.tscn"), GameState.main_scene)
			await get_tree().create_timer(0.1).timeout
