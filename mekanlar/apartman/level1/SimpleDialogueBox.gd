extends RichTextLabel

var delta_time = 0
export var speed = 0.1
export(String, MULTILINE) var dialogue_text = ""
export var confirm_action = "ui_accept"
var current_page = 0
var pages = []

func _ready():
	visible_characters = 0
	parse_dialogue_text()
	text = pages[current_page]
	set_process_input(true)
	set_process(true)

func parse_dialogue_text():
	pages = dialogue_text.split(";")
	for i in range(pages.size()):
		pages[i] = pages[i].replace("\n","")

func text_advance():
	if(text.length() == visible_characters):
		current_page = current_page + 1
		visible_characters = 0
		delta_time = 0
		if(pages.size() - 1 >= current_page):
			text = pages[current_page]
		else:
			get_parent().queue_free()

func text_update():
	if(text.length() > visible_characters):
		visible_characters = visible_characters + 1

func _input(event):
	if(event.is_action_released(confirm_action)):
		if(visible_characters == text.length()):
			text_advance()
		else:
			visible_characters = text.length()

func _process(delta):
	if(delta_time > speed):
		delta_time = 0
		text_update()
	delta_time = delta_time + delta
