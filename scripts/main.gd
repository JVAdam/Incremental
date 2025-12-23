extends Node2D

@onready var spawner: Node2D = $BoxMaker2

func _ready():
	GameState.register_main(self)
	
func _on_points_update():
	GameState.spawn(preload("res://scenes/BoxPhysics.tscn"), self)
