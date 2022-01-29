extends CanvasLayer

signal transitioned

func transition_from_black():
	$AnimationPlayer.play("fade_to_transparent")


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if anim_name == "fade_to_transparent":
		emit_signal("transitioned")


func _on_Button_pressed() -> void:
	$AnimationPlayer.play("fade_to_black")
