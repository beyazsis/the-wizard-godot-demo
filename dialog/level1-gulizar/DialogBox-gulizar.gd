extends Control
var dialog = [
	'NE...BU...LA...',
	'Is everything alright?',
	'Y-yes.',
	'I just sense a foreign soul. Then suddenly soul\'s energy has disappeared. Probably it\'s uses a hiding spell. ',
	'It made a solid cut in my artery.',
	'I think you gonna die.',
	'Yes, maybe. It rushed through this way. So, be carefull.',
	'Okey... I\'ll continue on my way. Take care.',
	'Aaaa... Well... Can you heal me?',
	'...',
	'Please?',
]

var dialog2 = [
	"OK, I\'ll back for you but first, I have to go to Aurum. If you don\'t die until I return, you will live.",
	"Thank you.",
]
var dialog3 = [
	"No... I will not heal you",
	"OK... No problem Nebula. Goodbye...",
]
var dialog_index2 = 0
var dialog_index3 = -1
signal dialog_bitti
signal son
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
	if Input.is_action_just_pressed("ui_accept") and dialog_number == 2 :
		_yes()
	if Input.is_action_just_pressed("ui_accept") and dialog_number == 3 :
		_on_Secenek_no()
	if dialog_index == 1:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index == 2:
		$TextureRect2/gulizar.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index ==3:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index == 4:
		$TextureRect2/gulizar.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index ==5:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index ==6:
		$TextureRect2/gulizar.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index ==7:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index ==8:
		$TextureRect2/gulizar.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index ==9:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index ==10:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index ==11:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index2 ==1:
		$TextureRect2/gulizar.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index2 ==2:
		$TextureRect2/gulizar.visible = true
		$TextureRect2/nebula.visible = false
	if dialog_index3 == 1:
		$TextureRect2/gulizar.visible = false
		$TextureRect2/nebula.visible = true
	if dialog_index3 == 2:
		$TextureRect2/gulizar.visible = true
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
		set_physics_process(false)
		emit_signal("dialog_bitti")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true


func _yes():
	set_physics_process(true)
	dialog_number = 2
	if dialog_index2 < dialog2.size() and dialog_number == 2:
		finished = false
		$RichTextLabel.bbcode_text = dialog2[dialog_index2]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible",0,1,1,
			Tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
		$Tween.start()
	else:
		queue_free()
		emit_signal("son")
	dialog_index2 = dialog_index2 + 1




func _on_Secenek_yes():
	set_process(true)
	dialog_number = 2



func _on_Secenek_no():
	set_process(true)
	dialog_number = 3
	if dialog_index3 < dialog3.size() and dialog_number == 3:
		finished = false
		$RichTextLabel.bbcode_text = dialog3[dialog_index3]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible",0,1,1,
			Tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
		$Tween.start()
	else:
		queue_free()
		emit_signal("son")
	dialog_index3 += 1
