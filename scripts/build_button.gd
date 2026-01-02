extends Button

var opened = false

func _on_pressed() -> void:
	if opened:
		GameState.emit_signal("close_menu")
		opened = false
	else:
		GameState.open_build_menu(preload("res://scenes/Menu.tscn"), GameState.main_scene, Vector2(576.0,324.0))
		opened = true
