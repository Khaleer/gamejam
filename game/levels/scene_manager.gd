extends Node2D

const SceneTwo = preload("res://levels/Level_2.tscn")

func _ready() -> void:
	$transition_Screen/AnimationPlayer.play("fade_to_transparent")

