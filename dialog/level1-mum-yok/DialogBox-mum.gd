extends Control
var dialog = [
	'Oh...',
	'It\'s very dengerous to walking in corridors without a blessed candle',
	'But...',
	'I haven\'t got any',
	'So, I can borrow one from Aurora before get into darkness.'
	]
signal dialog_bitti
var dialog_index = 0
var finished = false
var screensize = Vector2()
func _ready():
	load_dialog()
	
func _process(delta):
	$"tus".visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
	
func load_dialog():
	if dialog_index < dialog.size():
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible",0,1,1,
			Tween.TRANS_LINEAR,Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
		emit_signal("dialog_bitti")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true




