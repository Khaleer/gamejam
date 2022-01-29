extends CanvasLayer

func _ready():
	$MarginContainer.visible = false


func _on_items2_popup_flower() -> void:
	$MarginContainer.visible = true
	$MarginContainer/MarginContainer/Label.text = "marchew piękna jest kochana jest marchew piękna jest kochana jest marchew piękna jest kochana jest marchew piękna jest kochana jest "
	$Timer.start()
	


func _on_Timer_timeout() -> void:
	$MarginContainer.visible = false
