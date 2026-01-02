extends Label

@export var button_label = 0
@onready var button = get_node("/root/Node2D/Menu/PanelContainer/PanelContainer/GridContainer/VBoxContainer"+str(button_label)+"/Button")

func _ready():
	text = button.item_name
