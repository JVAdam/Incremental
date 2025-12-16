extends Node

signal points_update(value)
signal click_value_update(value)

var points := 0
var click_value := 1
var pps = 0

func add_points(value):
	points += value
	get_points()

func click_value_upgrade():
	click_value += 1
	emit_signal("click_value_update", click_value)

func pps_value_upgrade():
	pps += 1

func get_points():
	emit_signal("points_update", points)
