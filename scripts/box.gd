extends Node2D

var velocity_y := 0
var gravity := 1200
var floor_y := 637

func _physics_process(delta):
	velocity_y += gravity * delta
	position.y += velocity_y * delta
	
	if position.y >= floor_y:
		position.y = floor_y
		velocity_y = 0
