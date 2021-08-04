extends Control

var screensize = Vector2()
signal hareketsizlik
signal hareketlilik
signal baslat
var dialog_sinir = 0
func _ready():
	$Dialogaurora.set_process(false)
	$Dialogaurora.visible = false




func _on_aurorakamera_body_exited(body):
	if body.is_in_group("Player") and dialog_sinir == 0:
		$Dialogaurora.set_process(true)
		$Dialogaurora.visible = true
		emit_signal("hareketsizlik")
		dialog_sinir = 1







func _on_Dialogaurora_dialog_bitti():
	emit_signal("hareketlilik")
