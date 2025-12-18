extends Node2D

func _ready():
	GameState.register_main(self)
	GameState.spawn_on_point.connect(_on_points_update)

func _on_points_update():
	GameState.spawn(preload("res://scenes/Box.tscn"), self)
