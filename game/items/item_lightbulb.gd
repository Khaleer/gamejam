extends Area2D

signal popup_flower
signal item_collected

func collected():
	emit_signal("item_collected")
	emit_signal("popup_flower")
	Global.item_lightbulb_collected = true
	queue_free()

func _on_items_body_entered(body):
	if body.is_in_group("player"):
		collected()
		
		
		#global_items.emit_signal("item_collected")
