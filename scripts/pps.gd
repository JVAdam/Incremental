extends Label

func _ready():
	GameState.pps_update.connect(_on_pps_upgrade)
	
func _on_pps_upgrade(value):
	text = "Pontos por segundo: %d" % value
