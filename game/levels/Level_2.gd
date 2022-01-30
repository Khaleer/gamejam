extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$transition_Screen/AnimationPlayer.play("fade_to_white")
	$transition_Screen/AnimationPlayer.play("fade_from_white")



func _process(delta: float) -> void:
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()


func _on_transition_Screen_gameend() -> void:
	get_tree().change_scene("res://levels/game_enging_screen.tscn")
