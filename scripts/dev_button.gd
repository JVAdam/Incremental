extends Button
 

func _on_pressed() -> void:
	GameState.points = 99999999999
	GameState.get_points()
