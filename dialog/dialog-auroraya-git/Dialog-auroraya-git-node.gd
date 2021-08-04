extends Control
signal hareketsizlik
signal hareketlilik


func _ready():
	$"DialogBox-aurorayagit".set_process(false)
	$"DialogBox-aurorayagit".visible = false

#duzeltme degiskeni
var a = false
func _on_dialogaurorayagit_body_entered(body):

	if body.is_in_group("Player") and a==false:
		$"DialogBox-aurorayagit".set_process(true)
		$"DialogBox-aurorayagit".visible = true
		emit_signal("hareketsizlik")
		a= true


func _on_DialogBoxaurorayagit_dialog_bitti():
	emit_signal("hareketlilik")
