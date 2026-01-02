extends StaticBody2D

func _physics_process(delta):
	constant_linear_velocity = Vector2(GameState.conveyor_speed*delta,0)
