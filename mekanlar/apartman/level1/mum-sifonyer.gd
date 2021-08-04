extends Node2D

signal yoket
signal dialog_baslat

func _on_mumsifonyer_body_entered(body):
	if body.is_in_group("Player"):
		set_process_input(true)
	else:
		set_process_input(false)


func _input(event):
	if Input.is_key_pressed(KEY_E):
		emit_signal("yoket")
		emit_signal("dialog_baslat")
