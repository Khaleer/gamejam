extends Area2D


signal item_collected

func collected():
	emit_signal("item_collected")
	Global.item_flower_collected = true
	queue_free()

func _on_items_body_entered(body):
	if body.is_in_group("player"):
		collected()
		
		
		#global_items.emit_signal("item_collected")
