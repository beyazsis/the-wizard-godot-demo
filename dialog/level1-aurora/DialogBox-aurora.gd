extends Control
var dialog = [
	'Nebula?',
	'Whats up?',
	'I need a blessed candle.',
	'Have you got any?',
	'Sure! I have a lot.',
	'You can take as many as you want.',
	'They\'re on the dresser in front of the bed.'
]
signal dialog_bitti
var dialog_index = 0
var finished = false
var screensize = Vector2()
var dialog_number = 1
func _ready():
	load_dialog()

	
	
func _process(delta):
	$"tus".visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
	if dialog_index == 3:
		$TextureRect2/aurora.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index == 5:
		$TextureRect2/aurora.visible = true
		$TextureRect2/nebula.visible = false

func load_dialog():
	if dialog_index < dialog.size() and dialog_number == 1:
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible",0,1,1,
			Tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
		$Tween.start()
	else:
		emit_signal("dialog_bitti")
		queue_free()
	
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true




