extends Area2D

signal gameend

func _ready() -> void:
	$MarginContainer.visible = false
	
func item_test():
	var test = 0
	if Global.item_flower_collected == true:
		test = test + 1
	if Global.item_onion_collected == true:
		test = test + 1
	if test == 2:
		return true

func _physics_process(delta):
	if $AudioStreamPlayer2D.playing == false:
		$AudioStreamPlayer2D.play()


func _on_farmer_body_entered(body: Node) -> void:
	item_test()
	if body.is_in_group("player"):
		$MarginContainer.visible = true
	if body.is_in_group("player") and item_test():
		emit_signal("gameend")


func _on_farmer_body_exited(body):
	$MarginContainer.visible = false
