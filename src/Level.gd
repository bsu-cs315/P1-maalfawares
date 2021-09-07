extends Node2D

onready var path_line = $Ball/Line2D
export var Yangle = 0

func _process(delta):
	if Input.is_action_just_released("launch"):
		path_line.hide()

func update_line(ang):
	path_line.clear_points()
	for i in 300:
		path_line.add_point(Vector2(i, 0).rotated(deg2rad(-ang)))
	

func _on_AngleSlider_value_changed(value):
	Yangle=value
	update_line(Yangle)
