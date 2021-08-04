extends Control

var screensize = Vector2()
signal hareketsizlik
signal hareketlilik
signal baslat
var dialog_sinir = 0
func _ready():
	$Dialogmum.set_process(false)
	$Dialogmum.visible = false


func _on_nebula_kapi_body_entered(body):
	if body.is_in_group("Player") and dialog_sinir ==0:
		$Dialogmum.set_process(true)
		$Dialogmum.visible = true
		emit_signal("hareketsizlik")
		dialog_sinir = 1







func _on_Dialogmum_dialog_bitti():
	emit_signal("hareketlilik")
