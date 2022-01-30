extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$simple_popup.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_popup2_body_entered(body):
	if body.is_in_group("player"):
		$simple_popup.visible = true


func _on_popup2_body_exited(body):
	if body.is_in_group("player"):
		$simple_popup.visible = false
