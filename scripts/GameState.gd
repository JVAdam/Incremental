extends Node

signal spawn_on_point()
signal points_update(value)
signal click_value_update(value)
signal pps_update(value)

var main_scene: Node = null

var points := 0
var click_value := 1
var pps = 0

func register_main(main: Node):
	main_scene = main
	
func spawn(scene: PackedScene, parent: Node = null):
	if main_scene == null:
		push_error("Main não registrada no GameState.gd")
		return

	var instance = scene.instantiate()

	if parent:
		instance.position.x = randf_range(parent.get_viewport_rect().size.x-parent.get_viewport_rect().size.x+50, parent.get_viewport_rect().size.x-50)
		parent.add_child(instance)
	else:
		instance.position.x = randf_range(main_scene.get_viewport_rect().size.x-main_scene.get_viewport_rect().size.x+50, main_scene.get_viewport_rect().size.x-50)
		main_scene.add_child(instance)

	return instance

func add_points(value):
	points += value
	get_points()
	emit_signal("spawn_on_point")

func click_value_upgrade():
	click_value += 1
	emit_signal("click_value_update", click_value)

func pps_value_upgrade(value):
	pps += value
	emit_signal("pps_update", pps)

func get_points():
	emit_signal("pps_update", pps)
	emit_signal("points_update", points)
