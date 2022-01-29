extends Control

func _ready() -> void:
	$transition_Screen/AnimationPlayer.play("fade_to_transparent")


func _on_Button_pressed() -> void:
	get_tree().quit()
