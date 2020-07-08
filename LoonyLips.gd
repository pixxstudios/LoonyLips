extends Control

func _ready():
	var prompts = ["Yann", "banana", "tingly", "glorious"]
	
	var story = "Once upon a time someone called %s ate a %s flavoured sandwich which made him feel all %s inside. It was a %s day."

	$VBoxContainer/DisplayText.text = story % prompts


func _on_PlayerText_text_entered(new_text):
	update_DisplayText(new_text)


func _on_TextureButton_pressed():
	var words = $VBoxContainer/HBoxContainer/PlayerText.text
	update_DisplayText(words)


func update_DisplayText(words):
	$VBoxContainer/DisplayText.text = words
	$VBoxContainer/HBoxContainer/PlayerText.clear()
