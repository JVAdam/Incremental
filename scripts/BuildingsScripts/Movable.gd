extends Node2D
class_name Movable

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
	
	if event is InputEventMouseButton and is_dragging == false:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP and is_hovered:
			rotation_degrees += 5
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and is_hovered:
			rotation_degrees -= 5

func _on_mouse_entered() -> void:
	print("Mouse entrou")
	is_hovered = true

func _on_mouse_exited() -> void:
	print("Mouse saiu")
	is_hovered = false
