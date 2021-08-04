extends Control

var screensize = Vector2()
signal hareketsizlik
signal hareketlilik
signal baslat
var dialog_sinir = 0
func _ready():
	$Dialogthanks.set_process(false)
	$Dialogthanks.visible = false




func _on_mumsifonyer_dialog_baslat():
	if dialog_sinir == 0:
		$Dialogthanks.set_process(true)
		$Dialogthanks.visible = true
		emit_signal("hareketsizlik")
		dialog_sinir = 1







func _on_Dialogaurora_dialog_bitti():
	emit_signal("hareketlilik")



