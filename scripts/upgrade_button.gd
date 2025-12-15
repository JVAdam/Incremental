extends Button
@export var button_type = 0
@export var price = 0

#func ready():
#	if auto_upgrade == true:
#		$Timer.start()

func _on_pressed() -> void:
	if button_type == 0:
		if GameState.points >= int(price):
			GameState.click_value_upgrade()
			GameState.points -= price
			GameState.get_points()
			price *= 1.25
			$Label.text = "Preço: %d" % price
#	elif button_type == 1:
#		if GameState.points >= int(price):
			
