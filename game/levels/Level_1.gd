extends Node2D

signal sepia
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$transition_Screen/AnimationPlayer.play("fade_to_transparent")
	emit_signal("sepia")

func _physics_process(delta):
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()
	pass
