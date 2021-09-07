extends Area2D

func _on_Coin_body_entered(body):
	queue_free()
	var message = "Well done!"
	var message_display = get_node("../../EndMessage")
	message_display.text = message
	message_display.visible = true
