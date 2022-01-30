extends Area2D

signal gameend

func _ready() -> void:
	pass


func _on_farmer_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		emit_signal("gameend")
