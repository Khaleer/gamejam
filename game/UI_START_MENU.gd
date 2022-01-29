extends Control




func _on_Button_pressed() -> void:
	get_tree().change_scene("res://levels/Level_1.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
