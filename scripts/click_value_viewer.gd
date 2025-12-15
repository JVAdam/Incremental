extends Label

func _ready():
	GameState.click_value_update.connect(_on_click_value_upgrade)
	
func _on_click_value_upgrade(value):
	text = "Valor do clique: %d" % value
