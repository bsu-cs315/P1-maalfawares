extends Area2D


func _on_Coin_body_entered(body):
	$CoinSound.play()
	visible = false
	body.add_score()


func _on_CoinSound_finished():
	queue_free()
	

