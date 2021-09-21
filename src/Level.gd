extends Node2D

export var Yangle := 0
export var lives := 3
export var score := 0
var ball : RigidBody2D
onready var path_line 


func _ready() -> void:
	make_ball()


func _process(_delta) -> void:
	if Input.is_action_just_released("launch"):
		path_line.hide()
		$LaserSound.play()
		yield(get_tree().create_timer(5), "timeout")
		update_lives()
		ball.queue_free()
		make_ball()


func update_line(ang) -> void:
	path_line.clear_points()
	for i in 300:
		path_line.add_point(Vector2(i, 0).rotated(deg2rad(-ang)))
	

func _on_AngleSlider_value_changed(value) -> void:
	Yangle = value
	update_line(Yangle)
	ball.set_angle(Yangle)
	
	
func make_ball() -> void:
	if lives > 0:
		ball = load("res://src/Ball.tscn").instance()
		ball.position = Vector2(144,384)
		add_child(ball)
		path_line = ball.get_node("Line2D")
		
		
func update_lives() -> void:
	lives -= 1
	$HUD/LivesLabel.text = "Lives Left: " + str(lives) + "/3"
	if lives <= 0:
		$EndScene.visible = true
		$EndScene/TextureRect/ScoreLabel.text = "Score: " + str(score)
		
		

