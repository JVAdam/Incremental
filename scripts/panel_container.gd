extends PanelContainer

var is_dragging = false
var offset = Vector2()
var is_hovered = false

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and is_hovered:
			if event.pressed:
				is_dragging = true
				offset = position - event.position
			else:
				is_dragging = false
	elif event is InputEventMouseMotion and is_dragging:
		position = event.position + offset

func _on_mouse_entered() -> void:
	is_hovered = true

func _on_mouse_exited() -> void:
	is_hovered = false
