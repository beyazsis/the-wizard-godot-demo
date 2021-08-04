extends Control

var screensize = Vector2()
signal hareketsizlik
signal hareketlilik
signal baslat
var dialog_sinir = 0
func _ready():
	$Dialoggulizar.set_process(false)
	$Dialoggulizar.visible = false
	$Secenek.set_physics_process(false)
	$Secenek.visible = false



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player") and dialog_sinir == 0:
		$Dialoggulizar.set_process(true)
		$Dialoggulizar.visible = true
		emit_signal("hareketsizlik")
		dialog_sinir = 1






func _on_Dialoggulizar_son():
	emit_signal("hareketlilik")
