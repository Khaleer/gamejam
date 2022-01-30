extends CanvasLayer

signal transitioned
signal timerstart
signal gameend

func transition_from_black():
	$AnimationPlayer.play("fade_to_transparent")


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if anim_name == "fade_to_white":
		emit_signal("transitioned")


func _on_Button_pressed() -> void:
	$AnimationPlayer.play("fade_to_black")



func _on_Time_machine_timewarp() -> void:
	$AnimationPlayer.play("fade_to_white")
	emit_signal("timerstart")
	#get_tree().change_scene("res://levels/Level_2.tscn")


func _on_Timer_timeout() -> void:
	get_tree().change_scene("res://levels/Level_2.tscn")


func _on_farmer_gameend() -> void:
	$AnimationPlayer.play("fade_to_black")
	emit_signal("gameend")
	
