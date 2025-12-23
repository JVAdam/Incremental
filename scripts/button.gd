extends Button

@onready var spawner: Node2D = $"../BoxMaker2/Area2D/CollisionShape2D"

func _on_pressed() -> void:
	#GameState.add_points(GameState.click_value)
	GameState.spawn(preload("res://scenes/BoxPhysics.tscn"), spawner)
