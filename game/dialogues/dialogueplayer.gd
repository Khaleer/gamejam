extends CanvasLayer

export(String, FILE, "*.json") var dialogue_file

var dialogues = []
var dialogue_number = 0 

func _ready():
	play()

func play():
	dialogues = load_dialogue()
	dialogue_number = -1
	next_line()

func _input(event):
	if event.is_action_pressed("interaction"):
		next_line()
	
func next_line():
	dialogue_number += 1
	$Panel/name.text = dialogues[0]['name']
	$Panel/text.text = dialogues[0]['text']
	
func load_dialogue():
	var file = File.new()
	if file.file_exists(dialogue_file):
		file.open(dialogue_file, file.READ)
		return parse_json(file.get_as_text())
