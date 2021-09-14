extends RigidBody2D

export var strength : float = 50
export var strength_increase = 5
export var angle = 0


func _process(_delta):
	update_angle_label()
	
	#Increase strength while spacebar held
	if Input.is_action_pressed("launch"):
		strength += strength_increase
		update_strength_label()
		
	#Launch ball when spacebar is released
	elif Input.is_action_just_released("launch"):
		var velocity = Vector2.RIGHT.rotated(deg2rad(-angle)) * strength
		apply_impulse(Vector2.ZERO, velocity)


func update_angle_label():
	var angle_display = get_parent().get_node("HUD/AngleLabel")
	angle_display.text = "Angle: \n" + str(angle)
	
func update_strength_label():
	var strength_display = get_parent().get_node("HUD/StrengthLabel")
	strength_display.text = "Strength: " + str(strength)
	
func set_angle(value):
	angle = value
	
func add_score():
	get_parent().score +=1
	var score_display = get_parent().get_node("HUD/ScoreLabel")
	score_display.text = "Score: " + str(get_parent().score)
	
