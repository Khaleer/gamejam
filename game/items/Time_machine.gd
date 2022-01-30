extends Area2D

signal timewarp

func item_test():
	var test = 0
	if Global.item_lightbulb_collected == true:
		return true

func _ready():
	$Panel.visible = false
	$AnimatedSprite.play("default")

func _physics_process(delta):
	
	item_test()
	
	if item_test():
		$AnimatedSprite.play("working")

func _on_Time_machine_body_entered(body: Node) -> void:
	item_test()
	$Panel.visible = true
	if body.is_in_group("player") and item_test():
		emit_signal("timewarp")
		$Panel.visible = false
		#get_tree().change_scene("res://levels/Level_2.tscn")

func _on_Time_machine_body_exited(body: Node) -> void:
	$Panel.visible = false
