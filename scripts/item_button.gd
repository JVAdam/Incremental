extends Button

@export var item_name = ""
@onready var item_path = "res://scenes/Building/"+item_name+".tscn"

func _ready():
	self.pressed.connect(_on_pressed)
	#icon = get_node("/root/Platform").Sprite2D

func _on_pressed():
	GameState.spawn(load(item_path))
