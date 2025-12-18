extends Button

@export var button_type = 0
@export var price = 0
@export var button_level = 0

var upgrade_prices = [1.4, 1.6, 1.8, 2]
var upgrade_values = [1, 5, 15] 

func _ready():
	$Label.text = "Custo: %d" % price

func _on_pressed() -> void:
	if button_type == 0:
		if GameState.points >= int(price):
			GameState.click_value_upgrade()
			GameState.points -= price
			price *= 1.25
	if button_type == 1:
		if GameState.points >= int(price):
			GameState.pps_value_upgrade(upgrade_values[button_level])
			GameState.points -= price
			price *= upgrade_prices[button_level]

	$Label.text = "Custo: %d" % price
	GameState.get_points()
