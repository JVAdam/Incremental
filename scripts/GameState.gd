extends Node

# QUEIMAR OS BLOCOS ACIMA DA METADE DA TELA OU BLOQUEAR O BOTAO

# signal spawn_on_point()
signal points_update(value)
signal click_value_update(value)
signal pps_update(value)
signal conveyor_update(value)
signal close_menu()

var main_scene: Node = null

var points := 0
var click_value := 1
var pps = 0
var conveyor_speed = 1000

func register_main(main: Node):
	main_scene = main
	
func spawn(scene: PackedScene, parent: Node = null):
	if main_scene == null:
		push_error("Main não registrada no GameState.gd")
		return

	if scene == null:
		push_error("Scene não encontrada nos arquivos.")
		return
		
	var instance = scene.instantiate()

	if parent:
		instance.position.x = randf_range(parent.position.x-parent.position.x+110, parent.position.x-110)
		parent.add_child(instance)
	else:
		#instance.position.x = randf_range(main_scene.get_viewport_rect().size.x-main_scene.get_viewport_rect().size.x+50, main_scene.get_viewport_rect().size.x-50)
		instance.position = Vector2(main_scene.get_viewport_rect().size.x/2, main_scene.get_viewport_rect().size.y/2)
		main_scene.add_child(instance)

	return instance
	
func open_build_menu(scene: PackedScene, parent: Node = null, pos = null):
	if main_scene == null:
		push_error("Main não registrada no GameState.gd")
		return
		
	var instance = scene.instantiate()
	if parent:
		if pos:
			instance.position = pos
		parent.add_child(instance)
	else:
		if pos:
			instance.position = pos
		main_scene.add_child(instance)
	
	return instance

func add_points(value):
	points += value
	get_points()
	#emit_signal("spawn_on_point")

func click_value_upgrade():
	click_value += 1
	emit_signal("click_value_update", click_value)

func pps_value_upgrade(value):
	pps += value
	emit_signal("pps_update", pps)
	
func conveyor_speed_upgrade(value):
	conveyor_speed += value
	emit_signal("conveyor_update", conveyor_speed)

func get_points():
	emit_signal("pps_update", pps)
	emit_signal("points_update", points)
	
