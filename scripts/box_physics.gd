extends RigidBody2D

var velocity_y := 0
var gravity := 1200
var floor_y := 637

@onready var sprite: Sprite2D = $Sprite2D


func _ready():
	sprite.get_node("ColorRect").color = get_random_color()

	#var timer = Timer.new()
	#add_child(timer)
	#timer.wait_time = 4
	#timer.connect("timeout", _on_timer_timeout)
	#timer.start()

	#var fade_animation = sprite.create_tween()
	#var fade_duration = 4
	#fade_animation.tween_property(sprite, "modulate:a", 0, fade_duration)

func _on_timer_timeout():
	queue_free()

func get_random_color():
	return Color(randf(), randf(), randf())
