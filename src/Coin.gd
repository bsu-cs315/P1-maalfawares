extends Area2D


func _on_Coin_body_entered(body):
	$CoinSound.play()
#	var message = "Well done!"
#	var message_display = get_node("../../EndMessage")
#	message_display.text = message
#	message_display.visible = true
	body.add_score()

func _on_CoinSound_finished():
	queue_free()
	

