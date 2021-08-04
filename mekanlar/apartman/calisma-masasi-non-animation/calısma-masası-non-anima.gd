extends Node2D


signal yoket
signal varet
func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		set_process_input(true)
	else:
		set_process_input(false)

func _input(event):
	if Input.is_key_pressed(KEY_E):
		$Area2D/oturmaani.visible = true
		$Area2D/oturmaani.stop()
		$Area2D/oturmaani.play("oturma")
		emit_signal("yoket")
	if Input.is_key_pressed(KEY_W) and $Area2D/oturmaani.visible ==true:
		emit_signal("varet")
		$Area2D/oturmaani.visible =false




