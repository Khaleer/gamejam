extends CanvasLayer

export(String, FILE, "*.json") var dialogue_file

var dialogues = []

func _ready():
	play()

func play():
	dialogues = load_dialogue()
	
	$Panel/name.text = dialogues[0]['name']
	$Panel/text.text = dialogues[0]['text']
	
func load_dialogue():
	var file = File.new()
	if file.file_exists(dialogue_file):
		file.open(dialogue_file, file.READ)
		return parse_json(file.get_as_text())
