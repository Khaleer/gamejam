extends Area2D


func _on_Time_machine_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene("res://levels/Level_2.tscn")
