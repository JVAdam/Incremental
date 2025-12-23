extends Timer


@onready var spawner: Node2D = $"../BoxMaker2/Area2D/CollisionShape2D"

func _on_timeout():
	if GameState.pps > 0:
		#GameState.add_points(GameState.pps)
		for i in range(GameState.pps):
			GameState.spawn(preload("res://scenes/BoxPhysics.tscn"), spawner)
			await get_tree().create_timer(0.1).timeout
