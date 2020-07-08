extends Control

func _ready():
	var prompts = ["Yann", "banana", "tingly", "glorious"]
	
	var story = "Once upon a time someone called %s ate a %s flavoured sandwich which made him feel all %s inside. It was a %s day."
	# get_node("Label").text = "Hey"
	$DisplayText.text = story % prompts
