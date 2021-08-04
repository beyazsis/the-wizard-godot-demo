extends Area2D


func _on_auroracam_body_entered(body):
	if body.is_in_group("Player"):
		$"room-aurora".current = true
