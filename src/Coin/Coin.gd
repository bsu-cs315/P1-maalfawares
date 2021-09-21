extends Area2D


func _on_Coin_body_entered(body) -> void:
	$CoinSound.play()
	visible = false
	body.add_score()


func _on_CoinSound_finished() -> void:
	queue_free()
	

