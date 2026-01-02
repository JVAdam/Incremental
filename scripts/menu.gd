extends Control

var shop_items = []

func _ready():
	GameState.close_menu.connect(_on_close_menu)
	#for button in get_tree().get_nodes_in_group("menu_buttons"):
	#	button.pressed.connect(_on_pressed)
	#	shop_items.append(button)

func _on_pressed():
	pass

func _on_close_menu():
	queue_free()

func _on_button_2_pressed():
	get_parent().get_node("BuildButton").opened = false
	GameState.emit_signal("close_menu")
