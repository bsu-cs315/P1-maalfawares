extends Node2D


func _on_Button_pressed() -> void:
	var _value = get_tree().change_scene("res://src/MainMenu.tscn")

