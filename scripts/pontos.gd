extends Label

func _ready():
	GameState.points_update.connect(_on_points_update)

func _on_points_update(value):
	text = "Pontos: %d" % value
