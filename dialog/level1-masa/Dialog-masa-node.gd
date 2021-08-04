extends Control

var screensize = Vector2()
signal hareketsizlik
signal hareketlilik
signal baslat
var dialog_sinir = 0
func _ready():
	$Dialogmasa.set_process(false)
	$Dialogmasa.visible = false
func _on_Dialogmasa_dialog_bitti():
	emit_signal("hareketlilik")


func _on_dialogmasabolge_body_entered(body):
	if body.is_in_group("Player") and dialog_sinir==0:
		$Dialogmasa.set_process(true)
		$Dialogmasa.visible = true
		emit_signal("hareketsizlik")
		dialog_sinir = 1
	else:
		dialog_sinir = 0






