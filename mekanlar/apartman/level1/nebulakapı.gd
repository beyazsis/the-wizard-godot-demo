extends Area2D

func _on_nebulakamera_body_entered(body):
	if body.is_in_group("Player"):
		$AudioStreamPlayer2D.play()
		$kapi.visible = false
		$acikkapi.visible = true



func _on_nebulakamera_body_exited(body):
	if body.is_in_group("Player"):
		$AudioStreamPlayer2D2.play()
		$kapi.visible = true
		$acikkapi.visible = false
