extends Button
@export var button_type = 0
@export var price = 0
var timer_sec = 1


func _ready():
	$Label.text = "Custo %d" % price
	$Timer.wait_time = timer_sec

func _on_pressed() -> void:
	if button_type == 0:
		if GameState.points >= int(price):
			GameState.click_value_upgrade()
			GameState.points -= price
			price *= 1.25
			$Label.text = "Custo: %d" % price
	if button_type == 1:
		if GameState.points >= int(price):
			GameState.pps_value_upgrade()
			GameState.points -= price
			$Timer.start()
	GameState.get_points()

func _on_timer_timeout() -> void:
	GameState.add_points(GameState.pps)
