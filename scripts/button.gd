extends Button

func _on_pressed() -> void:
	GameState.add_points(GameState.click_value)
