extends Area2D


func _on_aurorakamera_body_entered(body):
	if body.is_in_group("Player"):
		$AudioStreamPlayer2D.play()
		$kapiauroa.visible = false
		$acikkapi.visible = true


func _on_aurorakamera_body_exited(body):
	if body.is_in_group("Player"):
		$AudioStreamPlayer2D2.play()
		$kapiauroa.visible = true
		$acikkapi.visible = false
