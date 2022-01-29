extends Area2D


func item_test():
	var test = 0
	if Global.item_flower_collected == true:
		test = test + 1
	if Global.item_onion_collected == true:
		test = test+1
	if test == 2:
		return true





func _on_Time_machine_body_entered(body: Node) -> void:
	item_test()
	if body.is_in_group("player") and item_test() == true:
		get_tree().change_scene("res://levels/Level_2.tscn")
